data_penjualan <- read.csv("penjualan.csv", header = TRUE, sep = "\t")

print("Data penjualan:")
print(data_penjualan)

print("Struktur data:")
str(data_penjualan)

print("Nama kolom:")
colnames(data_penjualan)