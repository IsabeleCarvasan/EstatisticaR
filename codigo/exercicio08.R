dados <- read.csv("/home/isabelecarvasan/Desktop/EstatisticaR-master/dados/exercicio8.csv", sep=";", dec=",",header=TRUE);

#A) sem intervalo de classe

#frequencia absoluta
freq <- table(dados$ï..Altura.dos.pacientes);
freq

#frequencia relativa em percentual
p_freq_rel <- 100* prop.table(freq)
p_freq_rel

#adiciona linhas de total 
freq <- c(freq, sum(freq))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))
names(freq)[31] <- "Total"

#tabela final 
frequencia <- cbind(freq, p_freq_rel)
frequencia

#GRÁFICOS
#frequencia absoluta
png(filename='./graficos/EX08/histograma.png', width = 800, height = 500, pointsize = 16)
hist(dados$ï..Altura.dos.pacientes, xlab = "Altura", ylab = "Frequência", main="Altura dos pacientes")
dev.off()

