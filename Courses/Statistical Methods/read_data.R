library("tidyverse")
library("haven")

ch2 <- read_sav("Courses/Statistical Methods/data/ch2.sav")


test <- function(){
  return(c(y:3, n:4))
}

x <- test()['y']*3
x