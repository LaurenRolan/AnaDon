##################
### Exercice 1 ###
##################
billes = c(24.72, 24.94, 25.03, 25.17, 25.28, 25.12, 25.15, 25.28, 25.67, 25.46,
           24.84, 24.99, 25.15, 25.07, 25.61, 25.11, 25.25, 25.36, 25.46, 25.51)
if(shapiro.test(billes)$p.value > 0.05 && t.test(billes, mu = 25.21)$p.value > 0.05) {
  print("Hypothèse valide")
} else {
  print("Hypothèse pas valide")
}

##################
### Exercice 2 ###
##################
bouteilles = c(75.15, 74.32, 74.96, 73.64, 74.41, 75.22, 73.78, 74.56, 74.82, 74.12, 74.92, 75.34)
if(shapiro.test(bouteilles)$p.value > 0.05 && t.test(bouteilles, mu = 75)$p.value > 0.05) {
  print("Hypothèse valide")
} else {
  print("Hypothèse pas valide")
}

##################
### Exercice 3 ###
##################
x = 2.65
s = 0.35
n = 100

t = sqrt(n) * ((x - 2.5)/s)
if(pt(t, df=99) > 0.05) {
  print("Le médicament suive les spécifications")
} else {
  print("Le médicament ne suive pas les spécifications")
}

##################
### Exercice 4 ###
##################
a = c(48.12, 48.24, 50.41, 53.59, 54.62, 56.38, 57.77, 58.65, 60.52)
b = c(44.27, 46.31, 48.29, 48.47, 50.58, 51.23, 55.44)
mean_b = mean(b)
mean_b[1]
if(t.test(a, mu=mean_b, alternative = "greater") > 0.05) {
  print("La région A produit plus que B")
}
