# -- 테스트텍스트 -> text

text <- c('안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  원서접수는 대학에서 공지하는 기간에만 작성 및 접수 가능합니다. 현재는 모집 기간이 아니므로 페이지를 확인하실 수 없습니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 공통원서접수 페이지는 모의논술 신청 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴(진학사 원서접수 바로가기)를 이용해주시기 바랍니다.  감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 경찰대 원서작성하신 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴 진학사 원서접수 바로가기를 이용해주시기 바랍니다.  감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  올해 원서접수는 공통원서 접수로 진행되어 사이트가 새로 오픈되었습니다. 생활기록부는 회원님께서 졸업하신 학교가 학생부 온라인제공동의 설치 학교의 경우 원서 접수시 온라인 제공 [동의]에 동의함 체크하시면 별도 추가 제출서류가 없으며, 온라인제공동의 미설치 학교의 경우는 별도 학생부를 마련하여 입학처로 발송해주셔야 합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 경찰대학 접수 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴 [진학사원서접수] 바로가기를 이용해주시기 바랍니다.  감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  [미결제원서] - [결제하기]로 들어가시면 출력물 리스트를 제공합니다. 해당 출력물을 출력하여 이용해주시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 접수하신 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴(진학사 원서접수) 바로가기를 이용해주시기 바랍니다.  감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  홈페이지 상단 학교명 검색창에서 학교 검색 후 작성 가능합니다.  회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  신용카드로 택한 후, 카드정보 입력란 기입하면 결제 가능합니다. 무통장계좌 입금 방식은 [진학캐쉬] 충전이 있습니다. [진학캐쉬] - [충전계좌 발급] 후, 해당 계좌로 사용하고자 하는 금액 충전하실 수 있으며 입금 후 원서가 결제되는 것은 아니므로,  반드시 공통원서접수 홈페이지 로그인 후 [결제하기] - [진학캐쉬 결제]를 눌러주셔야 접수가 완료됩니다.   회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  공통원서의 주소는 국내, 국외 주소 모두 입력 가능하며  단, 숙명여대 개별 원서를 작성하실 때는 학교입학처에 확인을 하신 후 수정하시기 바랍니다. 공통원서 연락처는 전화번호란만 해외 연락처로 기입 가능하며, 나머지 추가 연락처는 모두 국내연락처만 기입 가능합니다.  회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  정상적으로 결제 하신것으로 파악되어 추가 안내는 드리지 않습니다. 추후에도 동일한 오류가 발생하는 경우,  [도구] - [인터넷옵션] - [검색기록 및 쿠키 삭제] 후 다시 시도해보시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  요청하신 정보로 수정되었습니다. 내원서보관함에서 확인하시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  문의하신 연세대학교는 마감전까지 회원님이 직접 수정이 가능합니다. [내원서보관함]에서 수정하시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  요청하신 정보로 원서 수정되었습니다. [내원서보관함]에서 확인하시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  마감전까지는 원서 수정이 가능합니다. 변경하고자 하는 정보를 다시 남겨주시거나, 고객센터(1544-7715)로 마감전까지 요청하시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  숙명여대는 마감전까지 직접 수정이 가능합니다. [내원서보관함]에서 원서 수정을 하시기 바랍니다.(지원사항 부분 제외)  회원님의 합격을 기원합니다. 감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 경찰대학 접수 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴(진학사 원서접수) 바로가기를 이용해주시기 바랍니다.  감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 경찰대 접수 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴(진학사 원서접수) 바로가기를 이용해주시기 바랍니다.  감사합니다.',
'안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  요청하신 정보로 원서 수정되었습니다. [내원서보관함]에서 확인해보시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.'
)

#library(tm)
text1 <- gsub('[0-9]+',' ', text) #숫자 제거
text1 <- gsub('[[:punct:]]+',' ', text1) #특수문자 제거
text1 <- gsub('[ㄱ-ㅎ]+',' ', text1) #홀로쓰인 자음 제거
text1 <- gsub('[ㅏ-ㅣ]+',' ', text1) #홀로쓰인 모음 제거
text1 <- gsub('[A-Za-z]+',' ', text1) #영어제거 제거
text1 <- gsub('\\w+니다',' ', text1) #'~니다' 형태 제거
text1 <- gsub('[[:space:]]+',' ', text1) #여러 띄어쓰기를 띄어쓰기 한칸으로 변경
text1 <- gsub('안녕하세요 진학어플라이 고객센터 저희 진학어플라이를 항상 이용해 주셔서 ',' ', text1)
text1 <- gsub(' 회원님의 합격을 ',' ', text1)

view <- factor(rep(c("view 1"), each=19))
df <- data.frame(text1, view, stringsAsFactors = F)

corpus <- Corpus(VectorSource(df$text))

tdm <- TermDocumentMatrix(corpus, control=list(wordLengths=c(2,Inf)))
Encoding(tdm$dimnames$Terms) = 'UTF-8'

inspect(tdm)
tdm <- as.matrix(tdm)

install.packages('proxy')
library(proxy)

cosine_dist_mat <- as.matrix(dist(t(tdm), method = 'cosine'))
diag(cosine_dist_mat) <- NA
cosine_dist <- apply(cosine_dist_mat, 2, mean, na.rm = TRUE)

str(cosine_dist)
View(cosine_dist)
ave(cosine_dist) #0.8912552

View(corpus)




write.table(df, 'C:/Users/vdiuser/Documents/GitHub/ProjectR/df.txt',
            sep = '\n',
            row.names = FALSE,
            quote = FALSE,
            append = FALSE
)

##########################################################################

text <- c('안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  원서접수는 대학에서 공지하는 기간에만 작성 및 접수 가능합니다. 현재는 모집 기간이 아니므로 페이지를 확인하실 수 없습니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 공통원서접수 페이지는 모의논술 신청 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴(진학사 원서접수 바로가기)를 이용해주시기 바랍니다.  감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 경찰대 원서작성하신 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴 진학사 원서접수 바로가기를 이용해주시기 바랍니다.  감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  올해 원서접수는 공통원서 접수로 진행되어 사이트가 새로 오픈되었습니다. 생활기록부는 회원님께서 졸업하신 학교가 학생부 온라인제공동의 설치 학교의 경우 원서 접수시 온라인 제공 [동의]에 동의함 체크하시면 별도 추가 제출서류가 없으며, 온라인제공동의 미설치 학교의 경우는 별도 학생부를 마련하여 입학처로 발송해주셔야 합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 경찰대학 접수 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴 [진학사원서접수] 바로가기를 이용해주시기 바랍니다.  감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  [미결제원서] - [결제하기]로 들어가시면 출력물 리스트를 제공합니다. 해당 출력물을 출력하여 이용해주시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 접수하신 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴(진학사 원서접수) 바로가기를 이용해주시기 바랍니다.  감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  홈페이지 상단 학교명 검색창에서 학교 검색 후 작성 가능합니다.  회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  신용카드로 택한 후, 카드정보 입력란 기입하면 결제 가능합니다. 무통장계좌 입금 방식은 [진학캐쉬] 충전이 있습니다. [진학캐쉬] - [충전계좌 발급] 후, 해당 계좌로 사용하고자 하는 금액 충전하실 수 있으며 입금 후 원서가 결제되는 것은 아니므로,  반드시 공통원서접수 홈페이지 로그인 후 [결제하기] - [진학캐쉬 결제]를 눌러주셔야 접수가 완료됩니다.   회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  공통원서의 주소는 국내, 국외 주소 모두 입력 가능하며  단, 숙명여대 개별 원서를 작성하실 때는 학교입학처에 확인을 하신 후 수정하시기 바랍니다. 공통원서 연락처는 전화번호란만 해외 연락처로 기입 가능하며, 나머지 추가 연락처는 모두 국내연락처만 기입 가능합니다.  회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  정상적으로 결제 하신것으로 파악되어 추가 안내는 드리지 않습니다. 추후에도 동일한 오류가 발생하는 경우,  [도구] - [인터넷옵션] - [검색기록 및 쿠키 삭제] 후 다시 시도해보시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  요청하신 정보로 수정되었습니다. 내원서보관함에서 확인하시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  문의하신 연세대학교는 마감전까지 회원님이 직접 수정이 가능합니다. [내원서보관함]에서 수정하시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  요청하신 정보로 원서 수정되었습니다. [내원서보관함]에서 확인하시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  마감전까지는 원서 수정이 가능합니다. 변경하고자 하는 정보를 다시 남겨주시거나, 고객센터(1544-7715)로 마감전까지 요청하시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  숙명여대는 마감전까지 직접 수정이 가능합니다. [내원서보관함]에서 원서 수정을 하시기 바랍니다.(지원사항 부분 제외)  회원님의 합격을 기원합니다. 감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 경찰대학 접수 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴(진학사 원서접수) 바로가기를 이용해주시기 바랍니다.  감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  지금 로그인하신 정시공통원서 페이지는 경찰대 접수 페이지와는 다른 사이트입니다. www.jinhakapply.com 의 우측메뉴(진학사 원서접수) 바로가기를 이용해주시기 바랍니다.  감사합니다.',
          '안녕하세요. 진학어플라이 고객센터 입니다. 저희 진학어플라이를 항상 이용해 주셔서 감사합니다.  요청하신 정보로 원서 수정되었습니다. [내원서보관함]에서 확인해보시기 바랍니다.  회원님의 합격을 기원합니다. 감사합니다.'
)

#library(tm)
text1 <- gsub('[0-9]+',' ', text) #숫자 제거
text1 <- gsub('[[:punct:]]+',' ', text1) #특수문자 제거
text1 <- gsub('[ㄱ-ㅎ]+',' ', text1) #홀로쓰인 자음 제거
text1 <- gsub('[ㅏ-ㅣ]+',' ', text1) #홀로쓰인 모음 제거
text1 <- gsub('[A-Za-z]+',' ', text1) #영어제거 제거
text1 <- gsub('\\w+니다',' ', text1) #'~니다' 형태 제거
text1 <- gsub('[[:space:]]+',' ', text1) #여러 띄어쓰기를 띄어쓰기 한칸으로 변경
text1 <- gsub('안녕하세요 진학어플라이 고객센터 저희 진학어플라이를 항상 이용해 주셔서 ',' ', text1)
text1 <- gsub(' 회원님의 합격을 ',' ', text1)

docs <- text1

names(docs) <- paste("doc", 1:length(docs), sep='')
docs.corp <- Corpus(VectorSource(docs))
#View(docs.corp)

konlp_tokenizer <- function(doc){
  extractNoun(doc)
}

tdmat <- TermDocumentMatrix(docs.corp, control=list(tokenize=konlp_tokenizer,
                                                    weighting = function(x) weightTfIdf(x, TRUE),
                                                    wordLengths = c(1,Inf)))

#View(tdmat)
Encoding(tdmat$dimnames$Terms) = 'UTF-8'

tdmatmat <- as.matrix(tdmat)

norm_vec <- function(x) {x/sqrt(sum(x^2))}
tdmatmat <- apply(tdmatmat, 2, norm_vec)

docord <- t(tdmatmat[,9] %*% tdmatmat[,1:8])

corpus <- Corpus(VectorSource(df$text))

tdm <- TermDocumentMatrix(corpus, control=list(wordLengths=c(2,Inf)))
Encoding(tdm$dimnames$Terms) = 'UTF-8'

inspect(tdm)
tdm <- as.matrix(tdm)

install.packages('proxy')
library(proxy)

cosine_dist_mat <- as.matrix(dist(t(tdm), method = 'cosine'))
diag(cosine_dist_mat) <- NA
cosine_dist <- apply(cosine_dist_mat, 2, mean, na.rm = TRUE)

str(cosine_dist)
View(cosine_dist)
ave(cosine_dist) #0.8912552

View(corpus)