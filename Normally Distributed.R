#Example 1: Normally Distributed Density (dnorm Function)
x_dnorm <- seq(- 5, 5, by = 0.05)                    # Specify x-values for dnorm function
y_dnorm <- dnorm(x_dnorm)                            # Apply dnorm function
plot(y_dnorm)                                        # Plot dnorm values

#Example 2: Distribution Function (pnorm Function)

x_pnorm <- seq(- 5, 5, by = 0.05)                    # Specify x-values for pnorm function
y_pnorm <- pnorm(x_pnorm)                            # Apply pnorm function
plot(y_pnorm)                                        # Plot pnorm values


#Example 3: Quantile Function (qnorm Function)

x_qnorm <- seq(0, 1, by = 0.005)                     # Specify x-values for qnorm function
y_qnorm <- qnorm(x_qnorm)                            # Apply qnorm function
plot(y_qnorm)                                        # Plot qnorm values


#Example 4: Random Number Generation (rnorm Function)
set.seed(13579)
N <- 10000
y_rnorm <- rnorm(N)                                  # Draw N normally distributed values
y_rnorm 
plot(y_rnorm)  

#Example 5: Modify Mean & Standard Deviation
y_rnorm2 <- rnorm(N, mean = 2)                       # Modify mean
y_rnorm3 <- rnorm(N, mean = 2, sd = 3)               # Modify standard deviation
plot(density(y_rnorm),xlim = c(- 10, 10),main = "Normal Distribution in R")
lines(density(y_rnorm2), col = "coral2")             # Plot density with higher mean
lines(density(y_rnorm3), col = "green3")             # Plot density with higher sd
legend("topleft",legend = c("Mean = 0; SD = 1","Mean = 2; SD = 1","Mean = 2; SD = 3"),col = c("black", "coral2", "green3"),lty = 1)
