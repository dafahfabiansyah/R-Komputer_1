count_math <-function () {
  # contoh soal 3x + 5 = 14
  x <- (14 - 5) / 3
  cat("nilai x:", x, "\n")
    # ngecek bener gak hasilnya
  cek <- 3*x + 5
  cat("hasil jawaban nomor 1: 3x + 5 =", cek, "\n")
  
  # x² - 5x + 6 = 0
  # rumus abc :  x = (-b ± √(b² - 4ac)) / 2a
  a <- 1
  b <- -5
  c <- 6
  
  # cari diskriminan dulu
  diskriminan <- b^2 - 4*a*c
  
  # cari nilai x1 dan x2
  x1 <- (-b + sqrt(diskriminan)) / (2*a)
  x2 <- (-b - sqrt(diskriminan)) / (2*a)
  
  cat("hasil jawaban nomor 2:\n")
  cat("x1 =", x1, "\n")
  cat("x2 =", x2, "\n")
  
  cek1 <- x1^2 - 5*x1 + 6
  cek2 <- x2^2 - 5*x2 + 6
  cat("Kalau x =", x1, "hasilnya:", cek1, "\n")
  cat("Kalau x =", x2, "hasilnya:", cek2, "\n")
}

count_math()