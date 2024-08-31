# Penyajian Data (Data Visualization) dengan R

Penyajian data merupakan bentuk pengemasan suatu data secara visual sedemikian sehingga data lebih mudah dipahami. Penyajian data bisa dilakukan dalam bentuk tabel, diagram, maupun grafik.

Penyajian data yang baik:
* Menarik perhatian pembaca.
* Menyajikan informasi secara sederhana, jelas, dan akurat.
* Tidak misleading.
* Memfasilitasi perbandingan.
* Mengilustrasikan pesan, tema atau jalan cerita dalam teks terkait.

## 1. Penggunaan Plot

Plot digunakan untuk menampilkan titik (marker) dalam suatu grafik. Ada dua parameter, x-axis, y-axis.

```r
plot(1, 3)

# Gunakan vektor jika ingin menggambar banyak titik
plot(c(1, 3), c(5, 6))

plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))

# Gunakan variabel untuk pengelolaan yang lebih baik

x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)
plot(x, y)

# Bentuk sekuens plot, antara x dan y nilainya sama
plot(1:10)

# Parameter lain dari plot
plot(
    1:10,
    main = "Grafik Saya", xlab = "sumbu-X",
    ylab = "sumbu-Y",
    col = "red", # warna titik
    cex = 2, # size titik, 1 default, 0.5 setengahnya, 2 berarti 2x
    pch = 25, # bentuk titik, dari 0-25 (silahkan dieksplor)
)
```

## 2. Penggunaan Lines Plot

```r
# Lines digunakan untuk membuat garis lurus dalam suatu grafik
plot(1:10,
    type = "l",
    lwd = 2, # width dari line, 1 default, 0.5 setengahnya, 2 berarti 2x
    lty = 4, # bentuk garis, dari 0-6
    # 0 tidak ada line
    # 1 solid line
    # 2 dashed line
    # 3 dotted line
    # 4 dot dashed line
    # 5 long dashed line
    # 6 two dashed line
)

# Multilines
line1 <- c(1, 2, 3, 4, 5, 10)
line2 <- c(2, 5, 7, 8, 9, 10)

plot(line1, type = "l", col = "blue")
lines(line2, type = "l", col = "red")
```

## 3. Penggunaan Scatter PLot

```r
# Scatter plot digunakan untuk menampilkan titik (marker) yang
# berbeda-beda berdasarkan dua variabel dan menampilan hubungan
# dari dua variabel tersebut serta untuk observasi/analisis
# Butuh 2 vektor dengan panjang yang sama

x <- c(5, 7, 8, 7, 2, 2, 9, 4, 11, 12, 9, 6)
y <- c(99, 86, 87, 88, 111, 103, 87, 94, 78, 77, 85, 86)

plot(x, y,
    main = "Grafik Scatter", xlab = "x-axis",
    ylab = "y-axis",
)

# Scatter Plot komparasi

# hari pertama, usia dan kecepatan 12 mobil:
x1 <- c(5, 7, 8, 7, 2, 2, 9, 4, 11, 12, 9, 6)
y1 <- c(99, 86, 87, 88, 111, 103, 87, 94, 78, 77, 85, 86)

# hari kedua, usia dan kecepatan 15 mobil:
x2 <- c(2, 2, 8, 1, 15, 8, 12, 9, 7, 3, 11, 4, 7, 14, 12)
y2 <- c(100, 105, 84, 105, 90, 99, 90, 95, 94, 100, 79, 112, 91, 80, 85)

plot(x1, y1,
    main = "Pengamatan Mobil",
    xlab = "Usia",
    ylab = "Kecepatan",
    col = "red",
    cex = 2
)
points(x2, y2,
    col = "blue",
    cex = 2
)
```

## 4. Penggunaan Pie chart

```r
x <- c(10, 20, 30, 40)
pie(x)

# Pie pertama akan mulai pada 90 derajat
pie(x, init.angle = 90)

# Tambahkan label dan header
mylabels <- c("Apel", "Pisang", "Semangka", "Kurma")
pie(x, labels = mylabels, main = "Buah-buahan")

# Bisa tambahkan warna
mycolors <- c("blue", "yellow", "green", "black")
pie(x, labels = mylabels, main = "Buah-buahan", col = mycolors)

# Bisa tambahkan legenda
# bottomright, bottom, bottomleft, left, topleft, top, topright, right, center
legend("bottomright", mylabels, cex = 0.8, fill = mycolors)
```

## 5. Penggunaan Bar chart

```r
# x-axis values
x <- c("A", "B", "C", "D")

# y-axis values
y <- c(2, 4, 6, 8)

# Bisa menempatkan label di tiap bar
barplot(y, names.arg = x)

# Bisa mengatur lebar bar
barplot(y, names.arg = x, width = 0.5)
barplot(y, names.arg = x, width = c(1, 2, 3, 4)) # lebar setiap bar berbeda

# Bisa mengatur posisi label
barplot(y, names.arg = x, width = 0.5, horiz = TRUE)

# Bisa mengatur warna bar
barplot(y, names.arg = x, width = 0.5, col = "blue")

# Density atau bar texture
barplot(y, names.arg = x, density = 10)

# Bisa mengatur title
barplot(y,
    names.arg = x,
    width = 0.5,
    col = "blue",
    main = "Contoh Grafik Bar"
)
```

## 6. Penggunaan Library `ggplot`

```r
install.packages("ggplot2")

# Load library
library(ggplot2)

# Data frame
data <- data.frame(
    x = c("A", "B", "C", "D"),
    y = c(2, 4, 6, 8)
)

# Membuat plot

ggplot(data, aes(x, y)) +
    geom_bar(stat = "identity")

# Mengatur lebar bar

ggplot(data, aes(x, y)) +
    geom_bar(stat = "identity", width = 0.5)

# Mengatur posisi label
ggplot(data, aes(x, y)) +
    geom_bar(stat = "identity", width = 0.5, hjust = 0.5, color = "white ") +
    geom_text(aes(label = y), vjust = -0.5, size = 0.5, color = "white ") +
    theme_minimal()

# Mengatur warna bar

ggplot(data, aes(x, y)) +
    geom_bar(stat = "identity", width = 0.5, fill = "blue")

# Density atau bar texture

ggplot(data, aes(x, y)) +
    geom_bar(stat = "identity", width = 0.5, fill = "blue") +
    geom_density(color = "red", fill = "red", alpha = 0.5, density = 10) +
    theme_minimal()
```
