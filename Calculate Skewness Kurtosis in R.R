#Example 1: Compute Skewness & Kurtosis of Normal Distribution

set.seed(3548148)                           # Set seed for reproducibility
x_norm <- rnorm(5000)                       # Generate normally distributed random sample
head(x_norm)                                # Print first six values
hist(x_norm, prob = TRUE)                   # Draw histogram with density
lines(density(x_norm), col = 2, lwd = 3)
#install.packages("moments")                 # Install moments package
library("moments")                          # Load moments
skewness(x_norm)                            # Calculate skewness
kurtosis(x_norm)                            # Calculate kurtosis


#Example 2: Compute Skewness & Kurtosis of Weibull Distribution

set.seed(3286764)                           # Set seed for reproducibility
x_weibull <- rweibull(5000, shape = 0.1)    # Generate random weibull distribution
head(x_weibull)                             # Print first six values
skewness(x_weibull)                         # Calculate skewness
kurtosis(x_weibull)                         # Calculate kurtosis

