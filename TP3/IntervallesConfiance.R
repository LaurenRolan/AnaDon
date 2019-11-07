##################
### Exercice 1 ###
##################

jeu1 = c(14.6, 13.4, 13.8, 12.9, 12.3, 10.7, 12.9, 16.7, 
         13.4, 10.4, 14.4, 11.3)
jeu2 = c(0.32, 1.02, 0.89, 0.24, 0.18, 0.51, 0.14, 1.86, 
         0.12, 0.26)
jeu3 = c(1, 2, 2, 3, 6, 1, 1, 2, 3, 2, 1, 2)

par(mfrow = c(1, 3))
qqnorm(jeu1); qqline(jeu1)
qqnorm(jeu2); qqline(jeu2)
qqnorm(jeu3); qqline(jeu3)

## Parmi ceux-ci : hypothèse de normalité ?
## Seulement le jeu1

##################
### Exercice 2 ###
##################
anonces = c(26, 33, 23, 30, 24, 36, 27, 29, 22, 28, 37, 31, 34, 28, 31,
            28, 35, 30, 33, 27, 32, 39, 28, 33, 32, 28, 31, 30, 11, 37)
par(mfrow = c(1, 2))
hist(anonces)
qqnorm(anonces); qqline(anonces)
mean(anonces); sd(anonces)
t.test(anonces, conf.level = 0.95)$conf.int
interval_var1(x, alpha = 0.05)[c(3,4)]

##################
### Exercice 3 ###
##################
x = c(rep(1612.5, 6), rep(1617.5, 9), rep(1622.5, 46), rep(1627.5, 78), rep(1632.5, 21))
mean(x); sd(x)
t.test(x, conf.level = 0.95)$conf.int
