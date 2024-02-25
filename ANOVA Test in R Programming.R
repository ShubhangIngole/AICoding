Installing the package
install.packages("dplyr")

# Loading the package
library(dplyr)

head(mtcars)

#Perform the ANOVA test using aov function.
mtcars_aov <- aov(mtcars$disp~factor(mtcars$gear))
summary(mtcars_aov)

#Performing Two Way ANOVA test in R

# Installing the package
install.packages("dplyr")

# Loading the package
library(dplyr)

# Variance in mean within group and between group
histogram(mtcars$disp~mtcars$gear, subset = (mtcars$am == 0),
          xlab = "gear", ylab = "disp", main = "Automatic")
histogram(mtcars$disp~mtcars$gear, subset = (mtcars$am == 1),
          xlab = "gear", ylab = "disp", main = "Manual")
#Calculate test statistics using aov function
mtcars_aov2 <- aov(mtcars$disp~factor(mtcars$gear) *
                     factor(mtcars$am))
summary(mtcars_aov2)

#Plot the results in a graph

# Load required packages
install.packages("ggplot2")
library(ggplot2)

# One-way ANOVA visualization
plot1 <- ggplot(mtcars, aes(x = factor(gear), y = disp, fill = factor(gear))) +
  geom_boxplot(color = "black", alpha = 0.7) +
  labs(title = "One-Way ANOVA",
       x = "Gear",
       y = "Displacement") +
  theme_minimal() +
  theme(legend.position = "top")

# Two-way ANOVA visualization
plot2 <- ggplot(mtcars, aes(x = factor(gear), y = disp, fill = factor(am))) +
  geom_boxplot(color = "black", alpha = 0.7) +
  labs(title = "Two-Way ANOVA",
       x = "Gear",
       y = "Displacement") +
  theme_minimal() +
  theme(legend.position = "top")

# Combine the plots for comparison
library(gridExtra)
grid.arrange(plot1, plot2, ncol = 2)



