v <- 5
v
c <- 6
s <- c + v
s

class(c)


vector <- c("a", "b", "c")
class(v)
v <- c("a", "b", "c")
class(v)
v[2]


v <- c(1:10)
v[3:8]
653.02/3

uso_coche_sema <- c(2,3,4,5,3,1,0)


uso_coche_sema


names(uso_coche_sema) <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo")

uso_coche_sema["Lunes"]
mean(uso_coche_sema)

mean(uso_coche_sema, na.rm = TRUE)

uso_coche_sema > 2#dias q uso mas de 2 veces el coche

uso_coche_sema > mean(uso_coche_sema, na.rm = TRUE)

uso_excesivo <- uso_coche_sema > 2

uso_coche_sema[uso_excesivo]

aparcamiento <- c(rep(1, 7))#repiteme el numero 1, 7 veces
aparcamiento

uso_coche_sema + aparcamiento

uso_coche_sema



#Matrices

uso_bici <- c(0,1,0,1,2,4,6)
uso_bici


matriz_movilidad <- matrix(c(uso_coche_sema, uso_bici), byrow=TRUE, nrow= 2)

matriz_movilidad

matriz_movilidad[ ,2]


rownames(matriz_movilidad) <- c("coche", "bici")

matriz_movilidad
colnames(matriz_movilidad) <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo")

matriz_movilidad

matriz_movilidad["coche", "Miercoles"]


#Factores

tallas <- c("grande", "pequeño", "mediano", "grande", "pequeño")

tallas_factor <- factor(tallas)#r interpreta que es un vector de elementos, y de estos elementos solo hay 3 tipos, pequeño, mediano y grande
tallas_factor[1]
tallas_factor[2]

tallas_factor[1] > tallas_factor[2]#esto para r no tiene sentido

# pero para este tipo de casos podemos hacer:
tallas_factor_ordenado <- factor(tallas, ordered=TRUE, levels = c("pequeño", "mediano", "grande"))
#ahora hemos creado un orden factor, distinto de un factor normal como el anterior
tallas_factor_ordenado


#si volvemos ha hacer:
tallas_factor_ordenado[1] > tallas_factor_ordenado[2]

#Dataframes
dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo")

movilidad_df <- data.frame(dias, uso_coche_sema)


str(movilidad_df)
summary((movilidad_df))

uso_bici <- c(0,1,0,1,2,4,6)
movilidad_extra_df <- data.frame(movilidad_df, uso_bici)
movilidad_extra_df


head(movilidad_extra_df, 2)
tail(movilidad_extra_df, 1)


movilidad_extra_df[,1]
movilidad_extra_df$dias
movilidad_extra_df$dias[3]


movilidad_extra_df$uso_coche_sema[uso_excesivo]

subset(movilidad_extra_df, subset=uso_coche_sema>2)


x <- 6

if (x %% 2 == 0){
  print("par")
}else{
  print("impar")
}

t <- "XL"
if (t=="L") {
  print("large")
} else if (t == "M") {
  print("medium")
} else {
  print("other")
}


i<- 0
while(i < 10){
  print(i)
  i<-i+1
}

dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo")

for (dia in dias) {
  print(dia)
}  

for (i in 1:length(dias)) {
  print(i)
} 

for (i in 1:length(dias)) {
  print(paste("El dia" ,i, "de la semana es", dias[i]))
}


#Funciones y paquetes

search()
install.packages("stringr")


s <- c("Roberto", "Manzano", "lopez")

str_subset(s, "R")
#el paquete aun no lo podemos usar, solo lo hemos descargado, tenemos que pasarselo a nuestra sesion para poder usarlo

library(stringr)

str_subset(s, "R")




fecha_s <- "01 Enero, 2022"
class(fecha_s)


fecha <- as.Date(fecha_s, "%d %B, %Y")

fecha_s_iso <- "2022-01-01"
fecha_iso <- as.Date(fecha_s_iso)


hoy <- as.Date(Sys.Date())
hoy -fecha


