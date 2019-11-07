###
### Chapitre 21
###

## Application 1
x = c(186.29, 167.81, 180.55, 185.37, 178.80, 167.96, 196.36, 176.38,
      163.40, 170.06, 179.56, 176.16, 162.52, 179.20, 182.63, 172.56)
shapiro.test(x)$p.value
qqnorm(x); qqline(x)

## Application 2
x = c(2.36, 2.48, 2.57, 2.53, 2.45, 2.53, 2.44, 2.18, 2.40, 2.59)
shapiro.test(x)$p.value
qqnorm(x); qqline(x)
