#Example 1: Chi Square Density in R (dchisq Function)
x_dchisq <- seq(0, 20, by = 0.1)                         # Specify x-values for dchisq function
y_dchisq <- dchisq(x_dchisq, df = 5)  # Apply dchisq function
plot(y_dchisq)

#Example 2: Chi Square Cumulative Distribution Function (pchisq Function)
x_pchisq <- seq(0, 20, by = 0.1)                         # Specify x-values for pchisq function
y_pchisq <- pchisq(x_pchisq, df = 5)  # Apply pchisq function
plot(y_pchisq) # Plot pchisq values

#Example 3: Chi Square Quantile Function (qchisq Function)
x_qchisq <- seq(0, 1, by = 0.01)                        # Specify x-values for qchisq function
y_qchisq <- qchisq(x_qchisq, df = 5)  # Apply qchisq function
plot(y_qchisq)      

#Example 4: Simulation of Random Numbers (rchisq Function)
set.seed(53535)                                          # Set seed for reproducibility
N <- 10000                                               # Specify sample size
y_rchisq <- rchisq(N, df = 5)          # Draw N chi squared distributed values
y_rchisq                                                # Print values to RStudio console
hist(y_rchisq, breaks = 100, main = "")
