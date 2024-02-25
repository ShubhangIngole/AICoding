#Graphics in R

#Here is a list of all graph types that are illustrated in this article:
  
#Barplot
set.seed(123)                        # Set seed for reproducibility
x <- rnorm(30)                       # Create x variable
y <- x + rnorm(30)                   # Create correlated y variable
#plot(y)
barplot(x)     

#Boxplot
boxplot(x)  

#Density Plot
plot(density(x)) 

#Heatmap
heatmap(cbind(x, y))    

#Histogram
hist(x)
hist(y) 

#Line Plot

plot(1:length(y), y, type = "l")
#Pairs Plot
pairs(data.frame(x, y)) 

#Polygon Plot
plot(1, 1,col = "white", xlab = "X", ylab = "Y")
polygon(x = c(0.7, 1.3, 1.3, 0.8),
        y = c(0.6, 1.0, 1.4, 1.3),
        col = "#353436")

#QQplot
qqplot(x, y)

#Scatterplot
plot(x, y)

#Venn Diagram

install.packages("VennDiagram")      # Install VennDiagram package
library("VennDiagram")               # Load VennDiagram package
plot.new()                           # Draw empty plot
draw.single.venn(area = 10)          # Draw venn diagram

