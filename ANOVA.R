#Independent t-Test
#Kids <- c(rep("Son","Daughter"),each=7))
Kids<- c(rep(c("Son","Daughter"),each=7))
Minutes <-c(20,22,16,21,15,17,16,30,26,24,19,17,21)
RunData <- data.frame(Kids,Minutes)
RunData
#plot(Minutes)

t.test(Minutes~Kids,dara=RunData,alternative="greater")
install.packages("ggplot2")
library(ggplot2)
library(dplyr)
RunData%>%
group_by(Kids)%>%
summarise(aveMin=mean(Minutes))%>%
ggplot  