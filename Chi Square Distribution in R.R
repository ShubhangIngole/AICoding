#Example 1: Chi Square Density in R (dchisq Function)

x_dchisq <- seq(0, 20, by = 0.1)
y_dchisq <- dchisq(x_dchisq, df = 5)
plot(y_dchisq)

#Example 2: Chi Square Cumulative Distribution Function (pchisq Function)

x_pchisq <- seq(0, 20, by = 0.1)
y_pchisq <- pchisq(x_pchisq, df = 5) 
plot(y_pchisq)

#Example 3: Chi Square Quantile Function (qchisq Function)
x_qchisq <- seq(0, 1, by = 0.01) 
y_qchisq <- qchisq(x_qchisq, df = 5)
plot(y_qchisq)

#Example 4: Simulation of Random Numbers (rchisq Function)

set.seed(53535)                                          # Set seed for reproducibility
N <- 10000
y_rchisq <- rchisq(N, df = 5)
y_rchisq 
hist(y_rchisq,breaks = 100,main = "")