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
pt(t) ### TODO
