# Data
nilai <- c(60, 67, 69, 72, 75, 77, 80, 83, 87, 90)
frekuensi <- c(2, 5, 6, 7, 9, 2, 6, 8, 1, 3)
data_mahasiswa <- data.frame(Nilai = nilai, Frekuensi = frekuensi)

dev.new()
plot(data_mahasiswa$Nilai, data_mahasiswa$Frekuensi, 
     main = "Plot Nilai vs Frekuensi",
     xlab = "Nilai", ylab = "Frekuensi",
     pch = 19, col = "blue")

readline(prompt = "Tekan Enter untuk lanjut ke sunflowerplot...")

# Sunflowerplot
dev.new()
sunflowerplot(data_mahasiswa$Nilai, data_mahasiswa$Frekuensi,
              main = "Sunflowerplot Nilai vs Frekuensi",
              xlab = "Nilai", ylab = "Frekuensi",
              col = "red", seg.col = "green")

readline(prompt = "Tekan Enter untuk lanjut ke pie chart...")

# Pie chart
dev.new()
pie(data_mahasiswa$Frekuensi, 
    labels = paste(data_mahasiswa$Nilai, " (", data_mahasiswa$Frekuensi, ")", sep=""),
    main = "Pie Chart Distribusi Nilai",
    col = rainbow(length(data_mahasiswa$Nilai)))

# Boxplot
dev.new()
par(mfrow = c(1, 2))
boxplot(data_mahasiswa$Nilai, main = "Boxplot Nilai", col = "lightblue")
boxplot(data_mahasiswa$Frekuensi, main = "Boxplot Frekuensi", col = "lightgreen")