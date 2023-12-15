#################################################################################
# Name: Azad Hüseyin Kılıç                                                      #
# Date Created: Dec 07, 2023                                                    #
# Purpose: learning probability theory from https://www.econometrics-with-r.org #
# Packages Used:  
# Data Used:            
# Last Update:                                                                  #
#################################################################################

# Dice roll
sample(1:6, size=1)

# generate the vector of probabilities 
probability <- rep(1/6, 6) 

# plot the probabilities 
plot(probability,
     xlab = "Outcomes",
     ylab="Probability",
     main = "Probability Distribution",
     pch=20)

# generate the vector of cumulative probabilities 
cum_probability <- cumsum(probability) 

# plot the probabilites 
plot(cum_probability, 
     xlab = "Outcomes", 
     ylab="Cumulative Probability",
     main = "Cumulative Probability Distribution",
     pch=20) 

# Bernoulli trials
sample(c("H", "T"), 1) 

# compute P( k = 5| n = 10, p = 0.5) using 'dbinom()'
dbinom(x = 5,
       size = 10,
       prob = 0.5) 

# compute P(4 <= k <= 7) using 'dbinom()'
sum(dbinom(x = 4:7, size = 10, prob = 0.5))

# compute P(4 <= k <= 7) using 'pbinom()'
pbinom(size = 10, prob = 0.5, q = 7) - pbinom(size = 10, prob = 0.5, q = 3) 

# set up vector of possible outcomes
k <- 0:10
k

# assign the probabilities
probability <- dbinom(x = k,
                      size = 10, 
                      prob = 0.5)

# plot the outcomes against their probabilities
plot(x = k, 
     y = probability,
     ylab="Probability",
     main = "Probability Distribution Function",
     pch=20) 

# compute cumulative probabilities
prob <- pbinom(q = k, 
               size = 10, 
               prob = 0.5)

# plot the cumulative probabilities
plot(x = k, 
     y = prob,
     ylab="Probability",
     main = "Cumulative Distribution Function",
     pch=20) 

# compute mean of natural numbers from 1 to 6
mean(1:6)

# set seed for reproducibility
set.seed(1)

# rolling a dice three times in a row
sample(1:6, 3, replace = T)

# set seed for reproducibility
set.seed(1)

# compute the sample mean of 10000 dice rolls
mean(sample(1:6, 
            10000, 
            replace = T))

var(1:6)

# define functions
f <- function(x) 3 / x^4
g <- function(x) x * f(x)
h <- function(x) x^2 * f(x)


# compute area under the density curve
area <- integrate(f, 
                  lower = 1, 
                  upper = Inf)$value
area 

# compute E(X)
EX <- integrate(g,
                lower = 1,
                upper = Inf)$value
EX

# compute Var(X)
VarX <- integrate(h,
                  lower = 1,
                  upper = Inf)$value - EX^2 
VarX

# draw a plot of the N(0,1) PDF
curve(dnorm(x),
      xlim = c(-3.5, 3.5),
      ylab = "Density", 
      main = "Standard Normal Density Function") 

# compute density at x=-1.96, x=0 and x=1.96
dnorm(x = c(-1.96, 0, 1.96))

# define the standard normal PDF as an R function
f <- function(x) {
  1/(sqrt(2 * pi)) * exp(-0.5 * x^2)
}

# define a vector of reals
quants <- c(-1.96, 0, 1.96)

# compute densities
f(quants)

# compare to the results produced by 'dnorm()'
f(quants) == dnorm(quants)

# integrate f()
integrate(f, 
          lower = -Inf, 
          upper = 1.337)

# compute the probability using pnorm()
pnorm(1.337)

# compute the probability
1 - 2 * (pnorm(-1.96)) 

# rolling a dice three times in a row
sample(1:49, size = 6)


# define the standard normal PDF as an R function
f <- function(x) {
  x/4)*exp(-x^2/8)
}

