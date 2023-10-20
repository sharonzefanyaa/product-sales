# product-sales

Perhatikan Tabel-tabel berikut:

**A. Tabel Barang**

Nama Field | Tipe Data

ID _Barang | Varchar

Nama_Barang | Varchar

Tanggal_Terima | Datetime

Stok_Barang | Int


**B. Tabel Pembelian** 

Nama Field | Tipe Data

ID_Pembeli | Varchar

ID _Barang | Varchar

Tanggal_Beli | Datetime

Jumlah_Pembelian | Int

Nama_Pembeli | Varchar


Berdasarkan tabel Barang dan tabel Pembelian selesaikanlah kasus berikut,
1. Tuliskan query untuk menampilkan Nama_Pembeli dan Jumlah_Pembelian yang memiliki rata-rata pembelian lebih dari 5.
2. Tuliskan query untuk menampilkan ID_Barang, Nama_Barang, dan Stok_Barang yang paling sedikit jumlahnya.
3. Tuliskan query untuk menampilkan ID_Barang, Nama_Barang, Jumlah_Pembelian yang sudah diurutkan dari tanggal awal pembelian sampai akhir pembelian.
4. Tuliskan query untuk menampilkan Nama_Barang, Tanggal_Terima, dan Stok_Barang pada tabel barang dengan Jumlah pembelian lebih dari tiga dan tanggal pembelian antara tanggal 1 Juni 2022 sampai dengan 30 Desember 2022.
5. Tuliskan query untuk menampilkan Tanggal_Beli, Nama_Pembeli, dan Jumlah_Pembelian pada tabel pembelian dimana Jumlah_Pembelian = 2 dan menampilkan Tanggal_Beli, Nama_Pembeli, Jumlah_Pembelian pada tabel pembelian berdasarkan Nama_Pembeli yang mengandung huruf ‘al’. (Anda bisa memilih menggunakan query Union atau Union All)
6. Tuliskan query untuk menampilkan ID_Barang, Nama_barang, Tanggal_Beli, Nama_Pembeli, dan Jumlah_Pembelian dimana jumlah pembeliannya merupakan jumlah yang terbanyak.
