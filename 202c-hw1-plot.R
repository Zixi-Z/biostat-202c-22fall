x <- (1:1000)/100
y1 <- dgamma(x = x, 1, 1)
y2 <- dgamma(x = x, 2, 2)
y3 <- dgamma(x = x, 8, 2)
y4 <- dgamma(x = x, 12, 3)

plot(x, y1, type = 'l',main = 'y = a = b = 1',xlab = expression(lambda),ylab = "Probability",ylim= c(0,1.0))
lines(x, y2, type = 'l', col = 2)
legend("topright",
       legend = c('prior', 'posterior'), 
       col = c(1:2),
       lty = 1, cex = 0.8)

plot(x, y3, type = 'l',main = 'y = 4, a = 8, b = 2',xlab = expression(lambda),ylab = "Probability",ylim= c(0,1.0))
lines(x, y4, type = 'l', col = 2)
legend("topright",
       legend = c('prior', 'posterior'), 
       col = c(1:2),
       lty = 1, cex = 0.8)