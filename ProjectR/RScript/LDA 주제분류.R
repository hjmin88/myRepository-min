install.packages('arules')
install.packages('igraph')
install.packages('combinat')
install.packages('RTextTools')

library(KoNLP)
library(arules)
library(igraph)
library(combinat)
library(lda)
library(RTextTools)
library(topicmodels)
library(tm)
library(RColorBrewer)
library(Rcpp)
library(wordcloud)
library(plyr)
library(stringr)
library(readxl)

setwd('C:/Users/vdiuser/Documents/GitHub/ProjectR')

DS_origin <- read_excel('C:/Users/vdiuser/Documents/GitHub/ProjectR/DataSet/진학닷컴_고객센터데이터셋.xlsx', # path
                        sheet = 'Sheet1', # sheet name to read from
                        range = 'K1:K44289', # cell ragne to read from
                        col_names = TRUE, # TRUE to use the first row as column names
                        col_types = 'guess', # the types of columns
                        na = 'NA') # character vector to string to use for missing values

str(DS_origin)
useNIADic()

#options(java.parameters = c("-Xmx6g","-Dfile.encoding=UTF-8")) # -- 메모리 할당, UTF-8 인코딩

sapply(DS_origin, class)

#gsub('x','x2',df,except('a','b'))

DS_edit1 <- as.data.frame(lapply(DS_origin, function(x)
  if(is.character(x)|is.factor(x)) {
    x1 <- gsub("안녕하세요. 진학사 [(합격예측)]+ 입니다."," ",x)
    x1 <- gsub("저희 진학사 [(합격예측)를]+ 애용해주셔서 감사드리며, 201[0-9]학년도 입시에서 좋은 결과 거두시기 바랍니다. 감사합니다."," ",x1)
    x1 <- gsub("[0-9]+"," ",x1)
    x1 <- gsub("[[:punct:]]+"," ",x1)
    x1 <- gsub("[ㄱ-ㅎ]+"," ",x1)
    x1 <- gsub("[ㅏ-ㅣ]+"," ",x1)
    x1 <- gsub("[A-Za-z]+"," ",x1)
    x1 <- gsub("\\w+니다"," ",x1)
    x1 <- gsub("[진학]+사*[어플라이]*"," ",x1)
    x1 <- gsub("\\w+대학*교*"," ",x1)
    x1 <- gsub("[[:space:]]+"," ",x1)
  }
  else(x)))

DS_edit1 <- as.data.frame(DS_edit1) %>%
  lapply(function(x)
    x <- gsub("[[:space:]]+"," ",x))

str(DS_edit1)
head(DS_edit1)

nouns_pre <- sapply(DS_edit1, extractNoun, USE.NAMES=F)
nouns <- nouns_pre[nchar(nouns_pre) >= 2]

#nouns_pre_t1, nouns_t1
nouns_pre_t1 <- nouns_pre[1:10]
str(nouns_pre_t1)
nouns_t1 <- nouns_pre_1[nchar(nouns_pre_1) >= 2]

str(nouns_pre)
str(nouns)

library(lda)
K <- 10
set.seed(671)
num.iterations <- 1000

corpus <- lexicalize(nouns, lower=TRUE)
corpus$vocab <- gsub("\\(","",corpus$vocab)
corpus$vocab <- gsub("c","",corpus$vocab)
corpus$vocab <- gsub("\\)","",corpus$vocab)
corpus$vocab <- gsub("\"","",corpus$vocab)
corpus$vocab <- gsub(",","",corpus$vocab)

str(corpus$vocab)

result <- lda.collapsed.gibbs.sampler(corpus$documents, K, corpus$vocab,
                                      num.iterations, 0.1, 0.1, compute.log.likelihood = TRUE)

top.words <- top.topic.words(result$topics, 500, by.score = TRUE)
print(top.words)

write.csv(top.words, file="LDA닷컴_주제분류.csv")
