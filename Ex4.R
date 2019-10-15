###
### Exercice 4
###

par(mfrow = c(1,3))
curve(dnorm(x, 4, 1), 0, 10, type = "h", ylim=c(0, 0.45), col = "blue")
curve(dnorm(x, 5, 1), 0, 10, col = "red", ylim=c(0, 0.15),add=T)

curve(dnorm(x, 4, 2), -10, 20, type = "h", ylim=c(0, 0.45), col = "red")
curve(dnorm(x, 4, 1), -10, 20, col = "blue", ylim=c(0, 0.45), add=T)

curve(dnorm(x, 5, 2), -10, 20, type = "h", ylim=c(0, 0.45), col = "red")
curve(dnorm(x, 4, 1), -10, 20, col = "blue", ylim=c(0, 0.45), add=T)
