w = read.table("https://chesneau.users.lmno.cnrs.fr/Etude0.txt",
               header = T)
head(w)
str(w)
attach(w)
plot(X1, Y)

reg = lm(Y ~ X1)
summary(reg)
predict(reg, data.frame(X1 = 8))
confint(reg, level = 0.95)
confint(reg, level = 0.1)

library(ellipse)
plot(ellipse(reg, c(1, 2), level = 0.95), type = "l")
predict(reg, data.frame(X1 = 8), interval = "confidence")

plot(X1, Y)
abline(reg, col="red")

#Calcul des résidus
e = residuals(reg)
plot(e)
abline(h=0, col="red")

# Pas de courbe souple : epsilon et X1 sont indep
plot(reg, 1)

par(mfrow = c(1,2))
acf(e)
pacf(e)

par(mfrow = c(1,1))
plot(reg, 3)
library(lmtest)
bptest(reg)

#Analyse de la normalité
plot(reg, 2)
shapiro.test(e)

#Analyse des valeurs anormales
plot(reg, 4)
AIC(reg)
BIC(reg)


#########
# ANOVA #
#########
w = data.frame(matrix(c(14.7, 15.2, 16.3, 17.1, 19.1, 17.6, 19.9, 23.1,
                        22.5, 21.4, 22.4, 25.1, 27.0, 28.1, 30.3, rep(1:3, each=5)), 
                      ncol = 2, byrow = F))
colnames(w) = c("Y", "X1")
w$X1 = as.factor(w$X1)
attach(w)
boxplot(Y ~ X1)
mod = aov(Y ~ X1)
summary(mod)
e = residuals(mod)
plot(e)

par(mfrow=c(1, 2))
acf(e)
pacf(e)
shapiro.test(e)
bartlett.test(e, X1)
TukeyHSD(mod)
