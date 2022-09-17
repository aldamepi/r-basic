


# 1
str(birthwt)
head(birthwt)
help("birthwt")

bw=read.table("../../data/birthwt")

#2
table(birthwt$race, birthwt$low)

raza = factor(birthwt$race, labels = c("blanca", "negra", "otra"))
raza
bajo = factor(birthwt$low, labels = c("no","si"))
bajo
table(raza,bajo)
100*round(prop.table(t(table(raza,bajo)), margin = 1),3)
100*round(prop.table(table(raza,bajo), margin = 1),3)

sprintf ("La raza %s tiene un riesgo asociado de bajo peso natal de %.1f%%", 
         levels(raza)[2],
         100*round(prop.table(table(raza,bajo),margin=1)["negra","si"],3)
         )
sprintf("La raza %s tiene un riesgo asociado de bajo peso natal de %.1f%%", 
        levels(raza)[3],
        100*round(prop.table(table(raza,bajo),margin=1)["otra","si"],3)
)

#3
plot(table(raza,bajo), main ="Riesgo asociado de bajo peso natal",
     sub = "raza vs bajo peso natal", ylab = "bajo peso natal",
     col = c("palegreen", "orangered2")
     )

#4
barplot(prop.table(table(raza,bajo),margin = 1),beside = T, ylim = c(0,0.8), legend = T,
        col = c("oldlace","black","chocolate"),
        main = "Riesgo de Bajo Peso Natal", sub = "Raza Vs Bajo Peso Natal",
        ylab = "frecuencias relativas", xlab = "bajo peso natal"
        )

#5


#6
table(birthwt$smoke, birthwt$low)

fuma = factor(birthwt$smoke, labels = c("no","si"))
fuma

plot(table(fuma,bajo))
100*round(prop.table(table(fuma,bajo), margin = 1),3)

sprintf ("La madre que %s fuma tiene un riesgo asociado de bajo peso natal de %.1f%%", 
         levels(fuma)[2],
         100*round(prop.table(table(fuma,bajo),margin=1)["si","si"],3)
)

plot(table(fuma,bajo), main ="Riesgo asociado de bajo peso natal",
     sub = "madre fumadora vs bajo peso natal", ylab = "bajo peso natal",
     xlab = "madre fumadora",
     col = c("palegreen", "orangered2")
)

barplot(prop.table(table(fuma,bajo),margin = 1),beside = T, ylim = c(0,0.8),
        col = c("oldlace","chocolate"),
        main = "Riesgo de Bajo Peso Natal", sub = "Madre Fumadora Vs Bajo Peso Natal",
        ylab = "frecuencias relativas", xlab = "bajo peso natal",
        legend.text = c("no fuma","madre fumadora"), names.arg = c("peso normal","peso bajo")
)

hipertensa = factor(birthwt$ht, labels = c("no","si"))
hipertensa

plot(table(hipertensa,bajo))
100*round(prop.table(table(hipertensa,bajo), margin = 1),3)

sprintf ("La madre que %s es hipertensa tiene un riesgo asociado de bajo peso natal de %.1f%%", 
         levels(hipertensa)[2],
         100*round(prop.table(table(hipertensa,bajo),margin=1)["si","si"],3)
)

plot(table(hipertensa,bajo), main ="Riesgo asociado de bajo peso natal",
     sub = "madre hipertensa vs bajo peso natal", ylab = "bajo peso natal",
     xlab = "madre hipertensa",
     col = c("palegreen", "orangered2")
)

barplot(prop.table(table(hipertensa,bajo),margin = 1),beside = T, ylim = c(0,0.8),
        col = c("lightblue","maroon3"),
        main = "Riesgo de Bajo Peso Natal", sub = "Madre Hipertensa Vs Bajo Peso Natal",
        ylab = "frecuencias relativas", xlab = "bajo peso natal",
        legend.text = c("no","madre hipertensa"), names.arg = c("peso normal","peso bajo"),
        border = NA
)

#7
table(raza,fuma,bajo)
#
100*round(ftable(prop.table(table(raza,fuma,bajo),margin = c(1,2))),3)

#8
#No me carga la libreria kableExtra::
  
plot(table(raza,bajo), main ="Riesgo asociado de bajo peso natal",
       sub = "raza vs bajo peso natal", ylab = "bajo peso natal",
       col = c("palegreen", "orangered2")
  )
plot(table(fuma,bajo), main ="Riesgo asociado de bajo peso natal",
     sub = "madre fumadora vs bajo peso natal", ylab = "bajo peso natal",
     xlab = "madre fumadora",
     col = c("palegreen", "orangered2"))


