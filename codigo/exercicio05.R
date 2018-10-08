dados <- read.csv("/home/isabelecarvasan/Desktop/EstatisticaR-master/dados/exercicio5.csv", sep=";", dec=",",header=TRUE)

#GRÁFICOS
png(filename='./graficos/EX05/barras.png', width = 800, height = 500, pointsize = 16)
barplot(dados$NÂº.pessoas, main="Distribuição de N° pessoas por marcas", 
        xlab= "Marcas", names = dados$ï..Marcas)
dev.off() 
