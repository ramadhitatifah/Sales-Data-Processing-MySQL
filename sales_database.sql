/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.27-MariaDB : Database - penjualan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`penjualan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `penjualan`;

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `Kode_Pelanggan` varchar(50) NOT NULL,
  `Nama_Pelanggan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Kode_Pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pelanggan` */

insert  into `pelanggan`(`Kode_Pelanggan`,`Nama_Pelanggan`) values 
('BR-10','Toko Berlin'),
('CI-25','Toko Cemilanteman'),
('DT-08','Toko Dhita'),
('DT-24','Toko Dietlezat'),
('DV-04','Toko Diva'),
('FR-05','Toko Frisca'),
('FV-19','Toko Flavorcake'),
('HL-34','Toko Hellocoffee'),
('HS-27','Toko Houseofsushi'),
('JA-30','Toko Jajanpasar'),
('JL-13','Toko Jelli'),
('KC-28','Toko Kimchifood'),
('KI-22','Toko Keripikhero'),
('LA-14','Toko Lala'),
('LU-16','Toko Lulu'),
('MR-06','Toko Marsha'),
('NA-11','Toko Nia'),
('ND-26','Toko Noodlestory'),
('NS-15','Toko Nissa'),
('NT-33','Toko Ngetehduluyuk'),
('NZ-09','Toko Nazwa'),
('PE-21','Toko Pedesdower'),
('PR-12','Toko Putri'),
('PZ-29','Toko Pizzacarte'),
('RH-17','Toko Rahmi'),
('SV-18','Toko Silvi'),
('TI-32','Toko Tutifruity'),
('VA-23','Toko Veganheritage'),
('VG-31','Toko Veggiebestie'),
('YK-07','Toko Yunike'),
('YM-20','Toko Yummybakery');

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `Kode_Produk` varchar(50) NOT NULL,
  `Nama_Produk` varchar(50) DEFAULT NULL,
  `Harga_Satuan` int(11) DEFAULT NULL,
  PRIMARY KEY (`Kode_Produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `produk` */

insert  into `produk`(`Kode_Produk`,`Nama_Produk`,`Harga_Satuan`) values 
('AM-02','Amplas 2 Meter',2750),
('B-05','Asbes',88100),
('B-16','Seng',323800),
('B-17','Talang',52300),
('B-18','Kawat',75300),
('B-19','Bendrat',76200),
('B-20','Plamir',85800),
('B-21','Lem Putih',204600),
('B-22','Bahan Mebel',328600),
('B-23','Mesin Air/ Pompa Air',158600),
('B-24','Bor',5050),
('B-25','Mata Bor',5100),
('B-26','Kompon',326100),
('B-27','Lem talang',54600),
('B-28','Batako',77600),
('B-29','Alat Listrik',78500),
('BS-01','Batu Split 1 Karung',154000),
('BT-01','Batu Bata 1 Buah',450),
('C-10','Cat 10 Liter',73900),
('G-01','Genting 1 buah',500),
('K-01','Keramik 1 Kardus',321500),
('K-10','Kayu 10 Meter',324000),
('KC-10','Kaca 10 mm',73000),
('KL-10','Kabel Listrik 10 Meter',326300),
('PK-01','Paku 1 Kardus',83500),
('PS-01','Pasir 1 Karung',50000),
('PT-03','Pintu 3 Meter',202300),
('S-01','Semen 1 Sak',200000),
('T-10','Tiner 10 Liter',156300),
('T-500','Toren 500 Liter',2800);

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `Kode_Transaksi` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tanggal` date DEFAULT NULL,
  `Kode_Pelanggan` varchar(50) DEFAULT NULL,
  `Kode_Produk` text DEFAULT NULL,
  `Qty` bigint(20) DEFAULT NULL,
  `Total_Penjualan` bigint(20) DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  `Penjualan_Bersih` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Kode_Transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `transaksi` */

insert  into `transaksi`(`Kode_Transaksi`,`Tanggal`,`Kode_Pelanggan`,`Kode_Produk`,`Qty`,`Total_Penjualan`,`Diskon`,`Penjualan_Bersih`) values 
(1,'2023-01-03','NF-01','B-05',340,68000000,0.1,61200000),
(2,'2023-05-10','AN-02','B-10',140,52500000,0,52500000),
(3,'2023-05-10','CT-03','P-5',560,56000000,0.2,44800000),
(4,'2023-01-03','CT-03','P-10',230,42550000,0.1,38295000),
(5,'2023-05-10','AN-02','B-05',770,154000000,0.2,123200000),
(6,'2023-08-13','NF-01','B-10',780,292500000,0.2,234000000),
(7,'2023-05-10','AN-02','P-5',300,30000000,0.1,27000000),
(8,'2023-08-13','NF-01','P-10',790,146150000,0.2,116920000),
(9,'2023-01-03','CT-03','B-05',440,88000000,0.1,79200000),
(10,'2023-08-09','AN-02','B-10',130,48750000,0,48750000),
(11,'2023-08-09','NF-01','P-5',360,36000000,0.1,32400000),
(12,'2023-05-10','NF-01','P-10',120,22200000,0,22200000),
(13,'2023-01-03','AN-02','P-5',120,12000000,0,12000000),
(14,'2023-08-09','NF-01','P-10',720,133200000,0.2,106560000),
(15,'2023-05-10','CT-03','P-10',250,46250000,0.1,41625000),
(16,'2023-08-01','NZ-09','S-01',12,2400000,0.1,2160000),
(17,'2023-08-02','JL-13','BS-01',42,6468000,0.2,5174400),
(18,'2023-08-03','LU-16','K-01',23,7394500,0.2,5915600),
(19,'2023-08-04','PE-21','C-10',10,739000,0.1,665100),
(20,'2023-08-05','DT-24','PT-03',4,809200,0.2,647360),
(21,'2023-08-06','KC-28','AM-02',32,88000,0.2,70400),
(22,'2023-08-07','VG-31','B-17',52,2719600,0.1,2447640),
(23,'2023-08-08','NZ-09','B-21',31,6342600,0.2,5074080),
(24,'2023-08-09','LA-14','B-28',38,2948800,0.2,2359040),
(25,'2023-08-10','FV-19','BT-01',96,43200,0.1,38880),
(26,'2023-08-11','VA-23','KC-10',43,3139000,0.2,2511200),
(27,'2023-08-12','ND-26','KL-10',85,27735500,0.2,22188400),
(28,'2023-08-13','PZ-29','B-20',63,5405400,0.1,4864860),
(29,'2023-08-14','HL-34','B-24',54,272700,0.2,218160),
(30,'2023-08-15','ND-26','B-26',32,10435200,0.2,8348160);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
