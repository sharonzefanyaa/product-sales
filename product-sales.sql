CREATE DATABASE PRODUCT_SALES;
USE PRODUCT_SALES;

CREATE TABLE Barang(
    ID_Barang VARCHAR(255) NOT NULL PRIMARY KEY,
    Nama_Barang VARCHAR(255) NOT NULL,
    Tanggal_Terima DATETIME,
    Stok_Barang INT NOT NULL);
    
CREATE TABLE Pembelian(
    ID_Pembeli VARCHAR(255) PRIMARY KEY,
    ID_Barang VARCHAR(255) NOT NULL,
    Tanggal_Beli DATETIME,
    Jumlah_Pembelian INT NOT NULL,
    Nama_Pembeli VARCHAR(255) NOT NULL,
    FOREIGN KEY(ID_Barang) REFERENCES Barang(ID_Barang));

INSERT INTO `barang`(`ID_Barang`, `Nama_Barang`, `Tanggal_Terima`, `Stok_Barang`) VALUES 
('LA09', 'Laptop', '2022-06-16 12:00:32', 20),
('HH94', 'High Heel', '2022-09-21 15:03:11', 5),
('CS35', 'Casing HP', '2022-06-11 11:08:55', 10),
('TB89', 'Tumblr', '2022-07-14 17:14:30', 12),
('WT51', 'Jam Tangan', '2022-07-19 19:55:21', 2),
('PS73', 'Dompet', '2022-08-17 10:45:32', 3),
('BG68', 'Tas', '2022-10-22 14:13:22', 6),
('CL20', 'Baju', '2022-07-07 11:12:22', 13),
('HT56', 'Topi', '2022-11-15 15:05:14', 10),
('PD32', 'Ipad', '2022-12-11 18:11:30', 4);

INSERT INTO `pembelian`(`ID_Pembeli`, `ID_Barang`, `Tanggal_Beli`, `Jumlah_Pembelian`, `Nama_Pembeli`) VALUES 
('VF81', 'HH94', '2022-09-17 12:22:21', 2, 'Valencia Finn'),
('EC75', 'WT51', '2022-07-17 15:17:04', 2, 'Excelsius Cascode'),
('CC01', 'HH94', '2022-09-19 11:10:47', 1, 'Clarita Crone'),
('CC07', 'CL20', '2022-07-05 15:09:16', 1, 'Calvin Crest'),
('NT55', 'PS73', '2022-08-12 15:32:23', 7, 'Nathalia Tiffany'),
('LJ05', 'CL20', '2022-12-08 19:12:24', 4, 'Lauren Joanne'),
('KR45', 'CL20', '2022-12-06 13:11:44', 2, 'Karen Roxy'),
('DT30', 'CS35', '2022-06-07 11:57:14', 3, 'Devin Tristan'),
('SW23', 'TB89', '2022-07-11 14:15:09', 5, 'Samuel Winston'),
('FS33', 'LA09', '2022-06-10 19:18:54', 1, 'Frederick Simen'),
('QG71', 'HH94', '2022-09-17 12:22:21', 2, 'Quinnie Gozalli'),
('RV25', 'PD32', '2022-12-05 14:19:34', 2, 'Rachel Victoria'),
('JH31', 'HT56', '2022-11-14 15:18:54', 10, 'Jason Hadwin'),
('GA15', 'PD32', '2022-12-07 15:12:43', 1, 'Gwen Alexandra'),
('BP04', 'BG68', '2022-08-14 13:50:26', 3, 'Beatrice Pine');

-- 1
SELECT Nama_Pembeli, ROUND(AVG(Jumlah_Pembelian), 0) as Jumlah_Pembelian FROM pembelian
GROUP BY Nama_Pembeli
HAVING AVG(Jumlah_Pembelian) > 5;

-- 2
SELECT ID_Barang, Nama_Barang, MIN(Stok_Barang)
FROM barang;

-- 3
SELECT barang.ID_Barang, barang.Nama_Barang, pembelian.Jumlah_Pembelian
FROM barang JOIN pembelian
ON barang.ID_Barang = pembelian.ID_Barang
ORDER BY pembelian.Tanggal_Beli ASC;

-- 4
SELECT Nama_Barang, Tanggal_Terima, Stok_Barang
FROM barang JOIN pembelian
ON barang.ID_Barang = pembelian.ID_Barang
WHERE Jumlah_Pembelian > 3
AND Tanggal_Beli BETWEEN '2022-06-01' AND '2022-12-30';

-- 5
SELECT Tanggal_Beli, Nama_Pembeli, Jumlah_Pembelian FROM pembelian 
WHERE Jumlah_Pembelian = 2
UNION
SELECT Tanggal_Beli, Nama_Pembeli, Jumlah_Pembelian FROM pembelian 
WHERE Nama_Pembeli LIKE '%al%';


-- 6
SELECT barang.ID_Barang, barang.Nama_Barang, pembelian.Tanggal_Beli, pembelian.Nama_Pembeli, MAX(pembelian.Jumlah_Pembelian) as Jumlah_Pembelian
FROM barang JOIN pembelian
ON barang.ID_Barang = pembelian.ID_Barang;
