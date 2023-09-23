
library(ggplot2)
#png(file="pngnew7.tiff", width=18500, height=17000, res=300)
png(file="pngnew9.tiff", width=1000, height=700)


MetaboanalystFCeramides_Diverge=read.csv("HA-Spearman cor_13p-valuelessthn0.05.csv")
#MetaboanalystFCeramides_Diverge[44,2]="\u03b3-Glutamylglutamic acid"


p=ggplot(MetaboanalystFCeramides_Diverge, aes(x=reorder(Compound,cor), y=cor, fill=Reg), face="bold") +
  geom_bar(stat="identity",colour="black", width = 0.9) +
  scale_y_continuous(limits=c(-0.9,1), breaks = c(-0.9,-0.6,-0.3,0,0.3,0.6,0.9))+
  theme_classic()+
  coord_flip() + 
  theme(legend.position = c(0.2,0.9),
        legend.title=element_blank(),
        plot.title = element_text(hjust=0.4, vjust=1, face="bold", size=30),
        legend.text = element_text(face = "bold",size=23),
        axis.title.x = element_text(face="bold", size=28,vjust=-0.1),
        panel.background = element_rect(fill ="white"),plot.margin = margin(20,20,18,20),
        axis.title.y=element_text(face="bold",vjust=-0.1),
        axis.line.x =element_line(colour = "black", size = 1), axis.line.y =element_line(colour = "black", size = 1),
        axis.text.y=element_text(face="bold",size=25,colour = "black", margin = margin(t = 2, r = 2, b = 2, l = 2)),
        axis.text.x = element_text(vjust=-0.1,face = "bold",colour = "black",size =25,margin = margin(t = 2, r = 2, b = 2, l = 2)))+    
  scale_fill_manual(values = c("Decreased"="#053061","Increased" ="#820909"))+
  guides(fill = guide_legend(reverse=TRUE))

p+labs(y="Spearman's rank-order correlation
       Metabolite vs. HA", x="",title="A?? (Total Area) & Metabolite Correlation")

graphics.off()










#053061
#67001F
values = c("Decreased"="#053061","Increased" ="#820909")
###
A?? (Total Area) & Metabolite Correlation"
"Decreased"="blue","Increased" ="red"
"Decreased"="#4682b4","Increased" ="#FF033E"

"Decreased"="#4682b4","Increased" ="#FF033E"
"Decreased"="#00008B","Increased" ="#8B0000"