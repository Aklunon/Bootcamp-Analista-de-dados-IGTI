getwd();

# Importar (ler) os dados do arquivo CSV de valores separados por virgulas
iris <- read.csv(paste(getwd(),"/Datasets/Iris.csv",sep=""));

# Imprimir as 6 primeiras linhas do vetor iris 
head (iris);

# Imprimir as 3 primeiras linhas do vetor iris 
head (iris, 3);

# Imprimir todas as linhas do vetor iris
print(iris);

#Resumo das estat?sticas descritivas: a observa??o m?nima, 1a quartil (25%), 
# mediana (50%), media aritm?tica, 3a quartil (75%) e a m?xima s?o 
#exibidos para cada amostra.
summary(iris);

#help(plot)

# Boxplot mostrando a mediana (linha horizontal, quartis 25 % e 75 % (caixa verde - col=3) e observa??es m?xima e
#m?nima (linhas verticais) ? ylab e xlab s?o as etiquetas dos eixos y e x, respectivamente.
boxplot(iris, col=3, ylab="Valores(cm)", xlab="Caracter?stica")

#Usa range=0 para n?o mostrar os outliers (observa??es extremas representadas como pontos)
boxplot(iris, range=0, col=2, ylab="Valores(cm)", xlab="Caracter?stica")

#Mostrar todas as observa??es cruas da amostra A na forma de gr?fico barplot. Anote y$A significa a
#coluna A de observa??es no arranjo de dados y - Figura 3
barplot(iris$ComprimentoSepalaCM,ylab="Valores em cm", xlab="Valores crus",
        names=as.character(iris$ComprimentoSepalaCM),cex.names=0.7, ylim=c(0,10));

#Para mostrar um histograma de freq??ncias das observa??es em amostra A (mais informativo sobre a
#distribui??o das observa??es do que gr?fico anterior!) - Figura 4
hist(iris$ComprimentoSepalaCM, col=2, main="Histograma de amostra A", xlab="Classe de
massa (g)", ylab="Freq??ncia");

#Podemos variar o n?mero de intervalos com breaks e os limites do eixo x com xlim. Reparou as
#diferen?as entre os dois histogramas? Lembre, s?o os mesmos dados - Figura 5
hist(iris$ComprimentoSepalaCM, breaks=2, xlim=(range(1,10)), col=2,
       main="Histograma de amostra A", xlab="Classe de massa (g)",ylab="Freq??ncia");

#Algumas estat?sticas ?teis:
# Desvio padr?o (s) da amostra A => sd(x)
# vari?ncia (s2) da amostra A => var(x)
# Tamanho da amostra - n, o n?mero de observa??es da amostra A => length(iris$ComprimentoSepalaCM)
# Desvio interquart?lico (a diferen?a entre a 3a e a 1a quartil) da amostra A => IQR(iris$ComprimentoSepalaCM)
#Erro padr?o da m?dia da amostra A => sd(y$A)/sqrt(length(y$A))

cabecalho <- c("M?dia","Desvio padr?o","vari?ncia","Tamanho da amostra","Desvio interquart?lico","Erro padr?o da m?dia")
valores <- c(mean(iris$ComprimentoSepalaCM),sd(iris$ComprimentoSepalaCM), var(iris$ComprimentoSepalaCM),length(iris$ComprimentoSepalaCM),
             IQR(iris$ComprimentoSepalaCM),(sd(iris$ComprimentoSepalaCM)/sqrt(length(iris$ComprimentoSepalaCM))))

print(cabecalho);
print(valores);
print(rbind(cabecalho,valores));
print(cbind(cabecalho,valores));