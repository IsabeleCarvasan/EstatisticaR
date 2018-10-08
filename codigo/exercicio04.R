dados <- read.csv("/home/isabelecarvasan/Desktop/EstatisticaR-master/dados/exercicio4.csv", sep=";", dec=",",header=TRUE)


#frequencia absoluta
freq <- table(dados$ï..SalÃ.rios);
freq
#frequencia relativa em percentual
p_freq_rel <- 100* prop.table(freq)
p_freq_rel

#adiciona linhas de total 
freq <- c(freq, sum(freq))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))
names(freq)[21] <- "Total"

#tabela final 
frequencia <- cbind(freq, p_freq_rel)
frequencia

#histograma - GRÁFICOS
#frequencia absoluta
png(filename='./graficos/EX04/histograma.png', width = 800, height = 500, pointsize = 16)
hist(dados$ï..SalÃ.rios, xlab = "Salários", ylab = "Frequência")
dev.off()
