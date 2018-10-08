dados <- read.csv("/home/isabelecarvasan/Desktop/EstatisticaR-master/dados/Exercicio3.csv", sep=";", dec=",",header=TRUE)

#media
media <- mean(dados$ï..N.de.filhos)
media

#mediana do numero de filhos
mediana <- median(dados$ï..N.de.filhos)
mediana

#moda no numero de filhos
moda = subset(table(dados$ï..N.de.filhos),table(dados$ï..N.de.filhos)==max(table(dados$ï..N.de.filhos)))
moda

#GRÁFICOS
#mediana
png(filename='./graficos/EX03/mediana.png', width = 800, height = 500, pointsize = 16)
plot(mediana, main="Mediana nº de filhos", ylab="Nº de filhos")
dev.off()  

#moda
png(filename='./graficos/EX03/moda.png', width = 800, height = 500, pointsize = 16)
plot(moda, main="Moda nº de filhos", ylab="Nº de filhos")
dev.off() 

