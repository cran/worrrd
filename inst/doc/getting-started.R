## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
   fig.width = 7, 
  out.width = '100%'
)

## ----setup, message=FALSE, warning=FALSE--------------------------------------
library(worrrd)

## -----------------------------------------------------------------------------
words <- c("dog", "cat", "horse", "frog", "cow", "fox")
ex1 <- wordsearch(words, r = 10, c = 10)
plot(ex1, solution = TRUE)

## -----------------------------------------------------------------------------
dat <- 
  dplyr::tribble(
    ~word,   ~clue,
    "apple",   "keeps the doctor away",
    "banana",   "yellow; great dipped in chocolate",
    "orange", "citrus; soccer halftime snack",
    "lime",  "citrus; green",
    "pear", "Bosc; Bartlett; D'Anjou",
    "strawberry", "red sweet berry full of seeds"
  )
ex1 <- crossword(words = dat$word, clues = dat$clue, r = 40, c = 40)
plot(ex1, solution = TRUE, clues = TRUE, legend_size = 2)

