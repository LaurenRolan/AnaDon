#######################
#Exercice 3
y0 = seq(0, 10, by=2)
y0
y1 = seq(2, 18, 2)
y1
y2 = rep(4, 20)
y2
y3 = seq(0, 9.5, 0.5)
y3

#Extraction y3
y3[3]
y3[-3]

#Comparaison
matrix(y3, nrow=2)
matrix(y3, byrow=TRUE)

#Matrices
A = matrix(seq(1:12), nrow=4, byrow=TRUE)
B = matrix(seq(1:12), nrow=4)

#Extraction matrices
A[2,3]
A[,1]
A[2,]

#Nouvelle matrice
C = matrix(data = A[c(1, 4),], nrow=2)
C

mat99 = matrix(data = 1, nrow = 9, ncol = 9)
mat99
diag(mat99) <- 0
mat99

#Exercice 5
x = seq(0, 1, 0.1)
x
length(x)
y <- 4 * x * (1 - x)
y
plot(x, y)
max(y)
y == 1
fx <- 4 * x * x * (1 - x)
plot(x, fx, col="red")

#Exercice 6
ncartes = 32 / 4
ncartes
anagrammes = factorial(9)
anagrammes
nchances = choose(49, 5) * choose(10, 2)
nchances = 1 / nchances
nchances
jeudomino = 10 + 10 * 9 / 2
jeudomino

