library(ggplot2)

png(file=" HA.png", width=7500, height=7100,res = 340)

MetaboanalystFCeramides_Diverge=read.csv("MonaCorrelation07272020_Cleaned data_HA_50 mostimpo_ready for diverge plot.csv")
p=ggplot(MetaboanalystFCeramides_Diverge, aes(x=reorder(Compound,HA), y=HA, fill=Reg), face="bold") +
  geom_bar(stat="identity",colour="black", width = 0.79) +
  scale_y_continuous(limits=c(-0.9,0.9), breaks = c(-0.9,-0.8,-0.7,-0.6,-0.5,-0.4,-0.3,-0.2,-0.1,0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9))+
  theme_classic()+
  coord_flip() + ggtitle("A?? (Total Area) & Metabolite Correlation")+
  theme(legend.position = c(0.9,0.5),
        legend.title=element_blank(),
        plot.title = element_text(hjust=0.5, vjust=1, face="bold", size=45),
        legend.text = element_text(face = "bold",size=32),
        axis.title.x = element_text(face="bold", size=35,margin = margin(t =16, r = 0, b = 0, l = 0)),
        panel.background = element_rect(fill ="white"), 
        axis.title.y=element_text(face="bold"),
        axis.line.x =element_line(colour = "black"),
        axis.text.y=element_text(face="bold",size=26,colour = "black"),
        axis.text.x = element_text(face = "bold",colour = "black",size =26))+    
  scale_fill_manual(values = c("Decreased"="#2166ac","Increased" ="#b2182b"))+
  guides(fill = guide_legend(reverse=TRUE))

p+labs(y="Spearman's rank-order correlation
       ", x="")

graphics.off()

