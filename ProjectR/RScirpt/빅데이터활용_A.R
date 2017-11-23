setwd("c:/r_exam")

pack = c("checkpoint", 
         "tidyverse",
         "lubridate",
         "stringr",
         "rvest", "XML",
         "knitr", "tidytext",
         "wordcloud", "tibble", 
         "dplyr", "bindrcpp",
         "doParallel", "doMC")

library(checkpoint)
library(tidyverse)
library(lubridate)
library(stringr)
library(rvest)
library(XML)
library(knitr)
library(tidytext)
library(wordcloud)
library(tibble)
library(dplyr)
library(bindrcpp)
library(doParallel)

registerDoParallel()
sessionInfo()

ratings = read.csv("ratings.csv", header = T, sep = ",")
tags = read.csv("tags.csv", header = T, sep = ",")
links = read.csv("links.csv", header = T, sep = ",")
movies = read.csv("movies.csv", header = T, sep = ",")

glimpse(ratings)

ratings_df = tbl_df(ratings) %>%
  mutate(timestamp = as_datetime(timestamp))
summary(ratings_df)

glimpse(movies)

movies$genres = as.character(movies$genres)


movies_df = movies %>%
  mutate(title = str_trim(title)) %>%
  extract(title, c("title_tmp", 'year'), 
          regex = "^(.*) \\(([0-9]*)\\)$", 
          remove = F) %>%
  mutate(title = if_else(is.na(title_tmp), 
                         title, title_tmp)) %>%
  select(-title_tmp) %>%
  mutate(genres = if_else(genres == 
                            "(no genres listed)",
                          NA_character_, genres))

na_movies = movies_df %>%
  filter(is.na(title)|is.na(year))

knitr::kable(head(na_movies, 10)) #데이터를 표형식으로 보여주는 함수

glimpse(tags)

tags_df = tags %>%
  mutate(timestamp = as_datetime(timestamp))
summary(tags_df)

movies_per_year = movies_df %>%
  na.omit() %>% #값이 없는 것 생략
  select(movieId, year) %>%
  group_by(year) %>%
  summarise(count = n()) %>% #영화 개수 확인
  arrange(year)

knitr::kable(head(movies_per_year, 10))

#누락된 연도 채우기

movies_per_year$year = as.numeric(
  movies_per_year$year)
movies_per_year = movies_per_year %>%
  complete(year = full_seq(year, 1), 
           fill = list(count = 0)) 

### 연도별 영화 시각화

movies_per_year %>%
  ggplot(aes(x = year, y = count)) +
  geom_line(color = "blue")

## 장르별 개수 분석

genres_df = movies_df %>%
  separate_rows(genres, sep = "\\|") %>%
  group_by(genres) %>%
  summarise(number = n()) %>%
  arrange(desc(number))

knitr::kable(head(genres_df, 10))

### 연도별 인기 장르 분석

movies_df$year = as.numeric(movies_df$year)

genres_popularity = movies_df %>%
  na.omit() %>%
  select(movieId, year, genres) %>%
  separate_rows(genres, sep = "\\|") %>%
  mutate(genres = as.factor(genres)) %>%
  group_by(year, genres) %>%
  summarise(number = n()) %>%
  complete(year = full_seq(year, 1), genres, 
           fill = list(number = 0))

## War, Sci-Fi, Animation, Western 장르에 대한 추이 데이터 추출

genres_popularity %>%
  filter(year > 1930) %>%
  filter(genres %in% 
           c("War", "Sci-Fi", 
                       "Animation", "Western")) %>%
  ggplot(aes(x = year, y = number)) +
  geom_line(aes(color = genres)) +
  scale_fill_brewer(palette = "Paired")


#영화별 평균 평가 점수 산출

avg_ratings = ratings_df %>%
  inner_join(movies_df, by = "movieId") %>%
  na.omit() %>%
  select(movieId, title, rating, year) %>%
  group_by(movieId, title, year) %>%
  summarise(count = n(), mean = mean(rating), 
            min = min(rating), max = max(rating)) %>%
  ungroup() %>%
  arrange(desc(mean))

knitr::kable(head(avg_ratings, 10))

#영화별 평균 평가 점수 산출

#R = 평균 평점
#v = 영화별 투표 개수
#m = 상위 250위 안에 들기 위한 최소 특표수
#C = 전체 결과에 대한 평균 투표수

weighted_rating = function(R, v, m, C){
  return(v/(v+m)*R + m/(v+m))*C
}

avg_ratings = avg_ratings %>%
  mutate(wr = weighted_rating(mean, count, 500, 
                              mean(mean))) %>%
  arrange(desc(wr))

knitr::kable(head(avg_ratings, 10))

# 매 10년마다 가장 평가가 좋았던 영화 분석

best_per_decate = avg_ratings %>%
  mutate(decade = year %/% 10 * 10) %>%
  arrange(year, desc(wr)) %>%
  group_by(decade) %>%
  summarise(title = first(title), wr = first(wr), 
            mean = first(mean), count = first(count)) 

knitr::kable(head(best_per_decate))

## 장르별 최고 인기가 있었던 년도 분석

genres_ratings = movies_df %>%
  na.omit() %>%
  select(movieId, year, genres) %>%
  inner_join(ratings_df, by = "movieId") %>%
  select(-timestamp, -userId) %>%
  mutate(decade = year %/% 10 * 10) %>%
  separate_rows(genres, sep = "\\|") %>%
  group_by(year, genres) %>%
  summarise(count = n(), avg_rating = mean(rating)) %>%
  ungroup() %>%
  mutate(wr = weighted_rating(mean, count, 5000, 
                              mean(mean))) %>%
  arrange(year)
  
  
genres_ratings %>%
  filter(genres %in% c("Action", "Romance", "Sci-Fi", 
                       "Western")) %>%
  ggplot(aes(x = year, y = wr)) + 
  geom_line(aes(group = genres, color = genres)) + 
  geom_smooth(aes(group_genres, color = genres)) + 
  facet_wrap(~genres)

## 데이터 마이닝을 이용한 고급 분석

install.packages("arules")
install.packages("arulesViz")
install.packages("Matrix")

# 패키지 로딩
library(arules)
library(arulesViz)
library(Matrix)

# 사용할 실제 데이터
DATADIR <- "c:/r_exam"
file <- file.path(DATADIR, "ratings.csv")

# 데이터 로딩
df <- read.table(file, header = T, sep = ',', 
                 col.names = c("userid", "itemid", 
                               "rating", "timestamp"))

# 매트릭스를 생성하기 위해서 R의 데이터 프레임을 매트릭스로 변환
df_matrix <- as(sparseMatrix(i = df$itemid, j = df$userid, x = 1), "nsparseMatrix")
df_items <- as(df_matrix, "itemMatrix")

# Apriori 알고리즘을 실행하여 빈발 패턴 생성
rules <- apriori(df_items, parameter = list(supp = 0.12, minlen = 2, maxlen = 2, target = "rules"))
summary(rules)

# 데이터마이닝 처리 결과 확인
rules <- sort(rules, by="support", decreasing=TRUE)
inspect(rules[1:10])

rules <- sort(rules, by="confidence", decreasing=TRUE)
inspect(rules[1:10])

rules <- sort(rules, by="lift", decreasing=TRUE)
inspect(rules[1:10])

# Top 25에 대한 시각화
itemFrequencyPlot(df_items, topN = 25)







