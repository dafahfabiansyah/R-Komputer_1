data_scan <- scan("data_2.txt")
matriks2 <- matrix(data_scan, nrow = 4, ncol = 10, byrow = TRUE)

data_penjualan <- read.table("penjualan.csv", header = TRUE, sep = ",", fill = TRUE, strip.white = TRUE)

print("=== ANALISIS MATRIKS2 ===")
print("Matriks2:")
print(matriks2)

rata_rata_baris <- rowMeans(matriks2)
print("Rata-rata setiap baris:")
print(rata_rata_baris)

total_kolom <- colSums(matriks2)
print("Total setiap kolom:")
print(total_kolom)

nilai_max <- max(matriks2)
nilai_min <- min(matriks2)
print(paste("Nilai maksimum:", nilai_max))
print(paste("Nilai minimum:", nilai_min))

print("=== ANALISIS DATA PENJUALAN ===")
print("Data penjualan:")
print(data_penjualan)

data_penjualan$Total <- data_penjualan$Jml.Unit * data_penjualan$Harga
print("Data penjualan dengan kolom Total:")
print(data_penjualan)

barang_termahal <- data_penjualan[which.max(data_penjualan$Harga), ]
print("Barang dengan harga tertinggi:")
print(barang_termahal)

total_penjualan <- sum(data_penjualan$Total)
print(paste("Total penjualan keseluruhan:", total_penjualan))

print("=== ANALISIS GABUNGAN ===")
jumlah_matrix_gt70 <- sum(matriks2 > 70)
print(paste("Jumlah elemen matriks2 > 70:", jumlah_matrix_gt70))

jumlah_barang_gt1000 <- sum(data_penjualan$Harga > 1000)
print(paste("Jumlah barang dengan harga > 1000:", jumlah_barang_gt1000))

perbandingan <- jumlah_matrix_gt70 / jumlah_barang_gt1000
print(paste("Perbandingan (matrix > 70) / (harga > 1000):", round(perbandingan, 2)))

print("=== SUMMARY LENGKAP ===")
summary_data <- data.frame(
  Kategori = c("Rata-rata matriks", "Total penjualan", "Elemen > 70", "Barang > 1000"),
  Nilai = c(mean(matriks2), total_penjualan, jumlah_matrix_gt70, jumlah_barang_gt1000)
)
print(summary_data)