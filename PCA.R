#install.packages("rgl")
library(rgl)
data(mtcars)

head(mtcars)
data_cars <- mtcars[,-(8:9), drop=FALSE]

head(data_cars)

#Perform PCA
pca_cars <- prcomp(data_cars, scale=TRUE)

summary(pca_cars)
scores = as.data.frame(pca_cars$x)

head(scores[1:4])


