# Siswa <- data.frame(
#   Jurusan_asal = rep(c('komputer', 'matematika'), times = 12),
#   Daerah =rep(rep(c("jakarta", "surabaya", "makassar"), each = 2), times = 4),
#   Usia1 = rep(25:28, each = 6),
#   Usia2 = rep(c(25:28), each = 6)
# )
# Siswa

# revisi
Jurusan_asal <- rep(c("Komputer", "Matematika"), 12)
Daerah <- rep(c("Jakarta", "Surabaya", "Makassar"), each = 2, times = 4)
Usia <- rep(25:28, each = 6)
data_siswa <- data.frame(Jurusan_asal, Daerah, Usia)
data_siswa