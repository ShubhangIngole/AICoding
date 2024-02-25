#Example 1: Binomial Density in R (dbinom Function)
x_dbinom <- seq(0, 100, by = 1)      
y_dbinom <- dbinom(x_dbinom, size = 100, prob = 0.5) 
plot(y_dbinom)  


#Example 2: Binomial Cumulative Distribution Function (pbinom Function)
x_pbinom <- seq(0, 100, by = 1) 
y_pbinom <- pbinom(x_pbinom, size = 100, prob = 0.5)
plot(y_pbinom)

#Example 3: Binomial Quantile Function (qbinom Function)
x_qbinom <- seq(0, 1, by = 0.01) 
y_qbinom <- qbinom(x_qbinom, size = 100, prob = 0.5)
plot(y_qbinom)  


#Example 4: Simulation of Random Numbers (rbinom Function)

set.seed(13579)
N <- 10000  
y_rbinom <- rbinom(N, size = 100, prob = 0.5) 
y_rbinom
hist(y_rbinom,breaks = 100,main = "")
