M <- matrix(c(2, 1, 9, 5, 8, 4, 6, 10, 7), nrow = 3, byrow = FALSE)
print("Matriks M awal:")
print(M)

M1 <- cbind(M, c(7, 4, 5))
print("Matriks setelah menambahkan kolom ke-4 (M1):")
print(M1)

M2 <- cbind(c(7, 4, 5), M)
print("Matriks setelah menambahkan kolom ke-1 (M2):")
print(M2)