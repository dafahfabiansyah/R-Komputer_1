# Membuat layout
layout(matrix(c(1, 3,
                2, 3,
                2, 4), 
              nrow = 3, byrow = TRUE), 
       widths = c(1, 1), heights = c(1, 1, 1))

# Tambahkan margin agar label tidak terpotong
par(mar = c(2, 2, 2, 2))

# Plot setiap bagian
for (i in 1:4) {
  plot.new()
  text(0.5, 0.5, labels = paste(i), cex = 2)
}
