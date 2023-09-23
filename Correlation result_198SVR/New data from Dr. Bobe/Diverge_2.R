
library(ggplot2)


MetaboanalystFCeramides_Diverge=read.csv("WT0WT1000_cer16 fixed to pal.csv")
p=ggplot(MetaboanalystFCeramides_Diverge, aes(x=reorder(Compound,LFC), y=LFC, fill=Reg), face="bold") +
  geom_bar(stat="identity",colour="black", width = 0.79) +
  scale_y_continuous(limits=c(-0.6,0.4), breaks = c(-0.6,-0.5,-0.4,-0.3,-0.2,-0.1,0,0.1,0.2,0.3,0.4))+
  theme_classic()+
  coord_flip() + 
  theme(legend.position = c(0.8,0.5),
        legend.title=element_blank(),
        plot.title = element_text(hjust=0.5, vjust=2, face="bold", size=22),
        legend.text = element_text(face = "bold",size=20),
        axis.title.x = element_text(face="bold", size=20,margin = margin(t =14, r = 0, b = 0, l = 0)),
        panel.background = element_rect(fill ="white"), 
        axis.title.y=element_text(face="bold"),
        axis.line.x =element_line(colour = "black"),
        axis.text.y=element_text(face="bold",size=18,colour = "black"),
        axis.text.x = element_text(face = "bold",colour = "black",size =18))+    
  scale_fill_manual(values = c("Decreased"="#4682b4","Increased" ="#FF033E"))+
  guides(fill = guide_legend(reverse=TRUE))

p+labs(y="Log 2 (fold-change)", x="", title="WT1000 versus WT0")





###

"Decreased"="blue","Increased" ="red"
"Decreased"="#4682b4","Increased" ="#FF033E"

"Decreased"="#4682b4","Increased" ="#FF033E"
"Decreased"="#00008B","Increased" ="#8B0000"