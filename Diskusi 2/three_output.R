first_answer <- 1:20

cat(first_answer ,':  ini first answer', "\n")
# jawaban pertama


second_answers <- data.frame(
  hero_name <- c("harith", "lukas", "angela", "\n"),
  hero_type <- c("mage", "fighter", "support", "\n"),
  herp_lane <- c("goldlane", "explane", "roam", "\n" )
)
cat('ini jawaban kedua')
heroes <- subset(second_answers)
# jawaban kedua


mahasiswa <- data.frame(
  nama = c("florn", "suyou", "layla", "argus"),
  nilai = c(85, 70, 92, 65),
  lulus = c(TRUE, FALSE, TRUE, FALSE)
)
lulusan <- subset(mahasiswa, lulus == TRUE)

print('ini jawaban ketiga')
cat("Data Mahasiswa:\n")
print(mahasiswa)
cat("\nYang Lulus:\n")
print(lulusan)

# jawaban ketiga
