Sys.setlocale(category = "LC_ALL", locale= "Greek")
Sys.setlocale(category = "LC_ALL", locale = "Greek")

library(dendextend)

library(gplots)
library(RColorBrewer)
library(greekLetters)

x <- read.csv("30mostimportantbaseon198SVRnotmdata(180 metabolites).csv", sep=",", fileEncoding = "UTF-8")
row.names(x)= n
met=x[,2:22]

met_matrix=data.matrix(met)
u<- scale(met_matrix)


colnames(u)= c("WT",
               "WT",
               "WT",
               "WT",
               "WT",
               "WT",
               "WT",
               "WT",
               "WT",
               "Tg2576",
               "Tg2576",
               "Tg2576",
               "Tg2576",
               "Tg2576",
               "Tg2576",
               "Tg2576",
               "Tg2576",
               "Tg2576",
               "Tg2576",
               "Tg2576",
               "Tg2576")

n=c("hich", "Urea",
               "PC(P-16:0/20:1)",
               "CYTOSINE",
               "ODPC",
               "HexCer(d18:1/18:0)",
               "Adrenic acid",
               "CySSG",
               "PHENACYLAMINE",
               "PS(20:4/22:0)",
               "Cer(d18:1/18:1)_iso1",
               "Methionine",
               "Ergothioneine",
               "LysoPI(18:0/0:0)",
               "Eicosatrienoic acid",
               "Cer(d18:1/22:1)",
               "D-Aspartic acid",
               "Dodecanoic acid",
               "HexHexCer(d18:1/18:0)",
               "LysoPC(16:1/0:0)",
               "ADENINE",
               "PC(24:1/18:4)",
               "Dihydroceramide",
               "PS(18:3/20:0)",
               "\u03b3-Glutamylglutamic acid",
               "GMP",
               "HexCer(d18:1/20:0)",
               "Oleamide",
               "PS(20:1/20:0)",
               "9-Octadecenal",
               "PC(16:0/18:2)"
)


cols <- colorRampPalette(brewer.pal(10, "RdBu"))(256)


png(file="pngnew1.png", width=1200, height=1100)
heatmap.2(u[, ],dendrogram="none",Colv=FALSE, Rowv=FALSE,trace="none",col=rev(cols),scale="row",key = TRUE
          ,margins = c(7,29),lhei=c(1,10),density.info = "none" , cexRow=2,cexCol=2,keysize=1,key.par =list(mgp=c(2,1,0.5))  )
graphics.off()

png(file="pngnew2.png",width=4100, height=3100, res=300)
heatmap.2(u[,],dendrogram="row",Colv=FALSE,trace="none",col=redgreen(35),scale="row",key = TRUE,face="bold"
          ,margins = c(7,30),lhei=c(1,0),density.info = "none" , cexRow=2,cexCol=2,keysize=1,key.par =list(mgp=c(5,1,0.5))  )
graphics.off()



#ino akharesh estefade kardm
png(file="pngnew23.tiff", width=18500, height=17000)
par(cex.main=1.7, cex.lab=1.7, cex.axis=1.7) #for legend font size
par(oma=c(1,15,1,1))
heatmap.2(u[2:31, ],dendrogram="row",Colv=FALSE, trace="none",col=rev(cols),scale="row",key = TRUE
          ,margins = c(20,40),lhei=c(5,20),density.info = "none" , cexRow=20,cexCol=20,keysize=4,key.par =list(mgp=c(2,1,0))  )
graphics.off()





###Final good plot:
png(file="pngnew24.tiff", width=7200, height=6100, res=300)
par(cex.main=2, cex.lab=1.8, cex.axis=2) #for legend font size
heatmap.2(u[2:31, ],dendrogram="row",Colv=FALSE, trace="none",col = rev(cols),scale="row",key = TRUE
         ,margins = c(16,49),lwid=c(0.01,0.04), lhei=c(0.0027,0.04), density.info = "none" ,cexRow=3.5,cexCol=3.5,key.par =list(mgp=c(2,1,0)) )
graphics.off()


#try again- I used this one for the final report :/
png(file="pngnew2.tiff", width=5200, height=4100, res=300)
par(cex.main=2, cex.lab=1.8, cex.axis=2) #for legend font size
heatmap.2(u[2:31, ],dendrogram="row",Colv="False", trace="none",col = rev(cols),scale="row",key = TRUE
          ,margins = c(8,49),lwid=c(0.01,0.04),lhei=c(0.0027,0.04), density.info = "none" ,cexRow=3.5,cexCol=3.5,key.par =list(mgp=c(2,1,0)) )
graphics.off()


#try yeyy

png(file="pngnew2.tiff", width=1600, height=1200)
par(cex.main=2, cex.lab=1.8, cex.axis=2) #for legend font size
heatmap.2(u[2:31, ],dendrogram="row",Colv=FALSE, trace="none",col = rev(cols),scale="row",key = TRUE
          ,margins = c(8.5,30.5),lhei=c(0.9,11), density.info = "none" ,cexRow=2.2,cexCol=2.2,key.par =list(mgp=c(2.3,1.4,0)) )
graphics.off()




#................................................

#Best final
#try again-YOU MADE IT :)

png(file="pngnew3.tiff", width=7100, height=7500)
distance= dist(u[2:31, ], method ="euclidean")    
hcluster = hclust(distance, method = "complete")
dd <- set(as.dendrogram(hcluster, "branches_lwd", 2))
lhei=c(3,1)
par(cex.main=12, cex.lab=12, cex.axis=12) #for legend font size
heatmap.2(u[2:31, ],dendrogram="row",Colv="NA", trace="none",col = rev(cols),scale="row",key = TRUE,
 Rowv= dd ,margins = c(90,200),lhei=lhei, density.info = "none", keysize=1 ,cexRow=20,cexCol=20,key.par =list(mgp=c(2,1,0)) )

graphics.off()


#................................................







##try again
png(file="pngnew2.tiff", width=3300, height=3000, res=300)
par(cex.main=1, cex.lab=1, cex.axis=1) #for legend font size
heatmap.2(u[2:31, ],dendrogram="row",Colv=FALSE, trace="none",col = rev(cols),scale="row",key = TRUE
          ,margins = c(9,22),lwid=c(0.0001,0.0004), lhei=c(0.05,0.39), density.info = "none" ,cexRow=1.5,cexCol=1.5,key.par =list(mgp=c(1.2,0.5,0)) )
graphics.off()





png(file="pngnew4.png", width=1200, height=1100)
heatmap.2(u[,],dendrogram="both",trace="none",col=redgreen(35),scale="row",key = TRUE
          ,margins = c(7,29),lhei=c(1,10),density.info = "none" , cexRow=2,cexCol=2,keysize=2,key.par =list(mgp=c(2,1,0.5))  )
graphics.off()

