

## TAREA TEMA 1

# EJERCICIO UNO
# DATOS: 250 millones de segundo. Empiezan a contar al inicio de 2018.
# ¿Cuando acaban? Ojo a los bisiestos.

# Un minuto tiene 60 s. Voy a definir una variable llamada total segundos:

ts <- 250e6
ts

# Ahora necesito calcular el total de minutos que hay y los segundos que sobran en ts:

tm<- ts%/%60
tm
rs<- ts%%60
rs
#sobran 40 segundos

# Ahora necesito calcular el total de horas que hay y los minutos que sobran en tm:

th<- tm%/%60
th
rm<- tm%%60
rm
#sobran 26 minutos

# Un día tiene 24 h. ¿Cuanto días hay y cuantas horas sobran, th, rh?

td <- th %/% 24
td
rh <- th%%24
rh
#sobran 12 horas

# Un año normal tiene 365 días. Cada cuatro años hay 365*4+1 días.
365*4+1
#1461 días cada cuatro años

ta <- td%/%365
ta

# cada 4 años hay que añadir un día a los años... O quitarselo al resto. 
#Teniendo en cuenta que en siete años solo hay una año  bisiesto, se le resta uno al resto.


rd <- (td%%365) -1
rd
#sobran 337 días descontando el año bisiestos

año <- 2018+ta
año
# El año 2025 no es divisible por 4 así que no es bisiesto.
365-rd
#Quedan 28 días para terminar el año
365-rd-31
#El día 3 de diciembre se termina completamente.
#Yo diría que el día 4 de diciembre del año 2025 a las 12:26:40 llegaríamos a los 250 millones de segundos contando desde el inicio del 2018



##EJERCICIO DOS
# ax+b=c; x=(c-b)/a
fun2=function(a,b,c){
  (c-b)/a
}
fun2(5,3,0)
#x=-0,6
fun2(7,4,18)
#x=2
fun2(1,1,1)
#x=0



##EJERCICIO TRES
#
y <- 3*exp(1)-pi
round(y,3)
#5,013
#
m <- Mod((2+3i)^2/(5+8i))
round(m,3)
#1,378