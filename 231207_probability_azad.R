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
#> [1] 0.7734375
