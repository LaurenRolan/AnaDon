###
### Exercices 6 et 7
###

plot(dbinom(0:20, 100, 0.01), type="h", ylab = "B(100, 0.01)", col="blue")
curve(dnorm(x, 1, sqrt(0.99)), 0, 20, ylab = "N(1, 0.99)", col = "red", add=T)

densite = dnorm(x, 0, 1)
sum(densite < -0.5)
sum(densite > 1.5)
sum(densite > -1)
sum(densite <= 1.96)
sum(densite <= 2.58)
sum(densite > 3)
