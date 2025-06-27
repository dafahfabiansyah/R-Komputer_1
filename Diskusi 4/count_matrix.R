# Pertanyaan 1: Membuat matriks M dan operasi matriks
# Definisikan matriks M
M <- matrix(c(7, 0, 0, 0, 
              6, 9, 0, 0, 
              5, 7, 1, 0, 
              4, 5, 2, 3), 
            nrow = 4, byrow = TRUE)

cat("Matriks M:\n")
print(M)

# a. Perkalian elemen demi elemen dari matriks M
elem_mult <- M * M
cat("\na. Perkalian elemen demi elemen:\n")
print(elem_mult)

# b. Perkalian matriks M dengan M (secara aljabar)
matrix_mult <- M %*% M
cat("\nb. Perkalian matriks secara aljabar:\n")
print(matrix_mult)

# c. Invers dari matriks M
# Hitung determinan terlebih dahulu untuk memeriksa apakah matriks singular
cat("\nc. Invers dari matriks M:\n")
inverse_M <- solve(M)
print(inverse_M)

# d. Transpos dari matriks M
transpose_M <- t(M)
cat("\nd. Transpos matriks M:\n")
print(transpose_M)

# e. M^T × M
Mt_M <- t(M) %*% M
cat("\ne. M^T × M:\n")
print(Mt_M)


# Pertanyaan 2: Operasi lanjutan dengan matriks M

# Definisikan vektor a dan matriks B
a <- c(1, 4, 5, 6)
B <- matrix(c(1, 1, 2, 2, 3, 3, 4, 4), nrow = 2, byrow = TRUE)

cat("\nVektor a:\n")
print(a)
cat("\nMatriks B:\n")
print(B)

# a. Membuat anak matriks M1
M1 <- matrix(c(9, 0, 7, 1), nrow = 2, byrow = TRUE)
cat("\na. Anak matriks M1:\n")
print(M1)

# b. Membuat anak matriks M2
M2 <- matrix(c(7, 0, 4, 3), nrow = 2, byrow = TRUE)
cat("\nb. Anak matriks M2:\n")
print(M2)

# c. Menambahkan a ke baris ke-5
M3 <- rbind(M, a)
cat("\nc. Matriks M3 (menambahkan a ke baris ke-5):\n")
print(M3)

# d. Menambahkan B^T ke kolom ke-1 dan 2 dari M
Bt <- t(B)
# Cara 1: Mengganti kolom 1 dan 2 dengan nilai dari Bt
M4 <- M
M4[, 1:2] <- Bt
cat("\nd. Matriks M4 (menambahkan B^T ke kolom 1-2):\n")
print(M4)

# Pertanyaan 3: Contoh program R lainnya

# Contoh 1: Operasi perkalian matriks dengan skalar
cat("\nContoh 1: Perkalian matriks dengan skalar 2\n")
scalar_mult <- 2 * M
print(scalar_mult)

# Contoh 2: Menghitung jumlah dari setiap baris dan kolom
cat("\nContoh 2: Jumlah tiap baris dan kolom matriks\n")
row_sums <- rowSums(M)
col_sums <- colSums(M)
cat("Jumlah tiap baris:\n")
print(row_sums)
cat("Jumlah tiap kolom:\n")
print(col_sums)