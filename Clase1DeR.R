# Clase 1 de R para Nutri
getwd()
#dataframe
a <- 1
b <- 2
c <- a / b
a <- 1
#nominales, ordinales, de intervalos iguales, de cocientes y razones,
#factors
color <- c("rojo","blanco","verde","azul")
color
cantidad <- c(35,67,91,13)
cantidad
mean(cantidad)
sd(cantidad)
####leo archivo#######
dfClase1 <- read.csv("Nutricion/diet.csv",header = TRUE, sep = ",")
View(dfClase1$DR1TFIBE)
dfClase1$DRD350K
plot(dfClase1$DR1TFIBE)
#diccionario de datos diet.csv