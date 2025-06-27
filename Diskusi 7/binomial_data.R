set.seed(123)

n <- 30          
size <- 10       
prob <- 0.3      
ncol <- 5       


data_binomial <- rbinom(n, size, prob)


cat("Data Binomial yang dibangkitkan:\n")
print(data_binomial)


matriks_data <- matrix(data_binomial, ncol = ncol)

cat("\nMatriks Data Binomial (5 kolom):\n")
print(matriks_data)


cat("Rata-rata (mean):", mean(data_binomial), "\n")
cat("Median:", median(data_binomial), "\n")
cat("Standar deviasi:", sd(data_binomial), "\n")
cat("Minimum:", min(data_binomial), "\n")
cat("Maksimum:", max(data_binomial), "\n")


mean_teoritis <- size * prob
var_teoritis <- size * prob * (1 - prob)