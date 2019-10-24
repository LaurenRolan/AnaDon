#Suite de Fibonnacci
u = rep(1, 100)
u
for (i in seq(1,98)) {
  u[i+2] = u[i+1] + u[i]
}
plot(seq(1, 100), u)

