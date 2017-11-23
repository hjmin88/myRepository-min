library(KoNLP)

#useSejongDic()
useNIADic()

setwd('C:/Users/vdiuser/Documents/GitHub/ProjectR')

# -- UTF-8, EUC-KR
qData16 <- readLines('qData16.txt', encoding = 'EUC-KR')

# -- 사전 단어추가
#buildDictionary(user_dic=data.frame('',''))

############################# 텍스트 데이터 핸들링##########################################
## d : 숫자 패턴 찾기
## w : 문자 패턴 찾기
## + : 중복 패턴 찾기, d+ : 숫자가 여러번 쓰인경우, w+ 문자가 여러번 쓰인경우

qData16_1 <- gsub('[0-9]+',' ', qData16) #숫자 제거
qData16_1 <- gsub('[[:punct:]]+',' ', qData16_1) #특수문자 제거
qData16_1 <- gsub('[ㄱ-ㅎ]+',' ', qData16_1) #홀로쓰인 자음 제거
qData16_1 <- gsub('[ㅏ-ㅣ]+',' ', qData16_1) #홀로쓰인 모음 제거
qData16_1 <- gsub('[A-Za-z]+',' ', qData16_1) #영어제거 제거
#gsub('\\w+니다',' ', textVariable) #'~니다' 형태 제거
qData16_1 <- gsub('[[:space:]]+',' ', qData16_1) #여러 띄어쓰기를 띄어쓰기 한칸으로 변경

## -- 빈 row 제거
qData16_2 <- qData16_1[nchar(qData16_1) > 1]

str(qData16_2)
head(qData16_2)

outputTest1 <- SimplePos22(qData16_2[1:10])
View(outputTest1)

write.table(outputTest1, 'C:/Users/vdiuser/Documents/GitHub/ProjectR/outputTest1.txt',
            sep = '\n',
            row.names = FALSE,
            quote = FALSE,
            append = FALSE
)

#####################################################################
#################### Java 형태소분석기 결과와 비교 ##################

#sentenceTest1 <- c('아버지가방에들어가셨다.')
#SimplePos22(sentenceTest1)
#
#sentenceTest2 <- c('그가방은제것입니다. 손대지마시죠. 라고말하였다.')
#SimplePos22(sentenceTest2)



