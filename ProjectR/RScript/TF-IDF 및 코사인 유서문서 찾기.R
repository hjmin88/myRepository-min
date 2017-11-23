#install.packages("tm")
#library(tm)

doc1 <- "The fox chases the rabbit with cabbage which men can eat, too"
doc2 <- "The rabbit ate the cabbage"
doc3 <- "The fox caught the rabbit"
doc.list <- list(doc1, doc2, doc3)
n.docs <- length(doc.list)
names(doc.list) <- paste("doc", c(1:n.docs), sep="")
my.corpus <- Corpus(VectorSource(doc.list))
my.corpus <- tm_map(my.corpus, content_transformer(tolower))
TDM_Tf <- TermDocumentMatrix(my.corpus, control=list(removePuctuation = TRUE, removeNumbers = TRUE, stopwords = TRUE, weighting = weightTf))
TDM_TfIdf <- TermDocumentMatrix(my.corpus, control=list(removePuctuation = TRUE, removeNumbers = TRUE, stopwords = TRUE, weighting = weightTfIdf))
m1<-as.matrix(TDM_Tf)
m1
m2<-as.matrix(TDM_TfIdf)
m2
## m2가 TfIdf 값임 - 각 term 별로 각 docuement의 keyword의 정도를 보여줌

# doc 내의 수는 특정 단어의 정규화된 등장횟수라고 하자
doc1 = c(0.1, 0.2, 0.2)
doc2 = c(0.14, 0.0, 0.0)
doc3 = c(0.0, 0.14, 0.11)
# 유클리디언 거리 구하기 (작을수록 유사한 것임)
d_12 = sqrt(sum((doc1 - doc2)**2))
d_23 = sqrt(sum((doc2 - doc3)**2))
d_31 = sqrt(sum((doc3 - doc1)**2))
d_12
d_23
d_31
# 코사인 유사도 구하기 (클수록 유사한 것임)
cos_12 = sum(doc1*doc2)/((sqrt(sum(doc1**2)) * sqrt(sum(doc2**2))))
cos_23 = sum(doc2*doc3)/((sqrt(sum(doc2**2)) * sqrt(sum(doc3**2))))
cos_31 = sum(doc3*doc1)/((sqrt(sum(doc3**2)) * sqrt(sum(doc1**2))))
cos_12
cos_23
cos_31
# target 문서를 잡음(query)
query = c(0.1, 0.2, 0.2)
(d_query1 = sqrt(sum((query - doc1)**2)))
(d_query2 = sqrt(sum((query - doc2)**2)))
(d_query3 = sqrt(sum((query - doc3)**2)))
(cos_q1 = sum(query*doc1)/((sqrt(sum(query**2)) * sqrt(sum(doc1**2)))))
(cos_q2 = sum(query*doc2)/((sqrt(sum(query**2)) * sqrt(sum(doc2**2)))))
(cos_q3 = sum(query*doc3)/((sqrt(sum(query**2)) * sqrt(sum(doc3**2)))))
# 결국 d_query는 작을수록, cos는 클수록 유사한 문서임