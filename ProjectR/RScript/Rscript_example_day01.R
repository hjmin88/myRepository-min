# /, %%, %/%, ^, **
1+3
1:30 + 4
1:100
9/2
9%%2
9%/%2
1:15 %% 2
1:15 %/% 2
3 === 3
3 == 3
(1:15 %% 2) == 1

x1 = 5
x2 = 1:15
x2[4:17]
x2[x2 >= 10 & x2 <= 13]
x3 = 1.5
x4 = 'abc'
x5 = 'abc def'
str(x3)
str(x1)
str(x4)
str(x2)
# =, <-, ->, <<-, ->>
x6 = c(1, 3, 5)
x6[3]
x2[x6]
x2[c(1,5)]
x2[a(1,2)]
x7 = matrix(1:15, ncol = 3, byrow = T)
dim(x7) = c(1,15)
x8 = matrix(x7, nrow = 1, byrow = T)
a8 = 0
a2 = array(1:30, dim = c(3, 5, 2, 3))
str(y1)
y1
y1[,,2]
a2
str(iris)
y2 = data.frame(x = c(1,2,3), y = c(3.5, 3.2, 7.1), z = c('A','B','C'))
y2[,c(1,3)]
y2[,-2]
y2$x
y3 = list(x = 3, y = c(1, 3, 7), z = matrix(1:15, nrow = 3))
y3[[3]][3,2]
y3[[2]][3]

y4 = list(x = y3, y = y3)
str(y4)
print(y4)
y4[[1]]
#y4[[[1]]] unexpected error
y4[[1]][[3]][2,3]

txt0 = readLines('big.txt', encoding = 'UTF-8')

install.packages('KoNLP')
library(KoNLP)
txt1 = extractNoun(txt0)
str(txt1)

useSejongDic()

