# 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20.

number<- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
# print(number)

# soal 3.a
get_matrix <- matrix(number, nrow =4, ncol = 5 )
print('ini matriks 4 x 5')
print(get_matrix)

# soal 3.b
cat("ini adalah min dari number :", min(number), '\n')
cat("ini adalah max dari number :", max(number), '\n')
cat("ini adalah rata-rata dari number :", mean(number), '\n')
cat("ini adalah median dari number :", median(number), '\n')