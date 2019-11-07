###
### CHAPITRE 11
###

## Application 1
x = c(6.2, 6.6, 7.1, 7.4, 7.6, 7.9, 8, 8.3, 8.4, 8.5, 
      8.6, 8.8, 8.8, 9.1, 9.2, 9.4, 9.4, 9.7, 9.9, 10.2,
      10.4, 10.8, 11.3, 11.9)
mean(x); var(x)
qqnorm(x); qqline(x)
t.test(x, conf.level = 0.95)$conf.int
library(OneTwoSamples)
interval_var1(x, alpha = 0.05)[c(3, 4)]

## Application 2
x = c(54.40, 57.26, 51.53, 55.84, 53.56, 58.44, 54.92, 
      55.65, 52.53, 50.90, 58.93, 56.30, 57.87, 55.14,
      56.31, 55.09, 58.02, 56.20, 57.49, 54.89)
t.test(x, conf.level = 0.99)$conf.int

## Application 3
x = c(0.499, 0.509, 0.501, 0.494, 0.498, 0.497, 0.504, 
      0.506, 0.502, 0.496)
qqnorm(x); qqline(x)
t.test(x, conf.level = 0.95)
interval_var1(x, alpha = 0.01)
