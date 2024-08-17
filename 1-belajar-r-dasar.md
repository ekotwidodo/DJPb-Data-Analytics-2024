# Belajar R Dasar

R adalah bahasa pemrograman yang dikhususkan untuk komputasi data statistik dan penyajian data. R menyediakan berbagai macam analisis statistik, seperti pemodelan linear dan nonlinear, pengujian statistik, analisis time series, klasifikasi, kluster, dan sebagainya dan juga teknik-teknik penyajian data.

Alasan memilih R?
* FREE of charge alias gratis!
* Dapat berjalan diberbagai sistem operasi, seperti Windows, Unix (Linux), dan MacOS
* R dibangun untuk statistik
* Populer untuk bidang sains data (data science)
* Tersedia berbagai jenis packages yang bisa digunakan, seperti package dplyr untuk manipulasi data, ggplot2 untuk visualisasi data, dll.
* Memiliki komunitas yang besar

R dan R Studio (Post It)
* R itu seperti mesin (engine) dari sebuah mobil
* R Studio itu seperti dashboard dari mobil tersebut → Integrated Development Environment (IDE)

Unduh R dan R Studio (PostIt, 17 Agustus 2024)
* Software R		→ [Unduh Versi Terakhir](https://cran.rstudio.com/bin/windows/base/R-4.4.1-win.exe)
* Software R Studio	→ [Unduh Versi Terakhir](https://download1.rstudio.org/electron/windows/RStudio-2024.04.2-764.exe)

Berikut ini adalah dasar-dasar belajar R.

## 1. Penggunaan Variabel

```r
a <- 1 # integer (numeric)
b <- 8L # integer
c <- 2.0 # desimal (numeric)
d <- 8i # complex (imaginer)
e <- "tiga" # string atau teks atau character
f <- TRUE # boolean atau logika
g <- c(4, 5, "enam") # vektor
h <- list(7, 8.0, "sembilan") # list
```

Penamaan variabel sebaiknya menggambarkan entitas tertentu, contoh:

```r
umur <- 18
nama <- "Budi"
opsi <- c("a", "b", "c", "d")
```

Ada beberapa tipe data pada R, seperti `numeric`, `character`, `logic`, dst. Pengecekan terhadap tipe data dapat dilakukan, seperti pada contoh berikut.

```r
class(a) # mengecek tipe data a
class(d) # mengecek tipe data d
class(h) # mengecek tipe data h
```

## 2. Menampilkan Output

Berikut ini adalah bebagai cara untuk menampilkan data di R:

```r
a
d
print(b)
sprintf("ini adalah contoh %s", e)
length(g)
```

## 3. Mengambil data dalam suatu list/vektor, character

```r
g[1] # mengambil indeks pertama
h[3] # mengambil indeks ketiga

# mengambil karakter dari "tiga" dimulai dari indeks ke-2 sampai ke-3
substring(e, 2, 3)
```

# Operasi Aritmatika

```r
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
```
