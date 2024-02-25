#Example 1: Student t Probability Density Function (dt Function)
x_dt <- seq(- 10, 10, by = 0.01) 
y_dt <- dt(x_dt, df = 3) 
plot(y_dt)    

#Example 2: Student t Cumulative Distribution Function (pt Function)
x_pt <- seq(- 10, 10, by = 0.01) 
y_pt <- pt(x_pt, df = 3) 
plot(y_pt)

#Example 3: Student t Quantile Function (qt Function)
x_qt <- seq(0, 1, by = 0.01) 
y_qt <- qt(x_qt, df = 3)
plot(y_qt)

#Example 4: Generating Random Numbers (rt Function)
set.seed(91929) 
N <- 10000 
y_rt <- rt(N, df = 3)
y_rt
hist(y_rt, break=100,main="")
