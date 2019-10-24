###Applications du chapitre 7###

##Application 1
x = c(173, 177, 170, 177, 184, 179, 171, 
      180, 175, 177, 190, 162, 164, 169,
      180, 178, 168, 169, 161, 174, 170,
      157, 160, 172, 177, 163, 172, 153,
      174, 162)
summary(x)

y = c(rep("H", 15), rep("F", 15))
y
summary(x[y=="H"])
summary(x[y=="F"])
par(mfrow = c(2,1))
hist(x[y=="H"], xlab="", main = "Histogramme de X quand Y = H",
     xlim = c(150, 190), col = "lightblue")
hist(x[y=="F"], xlab="", main = "Histogramme de X quand Y = F",
     xlim = c(150, 190), col = "lightpink")
par(mfrow = c(1,1))
boxplot(x ~ y, main = "Boîtes à moustaches", col = c("lightpink", "lightblue"))

library(gplots)
plotmeans(x ~ y, xlab="", ylab="", main = "Diagramme des moyennes",
          barcol = "blue", col = "red")

## Application 2
x = c(28, 34, 32, 29, 31, 37, 36, 33, 35, 36, 32, 25, 33, 29, 27,
      32, 31, 24, 32, 32, 32, 37, 33, 29)
summary(x)
y = c("m1", "m3", "m2", "m2", "m2", "m3", "m3", "m2", "m2", "m3", "m2",
      "m1", "m2", "m1", "m1", "m2", "m2", "m1", "m2", "m2", "m3", "m3",
      "m2", "m2")
mean(x[y=="m1"]); mean(x[y=="m2"]); mean(x[y=="m3"])
sd(x[y=="m1"]); sd(x[y=="m2"]); sd(x[y=="m3"])
plotmeans(x ~ y, xlab = "", ylab = "", main = "Diagramme des moyennes",
          barcol = "blue", col = "red")
boxplot(x ~ y, main = "Boîtes à moustaches", col = heat.colors(3))
