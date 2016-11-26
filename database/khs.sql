# Host: localhost  (Version: 5.6.20)
# Date: 2016-08-21 09:47:51
# Generator: MySQL-Front 5.2  (Build 5.66)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;

DROP DATABASE IF EXISTS `khs`;
CREATE DATABASE `khs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `khs`;

#
# Source for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES ('admin1','$2y$10$7g9TFyZa.tLs8pvRRSo3QeUTmqVv7iNwlqGu/ZYTr.zx1Sw4id4wq','Mahfud','Bulu4auokl687xl3z9jmohvr2uzp0tybme.jpg');

#
# Source for table "detil_ujian"
#

DROP TABLE IF EXISTS `detil_ujian`;
CREATE TABLE `detil_ujian` (
  `id_detil` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `nim` char(10) NOT NULL,
  `nilai_uts` int(11) NOT NULL,
  `nilai_uas` int(11) NOT NULL,
  `nilai_tugas` int(11) NOT NULL,
  `nilai_absen` int(11) NOT NULL,
  PRIMARY KEY (`id_detil`),
  KEY `id_ujian` (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Data for table "detil_ujian"
#

INSERT INTO `detil_ujian` VALUES (3,2,'1411502486',0,0,0,0),(4,2,'1411502493',89,74,87,100),(5,1,'1411502486',0,0,0,0),(6,1,'1411502493',90,70,80,80),(7,3,'1411502493',0,0,0,0),(8,1,'1411501111',0,0,0,0);

#
# Source for table "dosen"
#

DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen` (
  `nid` int(10) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `jk` varchar(6) NOT NULL,
  `alamat_dosen` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "dosen"
#

INSERT INTO `dosen` VALUES (1411100100,'Ari Untung ','Pria','Jalan Merak Kabur No 1213','$2y$10$wK2LW5HfM2f31jiDo4aNTufxHj/ftDoEBNhbap9/Kcs.ugXKixbC6','aria@gmail.comcom','Manga Browserx4c6ity8awzt87g874057s9va2socn.jpg'),(1411203203,'Yunita Astuti','Wanita','Jalan Sendal Putus','$2y$10$wK2LW5HfM2f31jiDo4aNTufxHj/ftDoEBNhbap9/Kcs.ugXKixbC6','yunita@gmail.com','');

#
# Source for table "mahasiswa"
#

DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa` (
  `nim` int(10) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `jk` varchar(6) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(8) NOT NULL,
  `nama_ortu` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "mahasiswa"
#

INSERT INTO `mahasiswa` VALUES (1411501111,'Bejo','Pria','Tangerang','2016-08-02','Islam','Yuni','Ciledug','08080808080','','$2y$10$.21h0EyJecvkESwT75oXAOqi3b8iEU/DQjfgH7erQLozjeU3tyssy','asd@asd.com'),(1411502222,'Jono','Pria','Tangerang','2004-12-31','Katolik','Yini','Tangerang Selatan','98938293','','$2y$10$LgUcYW8B2zAzaHT8lrEZO.8zxmgl6F93zxYjFcI2SgVPsY7X/XHPO','asdasd@asd.com'),(1411502486,'Yunita Cristiani','Wanita','bandung','1996-10-10','Kristen','Andi Gundogan','Jalan Cempaka putih, RT 001/003, Kali Bata, Kota Tangerang','0878812341','pass1.jpg','$2y$10$TOTxDk6DLsN9KXgO/e6R8OaH1uZekWQLeM7.4Y1qAReRJ3EJKliHG',''),(1411502493,'Ali Topan','Pria','Tangerang','1996-11-22','Islam','Ahmad Sobirin','Pondok Asem, RT 001/001, Sepatan Timur, Kab. Tangerang','087812035532','otakon5d9dcayydm4mjgaj141t8v7nl2tjnx.jpg','$2y$10$TOTxDk6DLsN9KXgO/e6R8OaH1uZekWQLeM7.4Y1qAReRJ3EJKliHG','alitopan12@yahoo.com');

#
# Source for table "matkul"
#

DROP TABLE IF EXISTS `matkul`;
CREATE TABLE `matkul` (
  `kode_matkul` char(5) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  PRIMARY KEY (`kode_matkul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "matkul"
#

INSERT INTO `matkul` VALUES ('KP001','Pemrograman Berorientasi Objek',3),('KP002','Pemrograman Web',3),('KP003','Sistem Operasi',3),('KP004','Algoritma dan Struktur Data 1',3),('KP005','Interpersonal Skill',2),('KP006','Teori Bahasa dan Otomata',3);

#
# Source for table "ujian"
#

DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `tgl_ujian` date NOT NULL,
  `kode_matkul` char(5) NOT NULL,
  `nid` char(10) NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "ujian"
#

INSERT INTO `ujian` VALUES (1,'2016-07-21','KP001','1411100100'),(2,'2016-08-11','KP002','1411100100'),(3,'0000-00-00','KP003','1411100100');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
