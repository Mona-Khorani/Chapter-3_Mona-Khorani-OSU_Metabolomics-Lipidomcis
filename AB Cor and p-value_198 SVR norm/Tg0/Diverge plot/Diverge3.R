
library(ggplot2)
png(file="pngnew7.tiff", width=18500, height=17000, res=300)


MetaboanalystFCeramides_Diverge=read.csv("HA-Spearman cor_50 (30RF30PLSDAmin common).csv")
MetaboanalystFCeramides_Diverge[44,2]="\u03b3-Glutamylglutamic acid"


p=ggplot(MetaboanalystFCeramides_Diverge, aes(x=reorder(Compound,cor), y=cor, fill=Reg), face="bold") +
  geom_bar(stat="identity",colour="black", width = 0.79) +
  scale_y_continuous(limits=c(-0.9,1), breaks = c(-0.9,-0.8,-0.7,-0.6,-0.5,-0.4,-0.3,-0.2,-0.1,0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1))+
  theme_classic()+
  coord_flip() + 
  theme(legend.position = c(0.8,0.5),
        legend.title=element_blank(),
        plot.title = element_text(hjust=0.5, vjust=2, face="bold", size=85),
        legend.text = element_text(face = "bold",size=80),
        axis.title.x = element_text(face="bold", size=80,vjust=-0.7),
        panel.background = element_rect(fill ="white"),plot.margin = margin(60,60,10,10),
        axis.title.y=element_text(face="bold",vjust=-0.5),
        axis.line.x =element_line(colour = "black", size = 1), axis.line.y =element_line(colour = "black", size = 1),
        axis.text.y=element_text(face="bold",size=70,colour = "black", margin = margin(t = 20, r = 20, b = 20, l = 20)),
        axis.text.x = element_text(vjust=-0.5,face = "bold",colour = "black",size =70,margin = margin(t = 20, r = 20, b = 40, l = 20)))+    
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