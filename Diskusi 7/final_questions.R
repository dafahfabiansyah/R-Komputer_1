cat("=== CONTOH PROGRAM 2: UJI HIPOTESIS DUA SAMPEL ===\n\n")

set.seed(123)
kelompok_A <- rnorm(30, mean = 75, sd = 8)
kelompok_B <- rnorm(35, mean = 80, sd = 7)
cat("STATISTIK DESKRIPTIF:\n")
cat("Kelompok A - n:", length(kelompok_A), 
    ", Mean:", round(mean(kelompok_A), 2),
    ", SD:", round(sd(kelompok_A), 2), "\n")
cat("Kelompok B - n:", length(kelompok_B), 
    ", Mean:", round(mean(kelompok_B), 2),
    ", SD:", round(sd(kelompok_B), 2), "\n")

var_test <- var.test(kelompok_A, kelompok_B)
cat("\nUJI KESAMAAN VARIANS (F-test):\n")
cat("F-statistic:", round(var_test$statistic, 4), "\n")
cat("p-value:", round(var_test$p.value, 4), "\n")
cat("Kesimpulan varians:", ifelse(var_test$p.value > 0.05, 
                                  "Varians sama", 
                                  "Varians berbeda"), "\n")

equal_var <- var_test$p.value > 0.05
t_test <- t.test(kelompok_A, kelompok_B, var.equal = equal_var)

cat("Hipotesis: H0: μA = μB vs H1: μA ≠ μB\n")
cat("t-statistic:", round(t_test$statistic, 4), "\n")
cat("df:", round(t_test$parameter, 0), "\n")
cat("p-value:", round(t_test$p.value, 4), "\n")
cat("95% CI selisih mean: [", 
    round(t_test$conf.int[1], 2), ", ", 
    round(t_test$conf.int[2], 2), "]\n")
cat("Kesimpulan:", ifelse(t_test$p.value < 0.05, 
                          "Tolak H0 - Ada perbedaan signifikan", 
                          "Terima H0 - Tidak ada perbedaan signifikan"), "\n")
data_gabungan <- data.frame(
  nilai = c(kelompok_A, kelompok_B),
  kelompok = c(rep("A", length(kelompok_A)), rep("B", length(kelompok_B)))
)

boxplot(nilai ~ kelompok, data = data_gabungan,
        main = "Perbandingan Kelompok A dan B",
        xlab = "Kelompok",
        ylab = "Nilai",
        col = c("lightblue", "lightcoral"))

cat("\nRINGKASAN ANALISIS:\n")
cat("Perbedaan mean:", round(mean(kelompok_B) - mean(kelompok_A), 2), "\n")
cat("Effect size (Cohen's d):", 
    round((mean(kelompok_B) - mean(kelompok_A)) / 
            sqrt(((length(kelompok_A)-1)*var(kelompok_A) + 
                    (length(kelompok_B)-1)*var(kelompok_B)) / 
                   (length(kelompok_A) + length(kelompok_B) - 2)), 2), "\n")