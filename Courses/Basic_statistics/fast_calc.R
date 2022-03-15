library(tidyverse)
# Ex 2.3
data <- c(3.9, 5.3, 6.1, 4.9, 9.1, 2.8, 3.5, 3.2, 2.6, 5.9)
data2 <- c(3.9, 5.3, 6.1, 4.9, 2.8, 3.5, 3.2, 2.6, 5.9)

df = tibble(x = data) %>% 
  mutate(x2 = x^2) %>% 
  mutate(sum_x2 = sum(x2)) %>% 
  mutate(sum_x = sum(x)) %>% 
  mutate(sum_x_2 = 2237.29) %>% 
  mutate(teen = sum_x_2/10)

n1 <- 10
n2 <- 9
sd1 <- sd(data)
sd2 <- sd(data2)
var1 <- var(data)
var2 <- var(data2)
mean1 <- mean(data)
mean2 <- mean(data2)
  
alpha = 0.05
degrees.freedom1 = n1-1
degrees.freedom2 = n2-1
t.score1 = qt(p=alpha/2, df=degrees.freedom1, lower.tail = F)
margin.error1 = t.score1 * sd1/sqrt(n1)

alpha2 = 0.05
degrees.freedom1 = n2-1
t.score2 = qt(p=alpha/2, df=degrees.freedom2, lower.tail = F)
margin.error2 = t.score2 * sd2/sqrt(n2)

mean1-mean2
var1-var2
margin.error1-margin.error2