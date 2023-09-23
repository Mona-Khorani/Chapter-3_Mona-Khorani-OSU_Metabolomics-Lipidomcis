m=read.csv("Tg0WT0.csv", sep=",")


with(m, plot(log2FC,neglogp, pch=20, main="Volcano plot for comparision of Tg0 vs WT0",xlab="Log2(Fold Change)",ylab="-Log10(pvalue)", cex=1.6, xlim=c(-2,1.5)))

with(subset(m, pval<.01 ), points(log2FC,neglogp, pch=20,cex=1.6, col="red"))
with(subset(m, pval<0.05& pval>.01), points(log2FC,neglogp, pch=20,cex=1.6, col="orange"))

legend(0.8,4.5, legend=c("pvalue<0.01", "pvalue <0.05 & >0.01"),
       col=c("red", "orange"), pch=20, cex=0.9)

geom_vline(xintercept=c(-0.6, 0.6), col="red") +
  geom_hline(yintercept=-log10(0.05), col="red")




#For coloring only pval
#ggplot
m$fcthre <- "pvalue >0.05"
m$fcthre[m$pval < 0.01& m$pval<0.01] <- "pvalue <0.01"
m$fcthre[m$pval < 0.05& m$pval>0.01 ] <- "pvalue <0.05 & >0.01"
m$delabel <- NA
m$delabel[m$fcthre != "pvalue >0.05"] <- m$Metabolite[m$fcthre != "pvalue >0.05"]




library(ggrepel)
# plot adding up all layers we have seen so far
ggplot(data=m, aes(x=log2FC, y=neglogp, col=m$fcthre, label=delabel)) +
  geom_point(size=5) + labs(color = "p-value")+
  guides(color = guide_legend(override.aes = list(size = 8)))+
  theme_minimal() +
  
  theme(axis.text.y =element_text(margin = margin(t = 0, r = 10, b = 0, l = 0), face="bold",size=32, color = "black", hjust=2),axis.text.x =element_text(face="bold",size=32,color = "black", vjust=-1,margin = margin(t = 0, r = 0, b = 10, l = 0)),
        axis.line.x = element_line(color="black", size = 1) ,
        axis.line.y = element_line(color="black", size = 1),
    plot.title = element_text(hjust=0.5, vjust=2, face="bold",margin = margin(b = 25), size=45),
    legend.text = element_text(face = "bold",size=24),
    legend.position=c(0.89,1),legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black", linetype = "dashed"),
    legend.justification=c(0, 1), 
    legend.key.width=unit(1, "lines"), 
    plot.margin = unit(c(1.01, 12, 0.5, 0.5), "line"),
    legend.title = element_text(face = "bold",size=30),
    axis.title.x = element_text(face="bold", size=38,margin = margin(t =14, r = 0, b = 0, l = 0)),
    axis.title.y=element_text(face="bold",size=38,margin = margin(t =0, r = 14, b = 0, l = 0)),
    
  )+
  geom_text_repel( face = "bold",size=10,box.padding = 0.5, max.overlaps = Inf, seed = 42) +
  scale_color_manual(values=c("red", "orange", "black")) +
  geom_vline(xintercept=c(-0.6, 0.6), col="red", size=0.04) +
  geom_hline(yintercept=-log10(0.05), col="red",size=0.08)+
  labs(title="Volcano plot for comparision of Tg0 vs WT0", x="Log2(Fold Change)",y="-Log10(pvalue)")






