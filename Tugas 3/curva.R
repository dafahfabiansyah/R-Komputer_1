x <- seq(-4, 4, length = 500)
y <- dnorm(x)

plot(x, y, type = "l", xlab = "x", ylab = "density")
abline(h = 0, col = "green")
abline(v = 0, col = "green")