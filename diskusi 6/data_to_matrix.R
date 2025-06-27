data_scan <- scan("data_2.txt")

print("Data yang dibaca dari file data_2.txt:")
print(data_scan)

matriks2 <- matrix(data_scan, nrow = 4, ncol = 10, byrow = TRUE)

print("Matriks2 (4x10):")
print(matriks2)

print(paste("Dimensi matriks2:", nrow(matriks2), "x", ncol(matriks2)))

str(matriks2)