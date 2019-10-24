###
### Exercice 1
###

v = c(1,3,7,4,5,2)
v2 = seq(0, 1000, 5)
v3 = v2[5]
v4 = v2[c(5, 9)]
v5 = v2[5:9]
v6 = v2[seq(0, 200, 2)]

v2
v3
v4
v5
v6

v2[1] = 6
v2
v2[1:5] = 4
v2
v2[c(1,3,6)] = 11
v2
typeof(v2)

v7 = v2 >= 3
v7
v8 = all(v7)
v8
v9 = any(v7)
v9
