

library(gmodels)
for (i in cual.col) {
  CrossTable(dc[,"satell"], dc[,i], prop.chisq = FALSE)
}

CrossTable(dc$spine)

apply(dc[,cual.col],)

table(dc[,cual.col])
  prop.table(table(dc[,x]))
}

table(dc[,"color"])
prop.table(table(dc[,"color"]))



m = matrix(ncol = 2)
for (i in cual.col) {
  for (j in cual.col) {
    if (i != j & j != "satell") {
      if (i %in% m[,2] & j %in% m[,1]){
        next
      }else{
        m = rbind(m,c(i,j))
        plot(table(dc[,i],dc[,j]), xlab = i, ylab = j,
             main = paste(j, "vs",i), col = c("lightblue","lightpink"))
      }
    }
  }
}


c("color","spine") %in% m # TRUE TRUE
matrix(c("color","spine"), ncol = 2) %in% m # TRUE TRUE
c("color","spine") %in% m
"spine" %in% m[,2] & "color" %in% m[,1]
"i" %in% m[,2] & "j" %in% m[,1]


for (i in cual.col) {
  for (j in cual.col) {
    if (i != j & c(j,i) !%in% m) {
      m = rbind(m,c(i,j))
        plot(table(dc[,i],dc[,j]), xlab = i, ylab = j,
             main = paste(j, "vs",i), col = c("lightblue","lightpink"))
    }
  }
}

dc[,"spine"][dc[,"weight"]==max(dc$weight)]

quantile()


aggregate(nota~estudio, data = data, FUN = summary)


  
  

