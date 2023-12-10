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
