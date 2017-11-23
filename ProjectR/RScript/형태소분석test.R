getwd()
setwd('C:/Users/vdiuser/Documents/GitHub/ProjectR')

install.packages('KoNLP')
install.packages('wordcloud2')
install.packages('RColorBrewer')

library(KoNLP)
library(wordcloud2)
library(RColorBrewer)

useSejongDic()

#model.df <- data.frame(
#  univ = c('한양대','한양대학교','국민대','단국대')
#)
#str(model.df)
#lm.df.grep <- model.df[grep('한양대', model.df$univ),]
#str(lm.df.grep)

#save(qData16, file = 'qData16.txt')

qData16 <- read.csv('2016년 고객센터 질문셋.csv', header=TRUE, stringsAsFactors=FALSE, na.strings='')
rm(qData16)

str(qData16)
head(qData16)

write.table(qData16, 'C:/Users/vdiuser/Documents/GitHub/ProjectR/qData16_2.txt',
            sep = '|',
            row.names = TRUE,
            quote = FALSE,
            append = TRUE
            )

#test <- qData16[grep('원서', qData16$qdata),]
#str(test)
#head(test)

qData16 <- data.frame(qData16[1])

qData16 <- gsub('   ', ' ', qData16)
qData16 <- gsub('  ', ' ', qData16)

#qData16 <- gsub('\\n', '', qData16)
#qData16 <- gsub('\t', '', qData16)

qData16 <- unlist(strsplit(qData16, ' '))[nchar(unlist(strsplit(qData16, ' '))) > 1]
qData16 <- qData16[nchar(qData16) > 1]

head(qData16)

MorphAnalyzer(qData16[1:50])
SimplePos09(qData16[1:10])
SimplePos22(qData16[1:10])
