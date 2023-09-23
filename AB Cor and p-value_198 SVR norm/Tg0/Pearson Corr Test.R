library(ggplot2)
library(grid)
library(gridExtra)

Data=read.csv("test.csv")
Data=data.frame(Data)


plot(Data[,2], Data[,3], main = "NR3C1 vs NEK7", xlab = "NR3C1", ylab = "NEK7", pch = 20)

abline(lm(Data[,2] ~ Data[,3]), col = "blue", lwd =2)

text(1.7,2.2, paste("Pearson Correlation : ", round(cor(Data[,2], Data[,3]), 2)), col="red")