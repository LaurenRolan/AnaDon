###Applications du chapitre 6###

##Application 1
x = c(12, 20, 15, 23, 8, 30)
y = c(26, 47, 24, 54, 5, 81)
plot(x, y, main = "Nuage de points")
r = cor(x, y)
r; r^2

##Application 2
x = c(157, 170, 172, 164, 177, 171, 165)
y = c(472, 478, 484, 473, 495, 480, 476)
plot(x, y)
r = cor(x, y)
r; r^2

##Application 3
x = c(0, 1, 2, 3, 4, 5)
y = c(3000, 2400, 1920, 1536, 1229, 983)
plot(x, y)
r = cor(x, y)
r; r^2

rs = cor(x, y, method = "spearman")
rs; rs^2
