# exercise 6.1
# 95 % level
# One-sided
# variance not equal

library(tidyverse)
library(lessR)
library(psych)

# Ex 6.1
# data1 <- c(44, 53, 54, 43, 48, 49, 53)
# data2 <- c(42, 48, 46, 43, 49, 42, 41, 40, 44, 48)

# Ex 6.2
data1 <- c(141, 148, 132, 138, 154, 142, 150, 146)
data2 <- c(133, 138, 130, 138, 134, 127, 128, 138)



describe(data1)
describe(data2)

var(data1)
var(data2)

boxplot(data1, data2)

# Test for normality
qqnorm(data1)
qqline(data1)
shapiro.test(data1) # If p > 0.05 normality, sensitive to small samples need qqplot

qqnorm(data2)
qqline(data2)

# Test for homogeneity of Variance: https://www.datanovia.com/en/lessons/homogeneity-of-variance-test-in-r/
## F-test - assumption normally distribution
var.test(data1, data2) # If p > 0.05 no significant difference between the two variances

# Test for independency: chi square test

# t-value with Pooled variance - if same variance in both populations
t_pooled <- function(v1, v2) {
  n1 <- length(v1)
  n2 <- length(v2)
  var1 <- var(v1)
  var2 <- var(v2)
  mean1 <- mean(v1)
  mean2 <- mean(v2)
  
  pooled_variance <-
    ((n1 - 1) * var1 + (n2 - 1) * var2) / (n1 + n2 - 2)
  
  t <- (mean1 - mean2) / (sqrt(pooled_variance * (1 / n1 + 1 / n2)))
  
  return(c(t, pooled_variance))
  
}

t_value <- t_pooled(data1, data2)[1]
pooled_variance <- t_pooled(data1, data2)[2]

# Calculate critical value in R: https://www.statology.org/t-critical-value-r/
critical_value <- qt(p = 0.9995, df = 14, lower.tail = T)
x_diff <- mean(data1) - mean(data2)
se <-
  critical_value * sqrt(pooled_variance * (1 / length(data1) + 1 / length(data2)))
x_diff - se



mean1 <- mean(data1)
mean2 <- mean(data2)






# boxplot(s, ox)


t.test(
  data1,
  data2,
  mu = 0,
  alt = "two.sided",
  conf = 0.95,
  var.eq = T,
  paired = F
)
