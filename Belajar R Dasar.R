# ----- PENGGUNAAN VARIABEL ----- #

a <- 1 # integer (numeric)
b <- 8L # integer
c <- 2.0 # desimal (numeric)
d <- 8i # complex (imaginer)
e <- "tiga" # string atau teks atau character
f <- TRUE # boolean atau logika
g <- c(4, 5, "enam") # vektor
h <- list(7, 8.0, "sembilan") # list

umur <- 18
nama <- "Budi"
opsi <- c("a", "b", "c", "d")

class(a) # mengecek tipe data a
class(d) # mengecek tipe data d
class(h) # mengecek tipe data h

# ----- MENAMPILKAN OUTPUT ----- #

a
d
print(b)
sprintf("ini adalah contoh %s", e)
length(g)

# Mengambil data dari tipe list/vektor
g[1] # mengambil indeks pertama
h[3] # mengambil indeks ketiga

# mengambil karakter dari "tiga" dimulai dari indeks ke-2 sampai ke-3
substring(e, 2, 3)

# ----- OPERASI ARITMATIKA ----- #

p <- a + b # penjumlahan
print(p)

q <- a * b # perkalian
print(q)

r <- b^a # perpangkatan
print(r)

s <- a == b # apakah a sama dengan b?
print(s)

t <- a < b # apakah a kurang dari b
print(t)

u <- !t # bukan t
print(u)

# ----- PENGGUNAAN PERCABANGAN (IF-ELSEIF-ELSE) ----- #

# IF saja
if (a < b) {
  print("nilai a lebih kecil daripada b")
}

# IF-ELSEIF
if (b > c) {
  print("nilai b lebih besar daripada c")
} else if (b == c) {
  print("nilai b sama dengan c")
}

# IF-ELSEIF-ELSE
if (a > c) {
  print("nilai a lebih besar daripada c")
} else if (a == c) {
  print("nilai a sama dengan c")
} else {
  print("nilai a lebih kecil daripada c")
}

# CARA LAIN
# Penggunaan ifelse(konsisi, true, false)
p <- TRUE
ifelse(p, "benar", "salah")
q <- c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE)
ifelse(!q, "benar", "salah")

# SWITCH
# Secara umum Switch mirip dengan fungsi IF

m <- 1:20 # nilai m adalah 1, 2, 3, ..., 20
type <- "mean"
switch(type,
  mean = mean(m),
  median = median(m),
  range = range(m),
  sd = sd(m),
  var = var(m),
  stop("Type salah")
)

# ----- PENGGUNAAN PERULANGAN (LOOPING) ----- #

# Looping dengan WHILE
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

# Looping dengan repeat -> mirip while
i <- 1
repeat {
  print(i)
  i <- i + 1
  if (i > 5) {
    break
  }
}

# Looping dengan FOR
for (x in 1:10) {
  msg <- paste0("Looping ke-", x)
  message(msg)
}

# Looping dari suatu LIST
fruits <- list("apple", "banana", "cherry")
for (y in fruits) {
  print(y)
}

# Break -> jika ketemu, maka perulangan berhenti
for (z in fruits) {
  if (z == "cherry") {
    break
  }
  print(z)
}

# Next -> jika ketemu, perulangan lanjut setelahnya
for (x in fruits) {
  if (x == "banana") {
    next
  }
  print(x)
}

# Kombinasi if-else looping
dadu <- 1:6

for (x in dadu) {
  if (x == 6) {
    print(paste("Nomor dadu =", x, "Ketemu!"))
  } else {
    print(paste("Nomor dadu", x, "Ah!Gagal"))
  }
}

# ----- PENGGUNAAN FUNGSI ----- #

# Tanpa parameter
say_hello <- function() {
  print("Halo, semua!")
}
say_hello()

# Dengan parameter
say_myname <- function(name) {
  paste("Halo, ", name)
}
say_myname("Eko")

# Ada parameter dan return value
hasil_kali <- function(a, b) {
  return(a * b)
}
hasil_kali(4, 6)

# ----- PENGGUNAAN ADVANCED FUNGSI  ----- #

# 1. Nested function --> ada fungsi di dalam fungsi

fungsi_bersarang <- function(a, b) {
  return(a + b)
}
fungsi_bersarang(fungsi_bersarang(2, 3), fungsi_bersarang(4, 5))
# step 1: fungsi_bersarang(2, 3) akan diproses hasilnya = 5
# step 2: fungsi_bersarang(4, 5) akan diproses hasilnya = 9
# step 3: fungsi_bersarang(5, 9) akan diproses hasilnya = 14

fungsi_luar <- function(x) {
  fungsi_dalam <- function(y) {
    return(x + y)
  }
  return(fungsi_dalam)
}
output <- fungsi_luar(5)
output(9)

# fungsi_luar mengembalikan sebuah fungsi, yaitu fungsi_dalam
# sehingga perlu ada variabel baru, misal output untuk menangkap fungsi
# step 1: fungsi_luar(5) akan dijalankan mengambalikan fungsi_dalam
# 5 adalah nilai x
# step 2: output(9) dijalankan akan menjadi nilai y
# step 3: output(9) sama dengan menjalankan fungsi_dalam, yaitu 5 + 9 = 14

# 2. Rekursi -> fungsi yang memanggil dirinya sendiri

faktorial <- function(x) {
  if (x == 0) {
    return(1)
  } else {
    return(x * faktorial(x - 1))
  }
}
faktorial(5)

# step 1: faktorial(5), x = 5, return 5 * faktorial(4)
# step 2: faktorial(4), x = 4, return 5 * 4 * faktorial(3)
# step 3: faktorial(3), x = 3, return 5 * 4 * 3 * faktorial(2)
# step 4: faktorial(2), x = 2, return 5 * 4 * 3 * 2 * faktorial(1)
# step 5: faktorial(1), x = 1, return 5 * 4 * 3 * 2 * 1 * faktorial(0)
# step 6: faktorial(0), x = 0, return 5 * 4 * 3 * 2 * 1 * 1 = 120

# 3. Global variables -> variabel yang dibuat di luar fungsi

# Contoh 1:
# teks di dalam function akan menggunakan variabel yang ada di luar (global)
teks <- "awesome!"
contoh1_function <- function() {
  paste("R itu", teks)
}
contoh1_function()

# Contoh 2:
# teks di dalam function akan menggunakan variabel yang ada di dalam (local)
teks <- "superb!"
contoh2_function <- function() {
  teks <- "awesome!"
  paste("R itu", teks)
}
contoh2_function() # akan memanggil variabel teks di dalam
sprintf("R itu %s", teks)

# Contoh 3:
# teks di dalam function akan menjadi variabel global
contoh3_function <- function() {
  teks <<- "awesome!"
  paste("R itu", teks)
}
contoh3_function()
sprintf("R itu %s", teks)

# Contoh 4:
# teks di dalam function akan menjadi variabel global
# mengganti variabel global sebelumnya di luar fungsi
teks <- "funtastic!"
contoh4_function <- function() {
  teks <<- "awesome!"
  paste("R itu", teks)
}
contoh4_function()
sprintf("R itu %s", teks)

# ----- END FOR R BASIC ^^  ----- #
