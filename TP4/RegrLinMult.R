###################
## Application 1 ##
###################
y = c(79, 84, 78, 85, 83, 85, 87, 88, 78, 
      86, 79, 85, 82, 86, 87)
x1 = c(183, 191, 183, 188, 189, 191, 187, 190, 181,
       191, 182, 190, 188, 191, 190)
x2 = c(21, 25, 28, 20, 25, 25, 19, 23, 25,
       22, 19, 24, 27, 27, 24)
library(scatterplot3d)
scatterplot3d(x1, x2, y, type="h", highlight.3d = T, 
              angle = 65, scale.y = 0.7, pch = 16)
reg = lm(y ~ x1 + x2)
reg
predict(reg, data.frame(x1 = 180, x2 = 21))

summary(reg)$adj.r.squared
X = cbind(1, x1, x2)
X
t(X)
n = 15
p = 2
b = solve(t(X) %*% X) %*% t(X) %*% y
b

###################
## Application 2 ##
###################
y = c(487, 424, 503, 468, 340, 525, 481, 444, 380, 
      574, 433, 407, 444, 506, 424)
x1 = c(82, 69, 81, 107, 44, 129, 138, 88, 98, 121,
       92, 84, 89, 83, 65)
x2 = c(147, 158, 164, 147, 135, 165, 162, 134, 142, 
       144, 132, 116, 137, 163, 155)
x3 = c(44.53, 46.44, 75.54, 55.58, 47.49, 71.21,
       85.23, 64.54, 45.17, 44.65, 44.90, 79.28,
       65.30, 77.90, 47.35)
x4 = c(42.62, 44.79, 54.57, 41.37, 50.23, 49.96,
       53.35, 47.53, 39.57, 51.89, 53.67, 55.42, 
       52.54, 54.57, 44.69)
reg = lm(y ~ x1 + x2 + x3 + x4)
summary(reg)
e = residuals(reg)
plot(e) #Homogène : l'hypothèse sur epsilon est verifiée

###################
## Application 3 ##
###################
y  = c(170, 120, 185, 195, 260, 300, 420, 430, 
       600, 780)
x1 = c(9700, 10240, 12500, 13400, 14800, 15100, 
       19000, 22000, 25100, 32300)
x2 = c(750, 800, 920, 950, 1100, 1050, 1500, 
       1410, 1850, 2400)
reg = lm(y ~ x1 + x2)
summary(reg)
