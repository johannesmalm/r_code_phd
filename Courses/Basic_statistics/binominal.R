# 1. Binominal distribution

choose(8,1)
choose(8,4)

pbinom(3,7,0.25)

# Hypothesis testing

p <- 0.25
1-pbinom(30, 100, 0.25)
pbinom(30,100,0.25, lower.tail = F)


pnorm(4, mean = 7.5, sd=1.5)

pnorm(1.96, lower.tail = F)*2

pnorm(1.96)

qnorm(0.975)

pnorm(0, mean = 0, sd =2)

qnorm(0.5)

# Students t-test
x <- c(113, 106, 103, 102, 127)
n <- 5

tobs <- (mean(x)-100)/(sd(x)/sqrt(length(x)))
pt(tobs, df = 4, lower.tail = F)

