library(quanteda)
library(tidytext)
library(tm)
library(dplyr)
library(stringi)
library(stringr)
library(data.table)

blognik <- readLines("~/final/en_US/en_Us.blogs.txt")

newnik <- readLines("~/final/en_US/en_Us.news.txt",skipNul = TRUE)

twinik <- readLines("~/final/en_US/en_us.twitter.txt",skipNul = TRUE)

sample.size <- 0.001

sampleblog <- sample(blognik,length(blognik)*sample.size,replace = TRUE)

samplenews <- sample(newnik,length(newnik)*sample.size,replace = TRUE)

sampletwit <- sample(twinik,length(twinik)*sample.size,replace = TRUE)

fullsample <- c(sampleblog,samplenews,sampletwit)


fullsample <- c(sampleblog,samplenews,sampletwit)

fullsample <- gsub("(f|ht)tp(s?)://(.*)[.][a-z]+", "", fullsample, ignore.case = FALSE, perl = TRUE)

fullsample <- gsub("\\S+[@]\\S+", "", fullsample, ignore.case = FALSE, perl = TRUE)

fullsample <- gsub("@[^\\s]+", "", fullsample, ignore.case = FALSE, perl = TRUE)

fullsample <- gsub("#[^\\s]+", "", fullsample, ignore.case = FALSE, perl = TRUE)

fullsample <- gsub("[^\\p{L}'\\s]+", "", fullsample, ignore.case = FALSE, perl = TRUE)

# remove punctuation (leaving ')
fullsample <- gsub("[.\\-!]", " ", fullsample, ignore.case = FALSE, perl = TRUE)

# trim leading and trailing whitespace
fullsample <- gsub("^\\s+|\\s+$", "", fullsample)

fullsample <- stripWhitespace(fullsample)

fullsample <- gsub("[0-9](?:st|nd|rd|th)", "", fullsample, ignore.case = FALSE, perl = TRUE)

corpus <- corpus(fullsample)

x <- tokens(corpus,remove_numbers = TRUE,remove_punct = TRUE,remove_symbols = TRUE
            ,remove_url = TRUE,remove_separators = TRUE)

onik <- tokens_ngrams(x,n=1)

# Bigram

twonik <- tokens_ngrams(x, n = 2)

# Trigram

threenik <- tokens_ngrams(x, n = 3)

# Fourgram

fonik <- tokens_ngrams(x,n=4)

# Save n-grams


saveRDS(onik,"1gram.Rdata")

saveRDS(twonik,"2gram.Rdata")

saveRDS(threenik,"3gram.Rdata")

saveRDS(fonik,"4gram.Rdata")


a <- readRDS("1gram.Rdata")

x <- dfm(a,
         tolower = TRUE, stem = FALSE, remove_punct = TRUE,
         remove = stopwords("english"))


b <- readRDS("2gram.Rdata")

y <- dfm(b,
         tolower = TRUE, stem = FALSE, remove_punct = TRUE,
         remove = stopwords("english"))

topfeatures(y)

c <- readRDS("3gram.Rdata")

z <- dfm(c,
         tolower = TRUE, stem = FALSE, remove_punct = TRUE,
         remove = stopwords("english"))

topfeatures(z)

d <- readRDS("4gram.Rdata")

z1 <- dfm(d,
          tolower = TRUE, stem = FALSE, remove_punct = TRUE,
          remove = stopwords("english"))

topfeatures(z1)
