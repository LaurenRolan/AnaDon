w = read.table("https://chesneau.users.lmno.cnrs.fr/Etude1.txt",
               header = T)
head(w)
attach(w)
reg = lm(Y ~ X1 + X2)
summary(reg)

predict(reg, data.frame(X1 = 157, X2 = 11))
confint(reg, level = 0.99)

par(mfrow=c(1,1))
library(ellipse)
plot(ellipse(reg, c(2,3), level = 0.99), type="l")

predict(reg, data.frame(X1 = 157, X2 = 11), interval = "confidence")
plot(w)

e = residuals(reg)
plot(e)
abline(h=0, col="red")

# Indep entre epsilon et X1/2
plot(reg, 1)

# Indep entre les epsilons
par(mfrow=c(1, 2))
acf(e)
pacf(e)

#Egalite des variances
plot(reg, 3)
library(lmtest)
bptest(reg)

#Normalite des epsilons
plot(reg, 2)
shapiro.test(e)

cor(X1, X2)^2
# Le carré du coef de correlation est trop éloigné de R^2 : par Klein, il n'y a pas de lien entre X1 et X2
par(mfrow=c(1, 1))
plot(reg, 4)

AIC(reg)
BIC(reg)
