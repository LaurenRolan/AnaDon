###Applications du chapitre 4###
library(gplots)
library(lsr)
M = matrix(c(15, 5, 12, 3), ncol = 2, byrow = T)
addmargins(M)
barplot(M)
mosaicplot(M)
balloonplot(as.table(M))
cramersV(M)

##Application 1 
M = matrix(c(20, 5, 30, 45), nrow = 2)
rownames(M) = c("fumeur", "non-fumeur")
colnames(M) = c("cancer", "pas cancer")
addmargins(M)
barplot(M, xlab="", main = "Fumer et cancer du poumon",
        col = c("darkblue", "red"), beside=T)
legend("topleft", c("fumeur", "non-fumeur"), 
       col = c("darkblue", "red"), lwd = 10)

barplot(prop.table(M, 2), main = "Fumer et cancer du poumon",
        xlab = "", col = c("tan", "darkblue"), legend = c("fumeur", "non-fumeur"),
        xlim = c(0, 3.5))

mosaicplot(M, main = "Fumer et cancer du poumon", color = T)
cramersV(M)


## Application 2
M = matrix(c(12, 17, 18, 34, 25, 22), nrow = 3)
rownames(M) = c("groupe A", "groupe B", "groupe C")
colnames(M) = c("garçon", "fille")
addmargins(M)

N = as.table(M)
rownames(N) = c("groupe A", "groupe B", "groupe C")
colnames(N) = c("garçon", "fille")
balloonplot(t(N), main = "Licence de biologie", 
            xlab = "", ylab = "", show.margins = F)
cramersV(M)
