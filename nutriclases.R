getwd()
enghoGastosCant85 <- read.csv("ArticuloMadridAbril2020/bases_datos_engho1985/E8586_cant.txt", header = TRUE, sep = "|", stringsAsFactors = FALSE, encoding = "UTF-8")
#DR1TKCAL, DR2IGRMS peso en gramos del componente individual
View(enghoGastosCant85)
plot(enghoGastosCant85$NCNTDD,col=c("black"),pch=1)
mode(enghoGastosCant85$NCNTDD)
median(enghoGastosCant85$NCNTDD)
sd(enghoGastosCant85$NCNTDD)
mean(enghoGastosCant85$NCNTDD)
quantile(enghoGastosCant85$NCNTDD)
#ANOVA
aov1 <- aov(dfNHANES$DR2IGRMS ~ dfNHANES$DR1TKCAL, data=dfNHANES)
#cálculos simples
a <- c(2,3)
b <- c(3,2)
d <- a + b
a1 <- 2
b1 <- 3
d1 <- a1 + b1
#funciones
pepe <- function(x1){
  return(x1 + 2)
}
pepe(3)

