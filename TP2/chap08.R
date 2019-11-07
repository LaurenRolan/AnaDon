###Applications du chapitre 8###

##Application 1
dbinom(2, 5, 0.6)
pbinom(4, 5, 0.6)
sum(dbinom(0:4, 5, 0.6))
plot(pbinom(0:5, 5, 0.6), type="s")
qbinom(0.25, 5, 0.6)
rbinom(20, 5, 0.6)
x = rbinom(200, 5, 0.6)
table(x)

par(mfrow = c(1, 2))
pie(table(x))
barplot(table(x))
par(mfrow = c(1,1))

par(mfrow = c(1, 2))
curve(dnorm, -5, 5, col="red")
curve(pnorm, -5, 5, col="blue")
par(mfrow = c(1,1))

x = rnorm(200)
hist(x, prob = T, main = "")
