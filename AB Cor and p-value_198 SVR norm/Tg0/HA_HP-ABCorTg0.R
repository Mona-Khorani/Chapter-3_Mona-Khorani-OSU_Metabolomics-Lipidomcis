if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")
install.packages("ggpubr")
library("ggpubr")


Data=read.csv("HA-ABCoronlyTg0.csv")

parameters1=data.frame(index=seq_len(180), pval1=NA)
for (i in 1:180){
  ARn=cor(Data$HP, Data[,i+2], method = c("kendall"))
  parameters1[i,-1]=ARn
}
write.csv(parameters1,"HP-kendallTg0ABCoronlyTg0..csv")





parameters2=data.frame(index=seq_len(180), pvalAdjSpear=NA,pvalunadjSpear=NA,estimateSpear=NA,
                       pvalAdjPear=NA,pvalunadjPearson=NA,estimatePearson=NA)

for (i in 1:180){
  ARn=cor.test(Data$AB, Data[,i+2], method=c( "spearman"), adjust="fdr")
  parameters2[i,4]=ARn$estimate
  parameters2[i,2]=ARn$p.value
  ARn=cor.test(Data$AB, Data[,i+2], method=c( "spearman"), adjust="none")
  parameters2[i,3]=ARn$p.value
  ARn=cor.test(Data$AB, Data[,i+2], method=c( "pearson"), adjust="fdr")
  parameters2[i,7]=ARn$estimate
  parameters2[i,5]=ARn$p.value
  ARn=cor.test(Data$AB, Data[,i+2], method=c( "spearman"), adjust="none")
  parameters2[i,6]=ARn$p.value
}

write.csv(parameters2,"HASpearmancortestONLYTg0resulttt.csv")









parameters2=data.frame(index=seq_len(180), pval1=NA)
for (i in 1:180){
  ARn=shapiro.test(Data[,i+2])
  parameters1[i,-1]=ARn
}
write.csv(parameters1,"HAshapiro.testTg0.csv")


