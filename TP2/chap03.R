###Applications du chapitre 3###

### Application 1
library(plotrix)
x = c(5, 7, 15, 5)
couleur = c("bleu", "vert", "marron", "noir")
colyeux = c("aquamarine", "chartreuse", "chocolate", "black")
pie(x, main="Couleur des yeux", labels = couleur)
pie3D(x, main="Couleur des yeux", explode = 0.1, labels = couleur, col = colyeux)

### Application 2
n = 200
x = c(15, 45, 25, 40, 75)
freq = x / n
porte = c("jamais", "parfois", "souvent", "très souvent", "toujours")
barplot(x, main = "Fermeture", names = porte)
