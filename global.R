library(quanteda)

a <- readRDS("~/1gram.Rdata")

x <- dfm(a,
         tolower = TRUE, stem = FALSE, remove_punct = TRUE,
         remove = stopwords("english"))

onik <- textstat_frequency(x,n=20)

onik <- onik$feature

gonik <- textstat_frequency(x,n=50)

rajin <- gonik$feature[21:50]

b <- readRDS("~/2gram.Rdata")

y <- dfm(b,
         tolower = TRUE, stem = FALSE, remove_punct = TRUE,
         remove = stopwords("english"))

twonik <- textstat_frequency(y,n=20)

twonik <- twonik$feature

c <- readRDS("~/3gram.Rdata")

z <- dfm(c,
         tolower = TRUE, stem = FALSE, remove_punct = TRUE,
         remove = stopwords("english"))

threenik <- textstat_frequency(z,n=20)

threenik <- threenik$feature

d <- readRDS("~/4gram.Rdata")

z1 <- dfm(d,
          tolower = TRUE, stem = FALSE, remove_punct = TRUE,
          remove = stopwords("english"))

fonik <- textstat_frequency(z1,n=20)

fonik <- fonik$feature







