library(qcc)

dados <- read.csv("/home/isabelecarvasan/Desktop/EstatisticaR-master/dados/exercicio6.csv", sep=";", dec=",",header=TRUE)

defect <- dados$NÂº.pessoas
names(defect) <- dados$ï..Qualidade
pareto.chart(defect, ylab = "Error frequency")
pareto.chart(defect, ylab = "Error frequency", xlab = "Error causes", las=1)
pareto.chart(defect, ylab = "Error frequency", col=rainbow(length(defect)))


png(filename='./graficos/EX06/pareto.png', width = 800, height = 500, pointsize = 16)
pareto.chart(defect, cumperc = seq(0, 100, by = 5))
dev.off()

