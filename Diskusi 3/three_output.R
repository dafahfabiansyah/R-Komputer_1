# dataset
penjualan <- data.frame(
  Bulan = c("Jan", "Feb", "Mar", "Apr"),
  Produk_A = c(150, 200, 180, 220),
  Produk_B = c(90, 110, 95, 120),
  Produk_C = c(80, 50, 90, 60)
)
penjualan

# menghitung median, max dan min
count_median <- median(penjualan$Produk_A)
print(paste("Median Produk A:", count_median))
cat('\n')

count_max <- max(penjualan$Produk_B)
print(paste("Nilai maksimal Produk B:", count_max))
cat('\n')

count_min <- min(penjualan$Produk_B)
print(paste("Nilai minimal Produk B:", count_min))
cat('\n')

# membuat time series
count_time_series <- ts(penjualan$Produk_C, start=c(2009, 1), end=c(2014, 12), frequency=4)
count_time_series
cat('\n')

# membuat matriks
create_matrix <- matrix(c( penjualan$Produk_C), nrow= 2, ncol = 2)
create_matrix


