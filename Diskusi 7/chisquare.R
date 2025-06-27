x <- seq(0, 5, length.out = 100)
df <- 10
kepadatan <- dchisq(x, df = df)

plot(x, kepadatan, 
     type = "l",                    
     lwd = 2,                       
     col = "blue",                  
     main = paste("Distribusi Chi-Square: df =", df),
     xlab = "x",
     ylab = "Kepadatan",
     ylim = c(0, max(kepadatan) * 1.1))  

grid()
mean_chisq <- df
var_chisq <- 2 * df

abline(v = mean_chisq, col = "red", lty = 2, lwd = 2)
legend("topright", 
       legend = c(paste("df =", df), 
                  paste("Mean =", mean_chisq),
                  paste("Var =", var_chisq)),
       col = c("blue", "red", "black"),
       lty = c(1, 2, 0),
       lwd = c(2, 2, 0))

cat("Derajat bebas (df):", df, "\n")
cat("Mean teoritis:", mean_chisq, "\n")
cat("Varians teoritis:", var_chisq, "\n")
cat("Rentang x:", min(x), "sampai", max(x), "\n")
cat("Jumlah titik data:", length(x), "\n")

cat("f(0) =", dchisq(0, df), "\n")
cat("f(1) =", dchisq(1, df), "\n")
cat("f(2) =", dchisq(2, df), "\n")
cat("f(3) =", dchisq(3, df), "\n")
cat("f(4) =", dchisq(4, df), "\n")
cat("f(5) =", dchisq(5, df), "\n")