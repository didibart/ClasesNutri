#SPSS, Mathematica, Stata
#paquetes 
#stackoverflow
#github
#pyhton y R
# Clase 1 de R para Nutri
#directorio de trabajo - working directory
#funcion;variables: valores (nominales, ordinales, numéricas) ctrl + enter
getwd()
#asignacion de valores a variables
a <- 1
b <- 2
c <- a / b
c
#carga de vector
colorincho <- c("rojo","blanco","verde","azul")
colorincho
cantidad <- c(35,67.65,91,13.09)
cantidad
mean(cantidad)
sd(cantidad)
####leo archivo#######
#csv de texto plano cuyas columnas están separadas por "," y los renglones por enter
dfClase1Anabella <- read.csv("Nutricion/NHANES.csv",header = TRUE, sep = ",")
dfClase1Anabella
View(dfClase1Anabella)
View(dfClase1Anabella$LocationID)
dfClase1 <- read.csv("Nutricion/diet.csv",header = TRUE, sep = ",")
head(dfClase1)
View(dfClase1$DR1TFIBE)
dfClase1$DRD350K
plot(dfClase1$DR1TFIBE)
#diccionario de datos diet.csv
#####NutrienTracker############
install.packages("NutrienTrackeR")
library(NutrienTrackeR)
# USDA dataset
USDA_dataset <- food_composition_data$USDA
View(USDA_dataset)
# CIQUAL dataset
CIQUAL_dataset <- food_composition_data$CIQUAL
View(CIQUAL_dataset)
# BEDCA dataset
BEDCA_dataset <- food_composition_data$BEDCA
View(BEDCA_dataset)
# Get nutrients included in the USDA dataset
nutrients_USDA <- getNutrientNames(food_database = "USDA")
# Top 2 high-protein CIQUAL foods
subsetFoodRichIn(nutrient_name = "Fiber, total dietary (g)", food_database = "CIQUAL", n = 2)[, "food_name"]
# Top 3 high-protein BEDCA foods within 'Fruits and fruit products'
subsetFoodRichIn(nutrient_name = "Protein (g)", food_database = "BEDCA", food_group = "Fruits and fruit products", n = 3)[, "food_name"]
# Find the USDA food name 'Tomatoes, green, raw'
findFoodName(keywords = c("Tomato", "raw"), food_database = "USDA")
# Foods eaten in day 1
#dieta de ejemplo
data("sample_diet_USDA")
View(sample_diet_USDA)
write.csv(sample_diet_USDA,"Nutricion/sample_diet_USDA.csv")
##################################
# Calculate nutrient intake from example
is.list(sample_diet_USDA)
length(setdiff(sample_diet_USDA, rownames(food_composition_data$USDA)))

daily_intake <- dietBalance(my_daily_food = sample_diet_USDA[1], 
                            food_database = "USDA", age = 27, gender = "female", 
                            summary_report = TRUE)
#carga de archivo
sample_diet_1 <- read.csv("Nutricion/sample_diet_USDA.csv", header = TRUE, sep = ",") 
day1 <- list(sample_diet_1)
length(setdiff(day1, rownames(food_composition_data$USDA)))
daily_intake1 <- dietBalance(my_daily_food = day1, 
                            food_database = "USDA", age = 27, gender = "female", 
                            summary_report = TRUE)
#carga manual
midieta <- list(food = c("Cheese, feta", 
                         "Bread, Italian"),
                units = c(1,075))
length(setdiff(midieta, rownames(food_composition_data$USDA)))
dietaVal <- dietBalance(my_daily_food = midieta, 
                        food_database = "USDA", age = 27, gender = "female", 
                        summary_report = TRUE)

length(sample_diet_1)
sample_diet_1[[2]]
install.packages("RUnit")
library(RUnit)
checkTrue(is.list(daily_intake))
View(daily_intake[[2]])
#visualice 
nutrientIntakePlot(daily_intake)
daily_intake[2]

load("Nutricion/food_composition_data.rda", verbose = TRUE)
ls()
View(food_composition_data)
View(food_composition_data$USDA)
View(food_composition_data$BEDCA)
View(food_composition_data$CIQUAL)
