###Applications du chapitre 5###
x = c(10, 2, 25, 6, 7, 13, 10, 23)
x
mean(x)
var(x)
sd(x)
quantile(x, 0.25)
quantile(x, 0.5)
quantile(x)
stripchart(x)
dotchart(x)
stem(x)
hist(x)
boxplot(x)

### Application 1
x = c(117, 68, 92, 78, 61, 62, 63, 71, 77, 108, 116, 37,
      65, 78, 56, 68, 58, 95, 102, 52, 86, 81, 61, 65, 
      126, 69, 59, 81, 54, 65, 77, 91, 62, 71, 62, 52, 
      103, 91, 67, 105, 100, 47, 63, 71, 76, 88, 73, 75, 
      101, 102, 96, 61, 63, 105, 66, 79, 81, 85, 64, 66)
summary(x)
stripchart(x, main = "Pizzas")
stem(x)
hist(x, main = "Pizzas", col = 2)
boxplot(x, main = "Pizzas", col = "gray")
plot.ecdf(x, ylab="", xlab="", main="Fonction de répartition des données", verticals=T, do.points=F)

###Application 2 
x = c(7, 7, rep(8, 5), rep(9, 4), rep(10, 10), rep(11, 6),
      rep(12, 3), 13, 13, 14)
mean(x); var(x); sd(x)
boxplot(x, main = "Notes biologie")

##Application 3
classes = c(0, 85, 100, 115, 150)
centres = (classes[1:length(classes) - 1] + classes[2:length(classes)]) / 2
centres
effectifs = c(148, 360, 444, 48)
x = c(rep(centres, effectifs))
mean(x); var(x); sd(x)
hist(x, classes, main = "Test intelligence", col = "lightblue")
