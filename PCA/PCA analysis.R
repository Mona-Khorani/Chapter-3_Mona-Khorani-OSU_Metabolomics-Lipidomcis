library(mvdalab)

Penta=read.csv("PCA analysis-all groups-SVR norm data-Score cont plot.csv")
mod1 <- plsFit(log.RAI ~., scale = TRUE, data = Penta[, -1],
               ncomp = 2, validation = "none")
Score.Contributions1 <- ScoreContrib(mod1, ncomp = 1:2, obs1 = 1, obs2 = 3)
plot(Score.Contributions1, ncomp = 2)

## Not run: 
data(Penta)
mod2 <- plsFit(log.RAI ~., scale = TRUE, data = Penta[, -1],
               ncomp = 2, validation = "none")
Score.Contributions2 <- ScoreContrib(mod2, obs1 = 1, obs2 = 3)
plot(Score.Contributions2)
Score.Contributions3 <- ScoreContrib(mod1, obs1 = c(1, 3), obs2 = c(5:10))
plot(Score.Contributions3)

## End(Not run)

###  PLS MODEL FIT WITH method = 'wrtpls' and validation = 'none', i.e. WRT-PLS is performed ###
## Not run: 
mod3 <- plsFit(Sepal.Length ~., scale = TRUE, data = iris,
               method = "wrtpls", validation = "none") #ncomp is ignored
Score.Contributions4 <- ScoreContrib(mod3, ncomp = 1:5, obs1 = 1, obs2 = 3)
plot(Score.Contributions4, ncomp = 5)

## End(Not run)
png(file="png1", width=5000, height=2000)

#PCA Model
pc1 <- pcaFit(Penta[, -1], ncomp = 2)
plot(pc1)
G=c("WT0",
     "WT0",
     "WT0",
     "WT0",
     "WT0",
     "WT0",
     "WT0",
     "WT0",
     "WT0",
     "WT1000",
     "WT1000",
     "WT1000",
     "WT1000",
     "WT1000",
     "WT1000",
     "WT1000",
     "WT1000",
     "WT1000",
     "WT1000",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg0",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "Tg1000",
     "QC",
     "QC",
     "QC",
     "QC",
     "QC",
     "QC"
)

scoresplot(pc1)
loadingsplot2D(pc1)
png(file="png1", width=5000, height=2000)
pc1 <- pcaFit(Penta[, -1], ncomp = 2)
Score.Contributions1 <- ScoreContrib(pc1,ncomp =1:2, obs1 = 23)
plot(Score.Contributions1,cex.main=30, cex.axis=8)
graphics.off()
