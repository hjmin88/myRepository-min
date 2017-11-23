install.packages('readxl')

library(readxl)
library(KoNLP)
library(tm)
library(stringr)
library(ggplot2)

useNIADic()

setwd('C:/Users/vdiuser/Documents/GitHub/ProjectR')

?read_excel
DS_origin <- read_excel('C:/Users/vdiuser/Documents/GitHub/ProjectR/DataSet/진학닷컴_고객센터데이터셋.xlsx', # path
                        sheet = 'Sheet1', # sheet name to read from
                        range = 'K1:K1000', # cell ragne to read from
                        col_names = 'TRUE', # TRUE to use the first row as column names
                        col_types = 'list', # the types of columns
                        na = 'NA') # character vector to string to use for missing values

DS_edit1 <- str_replace_all(DS_origin, '안녕하세요. 진학사 (합격예측) 입니다.',' ') %>%
  str_replace_all('저희 진학사 (합격예측)를 애용해주셔서 감사드리며, 2013학년도 입시에서 좋은 결과 거두시기 바랍니다. 감사합니다.',' ') %>%
  str_replace_all('[0-9]+',' ') %>%
  str_replace_all('[[:punct:]]+',' ') %>%
  str_replace_all('[ㄱ-ㅎ]+',' ') %>%
  str_replace_all('[ㅏ-ㅣ]+',' ') %>%
  str_replace_all('[A-Za-z]+',' ') %>%
  str_replace_all('\\w+니다',' ') %>%
  str_replace_all('진학사[어플라이]*[에]*[서]*',' ') %>%
  str_replace_all('진학[어플라이]*[에]*[서]*',' ') %>%
  str_replace_all('\\w+대[학]*[교]*',' ') %>%
  str_replace_all('[[:space:]]+',' ')

#DS_edit1 <- gsub('안녕하세요. 진학사 (합격예측) 입니다.',' ', DS_origin)
#DS_edit1 <- gsub('저희 진학사 (합격예측)를 애용해주셔서 감사드리며, 2013학년도 입시에서 좋은 결과 거두시기 바랍니다. 감사합니다.',' ', DS_edit1)
#DS_edit1 <- gsub('[0-9]+',' ', DS_edit1) #숫자 제거
#DS_edit1 <- gsub('[[:punct:]]+',' ', DS_edit1) #특수문자 제거
#DS_edit1 <- gsub('[ㄱ-ㅎ]+',' ', DS_edit1) #홀로쓰인 자음 제거
#DS_edit1 <- gsub('[ㅏ-ㅣ]+',' ', DS_edit1) #홀로쓰인 모음 제거
#DS_edit1 <- gsub('[A-Za-z]+',' ', DS_edit1) #영어제거 제거
#DS_edit1 <- gsub('\\w+니다',' ', DS_edit1) #'~니다' 형태 제거
#DS_edit1 <- gsub('[[:space:]]+',' ', DS_edit1) #여러 띄어쓰기를 띄어쓰기 한칸으로 변경

DS_words <- function(doc) {
  d <- as.character(doc)
  pos <- unlist(SimplePos22(d))
  
  extracted <- str_match(pos, '([가-힣]+)/NC')
  
  keyword <- extracted[, 2]
  keyword[!is.na(keyword)]
}

# -- DS_words 함수 실행 테스트, 잘 동작하는지 결과 확인)\
#DS_words('잘 동작하는지 확인중입니다.')

#t1 <- c('잘 동작하는지 확인중입니다.')
#Map(DS_words, t1)

pos <- Map(DS_words, DS_edit1)
corpus <- Corpus(VectorSource(pos))

stopWords <- c('안녕하','애용해주','학년도') # -- 빈도 높은 단어 제외

dtm <- DocumentTermMatrix(corpus, control=list(
  removePunctuation = TRUE, stopwords=stopWords,
  removeNumbers = TRUE, wordLengths = c(4, Inf), weighting = weightTf))

#View(dtm)
#Encoding(tdm$dimnames$Terms) = 'UTF-8'

#install.packages('tidytext')
#install.packages('topicmodels')
#install.packages('dplyr')

#library(tidytext)
#library(topicmodels)
#library(dplyr)

q_lda <- LDA(dtm, k=3, seed=1234)

q_topics <- tidy(q_lda, matrix='beta')

q_top_terms <- q_topics %>%
  group_by(topic) %>%
  top_n(20, beta) %>%
  ungroup() %>%
  arrange(topic, -beta)

#install.packages('ggplot2')
#library(ggplot2)

q_top_terms %>%
  mutate(term=reorder(term, beta)) %>%
  ggplot(aes(term, beta, fill=factor(topic))) +
  geom_col(show.legend=FALSE) +
  facet_wrap(~ topic, scales="free") +
  coord_flip() +
  theme(axis.text.y=element_text(family="Apple SD Gothic Neo"))
