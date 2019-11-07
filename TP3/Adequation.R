##################
### Exercice 1 ###
##################
de = c(rep(1, 12), rep(2, 11), rep(3, 7), rep(4, 8), rep(5, 9), rep(6, 11))
hist(de); boxplot(x)
if (shapiro.test(de)$p.value > 0.05) { ###TODO trouver une autre méthode
  print("On admet l'hypothèse de normalité")
} else {
  print("Le dé est truqué")
}

##################
### Exercice 2 ###
##################
nombres = c(rep(0, 117), rep(1, 90), rep(2, 115), rep(3, 103), rep(4, 93), rep(5, 110),
            rep(6, 92), rep(7, 104), rep(8, 96), rep(9, 80))
hist(nombres)
if(shapiro.test(nombres)$p.value > 0.05) { ###TODO trouver une autre méthode
  print("On admet l'hypothèse de normalité")
} else {
  print("Les chiffres ne sont pas équipartis")
}

##################
### Exercice 3 ###
##################
filles = c(rep(0, 21), rep(1, 59), rep(2, 64), rep(3, 26))
hist(filles)

##################
### Exercice 4 ###
##################
x = c(25, 32, 23, 30, 24, 36, 26, 29, 22, 28, 37, 31, 33, 28,
      28, 34, 30, 33, 27, 31, 39, 28, 34, 32, 31, 28, 30, 37)
if (shapiro.test(x)$p.value > 0.05)
  print("On admet l'hypothèse de normalité")

##################
### Exercice 5 ###
##################
x = c(25, 32, 23, 30, 24, 36, 26, 29, 22, 28, 37, 31, 33, 28)
if (shapiro.test(x)$p.value > 0.05)
  print("On admet l'hypothèse de normalité")

##################
### Exercice 6 ###
##################
x = c(44, 62, 71, 73, 87, 44, 60, 73, 77, 90)
y = c(40, 57, 59, 65, 77, 39, 55, 63, 68, 78)
plot(x, y)
library(energy)
if(mvnorm.etest(cbind(x, y), R=199)$p.value > 0.05)
  print("On admet une normale multivarié")
