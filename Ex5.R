###
### Exercice 5
###

par(mfrow = c(1,1))
plot(dbinom(0:50, 50, 0.4), type="h", ylab = "B(50, 0.4)", col="blue")
curve(dnorm(x, 20, sqrt(12)), 0, 50, ylab = "N(20, 12)", col = "red", add=T)
