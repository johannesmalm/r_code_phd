library(tidyverse)

before <- c(3.9, 5.3, 6.1, 4.9, 9.1, 2.8, 3.5, 3.2, 2.6, 5.9)
after <- c(3.4,4.1,4.7,4.2,7.6,1.5,2.3,2.6,2.0,5.2)
mean <- mean(after)
var <- var(after)
se <- 1.83*sqrt(3.31/10)
low <- mean - se
high <- mean + se

df <- tibble(before = before, after = after)

# wilcox.test(after, mu = 4.7, alt = "less", paired = F, conf.int = T, conf.level = 0.95, exact = F, correct = F)
# 6/sqrt(8.4)

wilcox.test(after, mu = 4.7, alternative = "less", conf.level = 0.95, conf.int = T)

boxplot(after)

x <- "now i know"

q <- c(1,6,5,8,9,4,5,3,4,5,4,3,2,6,0)

# qqnorm(before, pch = 1, frame = FALSE)
# qqline(before, col = "steelblue", lwd = 2)