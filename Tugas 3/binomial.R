x <- seq(-4, 4, length = 500)
y <- dnorm(x)
plot(x, y, type = "l", xlab = "x", ylab = "density")
abline(h = 0, col = "green")
abline(v = 0, col = "green")

data_binomial <- matrix(rbinom(30, 10, 0.25), ncol = 5)
print(data_binomial)

mean_cols <- colMeans(data_binomial)
print(mean_cols)

var_cols <- apply(data_binomial, 2, var)
print(var_cols)

hist(data_binomial, main = "Histogram Data Binomial"
     , xlab = "Nilai", col = "lightblue")

boxplot(data_binomial, main = "Boxplot Data Binomial", ylab = "Nilai")