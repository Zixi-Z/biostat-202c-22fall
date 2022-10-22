library(latex2exp)
#y_1 = 3,n = 1, a = 0.5, b = 3
a = 0.5
b = 3
ysum = 3
n = 1
x <- (1:1000)/100
y1 <- dgamma(x = x, a+ysum, b+n)
y2 <- dnorm(x = x, (a+ysum)/(b+n),sqrt((a+ysum)/(b+n)^2))
y3 <- dnorm(x = x, (a+ysum-1)/(b+n),sqrt((a+ysum-1)/(b+n)^2))
plot(x, y1, type = 'l',main = TeX(r'($y_1 =3,n = 1, a = 0.5, b = 3$)'),
     xlab = TeX(r'($\lambda$)'),ylab = "Probability",ylim= c(0,1.0), col = 1)
lines(x, y2, type = 'l', col = 2)
lines(x, y3, type = 'l', col = 3)
legend("topright",
       legend = c('gamma', 'normal approximation using mean','normal approximation using mode'), 
       col = c(1:3),
       lty = 1, cex = 0.8)

#y_1 =3,n = 1, a = 34, b = 5
a = 34
b = 5
ysum = 3
n = 1
x <- (1:1000)/100
y1 <- dgamma(x = x, a+ysum, b+n)
y2 <- dnorm(x = x, (a+ysum)/(b+n),sqrt((a+ysum)/(b+n)^2))
y3 <- dnorm(x = x, (a+ysum-1)/(b+n),sqrt((a+ysum-1)/(b+n)^2))
plot(x, y1, type = 'l',main =  TeX(r'($y_1 =3,n = 1, a = 34, b = 5$)'),
     xlab =TeX(r'($\lambda$)'),ylab = "Probability",ylim= c(0,1.0))
lines(x, y2, type = 'l', col = 2)
lines(x, y3, type = 'l', col = 3)
legend("topright",
       legend = c('gamma', 'normal approximation using mean','normal approximation using mode'), 
       col = c(1:3),
       lty = 1, cex = 0.8)