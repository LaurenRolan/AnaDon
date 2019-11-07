###
### Exercices 1, 2 et 3
###

#Poisson avec lambda = 1
plot(0:8, dpois(0:8, 1), type="h", ylab="P(1)")

#ChiSquare
plot(0:10, dchisq(0:10, 3), type="h", ylab="ChiSq(3)")

#Deux fenetres
plot(dbinom(0:50, 50, 0.08), type="h", ylim=c(0, 0.25), ylab = "B(50, 0.08)")
plot(0:50, dpois(0:50, 4), type="h", ylim=c(0, 0.25), ylab = "P(4)")
par(mfrow = c(2,1))

