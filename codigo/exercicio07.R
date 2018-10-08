dados <- read.csv("/home/isabelecarvasan/Desktop/EstatisticaR-master/dados/exercicio7.csv", sep=";", dec=",",header=TRUE)

#GRÁFICO
png(filename='./graficos/EX07/barras.png', width = 800, height = 500, pointsize = 16)
barplot(dados$Atendimento, main="Distribuição de atendimento por área", 
        xlab= "Áreas", names = dados$ï..Ã.reas)
dev.off()


