txt1 = readLines('big.txt', encoding = 'UTF-8')
str(txt1)
head(txt1)
txt2 = gsub('Big Data', '빅데이터', txt1)
print(txt2)
print(txt1)
txt2 <- gsub('Big Data', '빅데이터', txt1)
txt2 <- gsub('[A-z]', '', txt2)
print(txt2)
txt2 <- gsub('[[:punct:]]', '', txt2)
(strings <- c("a", "ab", "acb", "accb", "acccb", "accccb"))
grep("acb{2}", strings, value = TRUE)
txt2 <- gsub('[0-9]', '', txt2)
txt2 <- gsub('   ', '', txt2)
txt2 <- gsub('  ', '', txt2)

library(KoNLP)
buildDictionary(user_dic =
                  data.frame(terms = '빅데이터',
                               tags = 'ncn'))

txt_e <- extractNoun(txt2)
str(txt_e)
t1 = table(unlist(txt_e))
str(t1)
print(t1)

xx1 = c(4,2,7,1,9)
sort(xx1)
#정렬하고 정렬한 결과값 돌려줌 (기본: 오름차순)
order(xx1)
#정렬하고 정렬한 index 값 돌려줌 (기본: 오름차순)

which(xx1 >= 4)

txt_s <- sort(t1, decreasing = T)
head(txt_s)

names(txt_s)
library(stringr)
txt_s2 <- txt_s[str_length(names(txt_s)) > 1]
head(txt_s2)
print(txt_s2)

barplot(txt_s2[1:5])

install.packages('wordcloud')
library(wordcloud)

pal = brewer.pal(7 , 'Set1')
wordcloud(names(txt_s2), txt_s2,
          scale = c(5, 0.5),
          random.color = T,
          colors = pal)

install.packages('wordcloud2')
library(wordcloud2)
wordcloud2(names(txt_s2), txt_s2)

ss1 = as.character(names(txt_s2))

str(names(txt_s2))
data1 = data.frame(ss1,txt_s2)
View(data1)

wordcloud2(data1[,2:3],
           size = 2,
           figPath = 'img4.jpg',
           backgroundColor = 'white')

str(data1)

# HTTR, Rbest -> 크롤링 패키지
# readLines & c 함수 응용하면 txt파일 여러개 동시에 읽어서 처리 가능

list.files('.')

