#Example 1: Poisson Density in R (dpois Function)

x_dpois <- seq(- 5, 30, by = 1)
y_dpois <- dpois(x_dpois, lambda = 10)
plot(y_dpois) 

#Example 2: Poisson Distribution Function (ppois Function)

x_ppois <- seq(- 5, 30, by = 1)  
y_ppois <- ppois(x_ppois, lambda = 10)    
plot(y_ppois)    

#Example 3: Poisson Quantile Function (qpois Function)

x_qpois <- seq(0, 1, by = 0.005)
y_qpois <- qpois(x_qpois, lambda = 10) 
plot(y_qpois)

#Example 4: Random Number Generation (rpois Function)

set.seed(13579)                                    # Set seed for reproducibility
<pre lang="csharp" > N <- 10000        
y_rpois <- rpois(N, lambda = 10)                   # Draw N poisson distributed values
y_rpois
hist(y_rpois,breaks = 100, main = "Poisson Distribution in R")           # Plot histogram of rpois values
