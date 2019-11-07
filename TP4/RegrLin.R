###################
## Application 1 ##
###################
x = c(3, 4, 4, 17, 24, 45, 55, 68, 73)
y = c(0.9, 1.3, 1.0, 2.4, 2.8, 4.4, 5.2, 6.3, 6.6)

par(mfrow = c(3, 1))
#Méthode des points observés
b = (y[2] - y[5]) / (x[2] - x[5])
a = y[5] - b * x[5]
a; b
plot(x, y)
abline(a, b, col="red")

#Méthode des points moyens
ybar1 = mean(y[1:5])
ybar2 = mean(y[6:9])
xbar1 = mean(x[1:5])
xbar2 = mean(x[6:9])
b = (ybar2 - ybar1) / (xbar2 - xbar1)
a = ybar1 - b * xbar1
a; b
plot(x, y)
abline(a, b, col="blue")

#Méthode des moindres carrés
reg = lm(y ~ x)
reg$coefficients
plot(x, y)
abline(reg, col="green")

###################
## Application 2 ##
###################
par(mfrow = c(1,1))
x = c(420, 380, 350, 400, 440, 380, 450, 420)
y = c(5.5, 6.0, 6.5, 6.0, 5.0, 6.5, 4.5, 5.0)
plot(x, y)
reg = lm(y ~ x)
reg$coefficients
abline(reg, col="red")
predict(reg, data.frame(x=450))
cor(x, y)
library(energy)
mvnorm.etest(cbind(x, y), R=199)$p.value
cor.test(x, y)$p.value #Hqutement significatif

###################
## Application 3 ##
###################
x = c(10, 14, 7, 8, 11, 12.5, 14, 12)
y = c(9.5, 12.5, 6, 9.5, 12, 14, 16, 13.5)
plot(x, y)
reg = lm(y ~ x)
reg$coefficients
plot(x, y)
abline(reg, col="blue")
mvnorm.etest(cbind(x, y), R = 199)$p.value
cor.test(x, y)$p.value # Très significatif
summary(reg)$coefficient[,4][2]
confint(reg, level = 0.95)[2,]
predict(reg, data.frame(x=15), level=0.95, interval = "confidence")
