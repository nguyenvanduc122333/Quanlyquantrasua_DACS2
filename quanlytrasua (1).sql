-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2021 lúc 05:35 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlytrasua`
--

DELIMITER $$
--
-- Các hàm
--
CREATE DEFINER=`root`@`localhost` FUNCTION `TinhTienTS` (`p_DonGia` INT, `p_Size` VARCHAR(3)) RETURNS INT(11) BEGIN
	if p_Size = 'M'
		THEN
			RETURN p_DonGia;
		END IF;
	RETURN p_DonGia + 5000;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethd`
--

CREATE TABLE `chitiethd` (
  `MaHD` varchar(50) NOT NULL,
  `MaDU` varchar(10) NOT NULL,
  `Size` varchar(10) NOT NULL,
  `ThoiGianThem` datetime(3) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `PhanTramDa` int(11) DEFAULT NULL,
  `PhanTramDuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethd`
--

INSERT INTO `chitiethd` (`MaHD`, `MaDU`, `Size`, `ThoiGianThem`, `SoLuong`, `PhanTramDa`, `PhanTramDuong`) VALUES
('2011220210001', 'DU0002', 'M', '2021-12-01 09:38:03.000', 1, 100, 100),
('2011220210001', 'DU0031', 'M', '2021-12-01 09:38:19.000', 1, 70, 50),
('2030520210001', 'DU0004', 'L', '2021-05-03 18:02:40.000', 1, 100, 100),
('2030520210001', 'DU0010', 'L', '2021-05-03 18:02:46.000', 1, 100, 100),
('2030520210002', 'DU0002', 'M', '2021-05-03 22:22:15.000', 1, 100, 100),
('2030520210002', 'DU0010', 'M', '2021-05-03 22:22:09.000', 1, 100, 100),
('2030520210002', 'DU0026', 'M', '2021-05-03 22:21:57.000', 1, 100, 100),
('2030620210001', 'DU0028', 'L', '2021-06-03 18:19:12.000', 3, 100, 100),
('2030620210002', 'DU0021', 'L', '2021-06-03 18:19:36.000', 2, 100, 100),
('2030620210002', 'DU0033', 'L', '2021-06-03 18:19:44.000', 1, 100, 100),
('2030620210003', 'DU0015', 'L', '2021-06-03 18:20:37.000', 1, 100, 100),
('2030620210003', 'DU0029', 'L', '2021-06-03 18:20:28.000', 2, 100, 100),
('2030620210004', 'DU0013', 'L', '2021-06-03 18:21:55.000', 2, 50, 100),
('2030620210004', 'DU0020', 'L', '2021-06-03 18:21:44.000', 2, 100, 100),
('2030720210001', 'DU0002', 'L', '2021-07-03 17:56:53.000', 1, 70, 100),
('2030720210001', 'DU0012', 'L', '2021-07-03 17:56:44.000', 2, 100, 100),
('2030720210002', 'DU0030', 'M', '2021-07-03 17:58:48.000', 1, 100, 100),
('2030720210002', 'DU0032', 'L', '2021-07-03 17:59:02.000', 1, 70, 100),
('2030720210003', 'DU0018', 'L', '2021-07-03 17:59:43.000', 3, 100, 100),
('2030820210001', 'DU0002', 'L', '2021-08-03 18:01:59.000', 2, 100, 100),
('20308202100010', 'DU0007', 'L', '2021-08-03 22:34:48.000', 2, 100, 70),
('2030820210002', 'DU0004', 'L', '2021-08-03 18:02:40.000', 1, 100, 100),
('2030820210002', 'DU0010', 'L', '2021-08-03 18:02:46.000', 1, 100, 100),
('2030820210003', 'DU0002', 'M', '2021-08-03 22:22:15.000', 1, 100, 100),
('2030820210003', 'DU0010', 'M', '2021-08-03 22:22:09.000', 1, 100, 100),
('2030820210003', 'DU0026', 'M', '2021-08-03 22:21:57.000', 1, 100, 100),
('2030820210004', 'DU0014', 'M', '2021-08-03 22:24:17.000', 2, 100, 100),
('2030820210005', 'DU0003', 'L', '2021-08-03 22:26:10.000', 1, 100, 70),
('2030820210005', 'DU0006', 'L', '2021-08-03 22:25:56.000', 1, 100, 100),
('2030820210006', 'DU0004', 'L', '2021-08-03 22:28:41.000', 1, 100, 100),
('2030820210006', 'DU0030', 'M', '2021-08-03 22:28:51.000', 1, 100, 100),
('2030820210008', 'DU0006', 'L', '2021-08-03 22:32:11.000', 1, 100, 100),
('2030820210008', 'DU0016', 'M', '2021-08-03 22:32:25.000', 1, 100, 100),
('2040320210001', 'DU0010', 'M', '2021-03-04 22:30:53.000', 1, 100, 100),
('2040320210001', 'DU0013', 'M', '2021-03-04 22:30:49.000', 1, 100, 100),
('2040520210001', 'DU0002', 'L', '2021-05-04 09:33:20.000', 2, 100, 100),
('2040520210001', 'DU0003', 'L', '2021-05-04 09:33:46.000', 1, 100, 100),
('2040620210001', 'DU0010', 'M', '2021-06-04 09:35:38.000', 2, 100, 100),
('2040620210002', 'DU0008', 'L', '2021-06-04 09:37:02.000', 1, 100, 100),
('2040620210002', 'DU0012', 'M', '2021-06-04 09:36:47.000', 1, 100, 100),
('2040620210003', 'DU0007', 'L', '2021-06-04 09:41:34.000', 2, 100, 100),
('2040720210001', 'DU0004', 'L', '2021-07-04 18:02:40.000', 1, 100, 100),
('2040720210001', 'DU0010', 'L', '2021-07-04 18:02:46.000', 1, 100, 100),
('2040720210002', 'DU0014', 'M', '2021-07-04 22:24:17.000', 2, 100, 100),
('2040720210003', 'DU0004', 'L', '2021-07-04 22:28:41.000', 1, 100, 100),
('2040720210003', 'DU0030', 'M', '2021-07-04 22:28:51.000', 1, 100, 100),
('2040720210004', 'DU0010', 'M', '2021-07-04 22:30:53.000', 1, 100, 100),
('2040720210004', 'DU0013', 'M', '2021-07-04 22:30:49.000', 1, 100, 100),
('2040720210005', 'DU0002', 'M', '2021-07-04 22:33:04.000', 1, 100, 100),
('2040720210005', 'DU0022', 'M', '2021-07-04 22:32:53.000', 1, 100, 100),
('2040820210001', 'DU0002', 'L', '2021-08-04 09:33:20.000', 2, 100, 100),
('2040820210001', 'DU0003', 'L', '2021-08-04 09:33:46.000', 1, 100, 100),
('2040820210003', 'DU0008', 'L', '2021-08-04 09:37:02.000', 1, 100, 100),
('2040820210003', 'DU0012', 'M', '2021-08-04 09:36:47.000', 1, 100, 100),
('2040820210004', 'DU0020', 'M', '2021-08-04 09:40:25.000', 1, 100, 100),
('2040820210004', 'DU0022', 'M', '2021-08-04 09:40:31.000', 1, 100, 100),
('2040820210008', 'DU0006', 'L', '2021-08-04 16:17:59.000', 5, 100, 100),
('2050420210001', 'DU0002', 'L', '2021-04-05 18:30:19.000', 3, 100, 100),
('2050520210001', 'DU0002', 'L', '2021-05-05 14:25:42.000', 5, 100, 100),
('2050620210001', 'DU0002', 'L', '2021-06-05 14:25:42.000', 5, 100, 100),
('2050620210002', 'DU0002', 'M', '2021-06-05 15:24:48.000', 1, 100, 100),
('2050620210002', 'DU0029', 'M', '2021-06-05 15:24:36.000', 1, 100, 100),
('2050820210001', 'DU0002', 'L', '2021-08-05 14:25:42.000', 5, 100, 100),
('2050820210002', 'DU0004', 'L', '2021-08-05 14:26:42.000', 2, 100, 100),
('2050820210003', 'DU0010', 'L', '2021-08-05 14:28:03.000', 3, 100, 100),
('2050820210004', 'DU0010', 'L', '2021-08-05 14:29:02.000', 1, 100, 100),
('2050820210004', 'DU0015', 'L', '2021-08-05 14:28:52.000', 2, 100, 100),
('2050820210004', 'DU0016', 'L', '2021-08-05 14:28:57.000', 1, 100, 100),
('2050820210005', 'DU0001', 'L', '2021-08-05 14:30:08.000', 1, 100, 100),
('2050820210005', 'DU0031', 'M', '2021-08-05 14:30:20.000', 1, 100, 100),
('2050820210006', 'DU0002', 'M', '2021-08-05 14:31:49.000', 2, 100, 100),
('2051020210002', 'DU0032', 'M', '2021-10-05 09:50:06.000', 2, 100, 50),
('2061020210001', 'DU0030', 'L', '2021-10-06 08:49:53.000', 6, 100, 100),
('2061020210001', 'DU0031', 'M', '2021-10-06 08:27:15.000', 3, 100, 100),
('2061020210001', 'DU0031', 'L', '2021-10-06 08:49:47.000', 7, 100, 100),
('2230820210001', 'DU0018', 'M', '2021-08-23 18:11:32.000', 3, 100, 100),
('2301120210001', 'DU0001', 'M', '2021-11-30 00:26:30.000', 1, 100, 100),
('2301120210001', 'DU0002', 'L', '2021-11-30 02:31:40.000', 3, 100, 70),
('2301120210002', 'DU0002', 'M', '2021-11-30 22:23:12.000', 1, 100, 100),
('2301120210002', 'DU0003', 'M', '2021-11-30 22:23:46.000', 1, 100, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cttopping`
--

CREATE TABLE `cttopping` (
  `MaHD` varchar(50) NOT NULL,
  `MaDU` varchar(10) NOT NULL,
  `ThoiGianThem` datetime(3) NOT NULL,
  `MaTP` varchar(10) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cttopping`
--

INSERT INTO `cttopping` (`MaHD`, `MaDU`, `ThoiGianThem`, `MaTP`, `SoLuong`) VALUES
('2011220210001', 'DU0002', '2021-12-01 09:38:03.000', 'TP0001', 1),
('2011220210001', 'DU0002', '2021-12-01 09:38:03.000', 'TP0002', 1),
('2011220210001', 'DU0002', '2021-12-01 09:38:03.000', 'TP0003', 1),
('2011220210001', 'DU0031', '2021-12-01 09:38:19.000', 'TP0001', 1),
('2011220210001', 'DU0031', '2021-12-01 09:38:19.000', 'TP0008', 1),
('2011220210001', 'DU0031', '2021-12-01 09:38:19.000', 'TP0012', 1),
('2030520210001', 'DU0004', '2021-05-03 18:02:40.000', 'TP0008', 1),
('2030620210003', 'DU0015', '2021-06-03 18:20:37.000', 'TP0007', 1),
('2030620210004', 'DU0013', '2021-06-03 18:21:55.000', 'TP0006', 2),
('2030620210004', 'DU0013', '2021-06-03 18:21:55.000', 'TP0007', 2),
('2030720210001', 'DU0002', '2021-07-03 17:56:53.000', 'TP0001', 1),
('2030720210001', 'DU0012', '2021-07-03 17:56:44.000', 'TP0007', 2),
('2030820210001', 'DU0002', '2021-08-03 18:01:59.000', 'TP0001', 2),
('2030820210001', 'DU0002', '2021-08-03 18:01:59.000', 'TP0015', 2),
('20308202100010', 'DU0007', '2021-08-03 22:34:48.000', 'TP0008', 2),
('2030820210002', 'DU0004', '2021-08-03 18:02:40.000', 'TP0008', 1),
('2030820210004', 'DU0014', '2021-08-03 22:24:17.000', 'TP0006', 2),
('2030820210005', 'DU0003', '2021-08-03 22:26:10.000', 'TP0001', 1),
('2030820210005', 'DU0006', '2021-08-03 22:25:56.000', 'TP0009', 1),
('2030820210006', 'DU0004', '2021-08-03 22:28:41.000', 'TP0001', 1),
('2030820210008', 'DU0006', '2021-08-03 22:32:11.000', 'TP0008', 1),
('2040520210001', 'DU0002', '2021-05-04 09:33:20.000', 'TP0013', 2),
('2040520210001', 'DU0003', '2021-05-04 09:33:46.000', 'TP0001', 1),
('2040620210002', 'DU0012', '2021-06-04 09:36:47.000', 'TP0015', 1),
('2040620210003', 'DU0007', '2021-06-04 09:41:34.000', 'TP0001', 2),
('2040720210001', 'DU0004', '2021-07-04 18:02:40.000', 'TP0008', 1),
('2040720210002', 'DU0014', '2021-07-04 22:24:17.000', 'TP0006', 2),
('2040720210003', 'DU0004', '2021-07-04 22:28:41.000', 'TP0001', 1),
('2040820210001', 'DU0002', '2021-08-04 09:33:20.000', 'TP0013', 2),
('2040820210001', 'DU0003', '2021-08-04 09:33:46.000', 'TP0001', 1),
('2040820210003', 'DU0012', '2021-08-04 09:36:47.000', 'TP0015', 1),
('2040820210008', 'DU0006', '2021-08-04 16:17:59.000', 'TP0001', 5),
('2050420210001', 'DU0002', '2021-04-05 18:30:19.000', 'TP0001', 3),
('2050520210001', 'DU0002', '2021-05-05 14:25:42.000', 'TP0001', 5),
('2050520210001', 'DU0002', '2021-05-05 14:25:42.000', 'TP0015', 5),
('2050620210001', 'DU0002', '2021-06-05 14:25:42.000', 'TP0001', 5),
('2050620210001', 'DU0002', '2021-06-05 14:25:42.000', 'TP0015', 5),
('2050820210001', 'DU0002', '2021-08-05 14:25:42.000', 'TP0001', 5),
('2050820210001', 'DU0002', '2021-08-05 14:25:42.000', 'TP0015', 5),
('2050820210002', 'DU0004', '2021-08-05 14:26:42.000', 'TP0015', 2),
('2050820210004', 'DU0015', '2021-08-05 14:28:52.000', 'TP0007', 2),
('2050820210005', 'DU0001', '2021-08-05 14:30:08.000', 'TP0004', 1),
('2050820210005', 'DU0031', '2021-08-05 14:30:20.000', 'TP0015', 1),
('2051020210002', 'DU0032', '2021-10-05 09:50:06.000', 'TP0003', 2),
('2051020210002', 'DU0032', '2021-10-05 09:50:06.000', 'TP0004', 2),
('2061020210001', 'DU0030', '2021-10-06 08:49:53.000', 'TP0003', 6),
('2061020210001', 'DU0030', '2021-10-06 08:49:53.000', 'TP0006', 6),
('2301120210001', 'DU0001', '2021-11-30 00:26:30.000', 'TP0001', 1),
('2301120210001', 'DU0001', '2021-11-30 00:26:30.000', 'TP0002', 1),
('2301120210001', 'DU0002', '2021-11-30 02:31:40.000', 'TP0001', 3),
('2301120210001', 'DU0002', '2021-11-30 02:31:40.000', 'TP0004', 3),
('2301120210001', 'DU0002', '2021-11-30 02:31:40.000', 'TP0008', 3),
('2301120210002', 'DU0002', '2021-11-30 22:23:12.000', 'TP0001', 1),
('2301120210002', 'DU0002', '2021-11-30 22:23:12.000', 'TP0004', 1),
('2301120210002', 'DU0002', '2021-11-30 22:23:12.000', 'TP0007', 1),
('2301120210002', 'DU0002', '2021-11-30 22:23:12.000', 'TP0011', 1),
('2301120210002', 'DU0002', '2021-11-30 22:23:12.000', 'TP0012', 1),
('2301120210002', 'DU0003', '2021-11-30 22:23:46.000', 'TP0001', 1),
('2301120210002', 'DU0003', '2021-11-30 22:23:46.000', 'TP0002', 1),
('2301120210002', 'DU0003', '2021-11-30 22:23:46.000', 'TP0003', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachquyen`
--

CREATE TABLE `danhsachquyen` (
  `IDNhom` varchar(20) NOT NULL,
  `IDQuyen` varchar(50) NOT NULL,
  `GhiChu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachquyen`
--

INSERT INTO `danhsachquyen` (`IDNhom`, `IDQuyen`, `GhiChu`) VALUES
('QUANLY', 'QUANLYDANHMUC', NULL),
('QUANLY', 'QUANLYHOADON', NULL),
('QUANLY', 'QUANLYNHANVIEN', NULL),
('QUANLY', 'QUANLYNHOMNHANVIEN', NULL),
('QUANLY', 'QUANLYPHANHOI', NULL),
('THUNGAN', 'QUANLYHOADON', NULL),
('THUNGAN', 'QUANLYPHANHOI', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `douong`
--

CREATE TABLE `douong` (
  `MaDU` varchar(10) NOT NULL,
  `TenDU` varchar(250) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `HinhAnh` varchar(250) NOT NULL,
  `NgayThem` datetime(3) NOT NULL,
  `BanChay` tinyint(4) NOT NULL,
  `MaLoaiDU` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `douong`
--

INSERT INTO `douong` (`MaDU`, `TenDU`, `DonGia`, `HinhAnh`, `NgayThem`, `BanChay`, `MaLoaiDU`) VALUES
('DU0001', 'Trà sữa matcha đậu đỏ', 20000, 'ts_matchadaudo.png', '2020-07-20 00:00:00.000', 1, 'TRASUA'),
('DU0002', 'Trà sữa truyền thống', 12000, 'ts_truyenthong.png', '2020-07-20 00:00:00.000', 0, 'TRASUA'),
('DU0003', 'Trà sữa socola', 12000, 'ts_socola.png', '2020-07-20 00:00:00.000', 0, 'TRASUA'),
('DU0004', 'Trà sữa khoai môn', 15000, 'ts_khoaimon.png', '2020-07-20 00:00:00.000', 0, 'TRASUA'),
('DU0005', 'Trà sữa trái cây', 12000, 'ts_traicay.png', '2020-07-20 00:00:00.000', 0, 'TRASUA'),
('DU0006', 'Trà sữa olong', 15000, 'ts_olong.png', '2020-07-20 00:00:00.000', 1, 'TRASUA'),
('DU0007', 'Trà sữa thái xanh', 12000, 'ts_thaixanh.png', '2020-07-20 00:00:00.000', 0, 'TRASUA'),
('DU0008', 'Trà sữa hoa lài', 15000, 'ts_hoalai.png', '2020-07-20 00:00:00.000', 1, 'TRASUA'),
('DU0009', 'Trà sữa matcha', 15000, 'ts_matcha.png', '2020-07-20 00:00:00.000', 0, 'TRASUA'),
('DU0010', 'Trà thái xanh chanh', 15000, 'ttc_trathaixanhchanh.png', '2020-07-20 00:00:00.000', 1, 'TRATRAICAY'),
('DU0011', 'Trà sen', 15000, 'ttc_trasen.png', '2020-07-20 00:00:00.000', 0, 'TRATRAICAY'),
('DU0012', 'Trà ổi hồng', 18000, 'ttc_traoihong.png', '2020-07-20 00:00:00.000', 1, 'TRATRAICAY'),
('DU0013', 'Hồng trà trái cây', 12000, 'ttc_hongtratraicay.png', '2020-07-20 00:00:00.000', 1, 'TRATRAICAY'),
('DU0014', 'Trà olong vải', 18000, 'ttc_traolongvai.png', '2020-07-20 00:00:00.000', 0, 'TRATRAICAY'),
('DU0015', 'Trà đào', 18000, 'ttc_tradao.png', '2020-07-20 00:00:00.000', 0, 'TRATRAICAY'),
('DU0016', 'Trà xoài', 15000, 'ttc_traxoai.png', '2020-07-20 00:00:00.000', 0, 'TRATRAICAY'),
('DU0017', 'Yogurt việt quốc', 22000, 'mk_yogurtvietquoc.png', '2020-07-20 00:00:00.000', 1, 'KHAC'),
('DU0018', 'Yogurt xoài', 22000, 'mk_yogurtxoai.png', '2020-07-20 00:00:00.000', 1, 'KHAC'),
('DU0019', 'Matcha oreo', 22000, 'mk_matchaoreo.png', '2020-07-20 00:00:00.000', 0, 'KHAC'),
('DU0020', 'Chocolate oreo', 22000, 'mk_chocolateoreo.png', '2020-07-20 00:00:00.000', 0, 'KHAC'),
('DU0021', 'Yogurt trân châu dâu', 22000, 'mk_yogurttranchaudau.png', '2020-07-20 00:00:00.000', 0, 'KHAC'),
('DU0022', 'Sữa tươi trân châu đường đen', 25000, 'mk_suatuoitranchauduongden.jpg', '2020-07-20 00:00:00.000', 0, 'KHAC'),
('DU0023', 'Milk shake', 15000, 'mk_milkshake.png', '2020-07-20 00:00:00.000', 1, 'KHAC'),
('DU0024', 'Soda mix', 15000, 'mk_sodamix.png', '2020-07-20 00:00:00.000', 0, 'KHAC'),
('DU0025', 'Trà olong creama', 22000, 'ks_traolongcreama.png', '2020-07-20 00:00:00.000', 0, 'KEMSUA'),
('DU0026', 'Trà đen creama', 22000, 'ks_tradencreama.png', '2020-07-20 00:00:00.000', 1, 'KEMSUA'),
('DU0027', 'Lục trà creama', 22000, 'ks_luctracreama.png', '2020-07-20 00:00:00.000', 1, 'KEMSUA'),
('DU0028', 'Hồng trà creama', 20000, 'ks_hongtracreama.png', '2020-07-20 00:00:00.000', 0, 'KEMSUA'),
('DU0029', 'Trà sen creama', 25000, 'ks_trasencreama.png', '2020-07-20 00:00:00.000', 0, 'KEMSUA'),
('DU0030', 'Chocolate milk shake jelly', 23000, 'dudb_chocolatemilkshakejelly.png', '2020-07-20 00:00:00.000', 0, 'DOUONGDACBIET'),
('DU0031', 'Hồng trà chanh xí muội QQ', 23000, 'dudb_hongtraxanhximuoiqq.jpg', '2020-07-20 00:00:00.000', 0, 'DOUONGDACBIET'),
('DU0032', 'Trà sữa lài trứng đậu đỏ', 25000, 'dudb_trasualaitrungdaudo.png', '2020-07-20 00:00:00.000', 1, 'DOUONGDACBIET'),
('DU0033', 'Lục trà xoài macchiato', 25000, 'dudb_luctraxoaimacchiato.png', '2020-07-20 00:00:00.000', 0, 'DOUONGDACBIET'),
('DU0034', 'Chocolate oreo đường đen creama', 25000, 'dudb_chocolateoreoduongdencreama.png', '2020-07-20 00:00:00.000', 1, 'DOUONGDACBIET');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(50) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `Sdt` varchar(20) NOT NULL,
  `DiaChi` varchar(250) NOT NULL,
  `GhiChu` varchar(250) DEFAULT NULL,
  `TongTien` int(11) NOT NULL,
  `NgayLap` datetime(3) NOT NULL,
  `TinhTrang` int(11) NOT NULL,
  `MaNV` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `HoTen`, `Sdt`, `DiaChi`, `GhiChu`, `TongTien`, `NgayLap`, `TinhTrang`, `MaNV`) VALUES
('2011220210001', 'Mạnh', '0123456789', 'Đà Nẵng', '', 69000, '2021-12-01 09:38:49.000', 1, NULL),
('2030520210001', 'Lê Kiều Thu Trang', '0365478474', 'Cam Sơn', '', 45000, '2021-05-03 18:03:05.000', 2, 'NV0002'),
('2030520210002', 'Nguyễn Tiến Kiệt', '0334370822', 'Cam Sơn 1', '', 49000, '2021-05-03 22:23:36.000', 2, 'NV0002'),
('2030620210001', 'Hồng', '0334370855', '22 Nguyễn Đình Chiểu, Nha Trang', '', 75000, '2021-06-03 18:19:27.000', 2, 'NV0002'),
('2030620210002', 'Tân', '0347189290', '66 Dương Văn Nga, Nha Trang', '', 84000, '2021-06-03 18:20:18.000', 2, 'NV0002'),
('2030620210003', 'VA', '0334370822', '65 Ngô Đến, Nha Trang', '', 88000, '2021-06-03 18:21:04.000', 2, 'NV0002'),
('2030620210004', 'Hưng', '0337491910', '129 đường 2/4, Nha Trang', 'Nhanh nhé', 108000, '2021-06-03 18:22:33.000', 2, 'NV0002'),
('2030720210001', 'Trí', '0365062796', '2 Nguyễn Đình Chiểu, Nha Trang', NULL, 76000, '2021-07-03 17:57:45.000', 2, 'NV0002'),
('2030720210002', 'Đức', '0123457181', '54 Đặng Tất, Nha Trang', NULL, 53000, '2021-07-03 17:59:30.000', 2, 'NV0002'),
('2030720210003', 'Ân', '0365810381', '48 Lê Hồng Phong, Nha Trang', NULL, 81000, '2021-07-03 18:00:15.000', 2, 'NV0002'),
('2030820210001', 'Đỗ Xuân Huy', '0347504574', 'Ninh Thủy 1', '', 50000, '2021-08-03 18:02:25.000', 2, 'NV0002'),
('20308202100010', 'Hồ Trọng Mỹ Thuận', '09744400255', 'Cam Phước 2', '', 44000, '2021-08-03 22:35:07.000', 2, 'NV0002'),
('2030820210002', 'Lê Kiều Thu Trang', '0365478474', 'Cam Sơn', '', 45000, '2021-08-03 18:03:05.000', 2, 'NV0002'),
('2030820210003', 'Nguyễn Tiến Kiệt', '0334370822', 'Cam Sơn 1', '', 49000, '2021-08-03 22:23:36.000', 2, 'NV0002'),
('2030820210004', 'Nguyễn Văn Hùng', '0979417744', 'Cam Phước 1', '', 46000, '2021-08-03 22:24:42.000', 2, 'NV0002'),
('2030820210005', 'Trần Quốc Trung', '0334371722', 'Chợ mới, Cam Ranh', '', 45000, '2021-08-03 22:28:22.000', 2, 'NV0002'),
('2030820210006', 'Lê Thị Kiều Dung', '0334374755', 'Chua Núi 1, Cam Ranh', '', 46000, '2021-08-03 22:29:37.000', 2, 'NV0002'),
('2030820210008', 'Bùi Thị Trang', '0979447755', 'Nha Trang', '', 40000, '2021-08-03 22:32:40.000', 2, 'NV0002'),
('2040320210001', 'Nguyễn Minh Khôi', '0334784744', 'Sài Gòn', '', 27000, '2021-03-04 22:31:23.000', 2, 'NV0002'),
('2040520210001', 'Đặng Thị Kiều Trâm', '0334370811', 'Đường 2/4', '', 64000, '2021-05-04 09:34:48.000', 2, 'NV0002'),
('2040620210001', 'Tạ Thị Mỹ Trinh', '0324754478', 'Đường Nguyễn Khuyến', '', 30000, '2021-06-04 09:36:09.000', 2, 'NV0002'),
('2040620210002', 'Nguyễn Thị Thanh Thúy', '0337487774', 'Đường Nguyễn Trãi', '', 43000, '2021-06-04 09:37:29.000', 2, 'NV0002'),
('2040620210003', 'Nguyễn Thị Hồng Điệp', '0337487755', 'Cam Phước, Nha Trang', '', 40000, '2021-06-04 09:41:57.000', 2, 'NV0002'),
('2040720210001', 'Mang Bảo', '0355478474', 'Cam Phúc Nam', '', 45000, '2021-07-04 18:03:05.000', 2, 'NV0002'),
('2040720210002', 'Nguyễn Văn Hùng', '0979417744', 'Cam Phước 1', '', 46000, '2021-07-04 22:24:42.000', 2, 'NV0002'),
('2040720210003', 'Lê Thị Kiều Dung', '0334374755', 'Chua Núi 1, Cam Ranh', '', 46000, '2021-07-04 22:29:37.000', 2, 'NV0002'),
('2040720210004', 'Nguyễn Minh Khôi', '0334784744', 'Sài Gòn', '', 27000, '2021-07-04 22:31:23.000', 2, 'NV0002'),
('2040720210005', 'Bùi Văn Thống', '0979441122', 'Ngã 3 đồng lát', '', 37000, '2021-07-04 22:33:58.000', 2, 'NV0002'),
('2040820210001', 'Đặng Thị Kiều Trâm', '0334370811', 'Đường 2/4', '', 64000, '2021-08-04 09:34:48.000', 2, 'NV0002'),
('2040820210003', 'Nguyễn Thị Thanh Thúy', '0337487774', 'Đường Nguyễn Trãi', '', 43000, '2021-08-04 09:37:29.000', 2, 'NV0002'),
('2040820210004', 'Phan Thị Lệ Quyên', '0335374877', 'Bưu Điện Nha Trang', '', 47000, '2021-08-04 09:41:01.000', 2, 'NV0002'),
('2040820210008', 'Nguyễn Hoàng Long', '0336474885', 'Nguyễn Khuyến, Nha Trang', '', 115000, '2021-08-04 16:18:36.000', 2, 'NV0002'),
('2050420210001', 'Lê Kiều Thu Trang', '0334370822', 'Cam Sơn 1', '', 60000, '2021-04-05 18:47:54.000', 2, 'NV0002'),
('2050520210001', 'Phạm Thị Hâu', '0334748022', 'Bưu Điện Nha Trang, Khánh Hòa', '', 125000, '2021-05-05 14:26:30.000', 2, 'NV0002'),
('2050620210001', 'Phạm Thị Hâu', '0334748022', 'Bưu Điện Nha Trang, Khánh Hòa', '', 125000, '2021-06-05 14:26:30.000', 2, 'NV0002'),
('2050620210002', 'Lê Na', '0334370823', 'Chùa Tịnh Xá, Nha Trang', '', 37000, '2021-06-05 15:25:07.000', 2, 'NV0002'),
('2050820210001', 'Phạm Thị Hâu', '0334748022', 'Bưu Điện Nha Trang, Khánh Hòa', '', 125000, '2021-08-05 14:26:30.000', 2, 'NV0002'),
('2050820210002', 'Tô Lại Huỳnh Như', '0334370577', 'Chợ Mới, Nha Trang', 'ship từ 3h - 4h chiều nay', 50000, '2021-08-05 14:27:40.000', 2, 'NV0002'),
('2050820210003', 'Nguyễn Hoài Trâm', '0334370244', 'Chợ Cư Xá, Nha Trang', '', 60000, '2021-08-05 14:28:26.000', 2, 'NV0002'),
('2050820210004', 'Bùi Thị Kim Yến', '0334745844', 'Cam Phước 4, Nha Trang', '', 96000, '2021-08-05 14:29:52.000', 2, 'NV0002'),
('2050820210005', 'Nguyễn Thị Lan Anh', '0324875594', 'Chợ số 3, Nha Trang', 'tới nơi gọi, sẽ ra lấy', 61000, '2021-08-05 14:31:20.000', 2, 'NV0002'),
('2050820210006', 'Nguyễn Minh Thư', '0978475585', '66/1B Nguyễn Khuyến, Nha Trang', '', 24000, '2021-08-05 14:32:35.000', 2, 'NV0002'),
('2051020210002', 'Nguyễn Văn Trí', '0365062796', 'Cam Ranh', '', 82000, '2021-10-05 09:50:22.000', 0, NULL),
('2061020210001', 'Hà', '0334370822', 'Nha Trang', 'Đơn khủng', 511000, '2021-10-06 08:50:47.000', 0, NULL),
('2230820210001', 'Hà Thanh', '0123457181', '81 Lê Hồng Phong', NULL, 66000, '2021-08-23 18:12:14.000', 2, 'NV0002'),
('2301120210001', 'duc', '1111', '111', '2', 132000, '2021-11-30 02:32:08.000', 1, NULL),
('2301120210002', 'Văn Đức', '012345678', 'Ngũ Hành Sơn', '', 71000, '2021-11-30 22:25:22.000', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaidouong`
--

CREATE TABLE `loaidouong` (
  `MaLoaiDU` varchar(20) NOT NULL,
  `TenLoaiDU` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaidouong`
--

INSERT INTO `loaidouong` (`MaLoaiDU`, `TenLoaiDU`) VALUES
('DOUONGDACBIET', 'Đồ uống đặc biệt'),
('KEMSUA', 'Kem sữa'),
('KHAC', 'Món khác'),
('TRASUA', 'Trà sữa'),
('TRATRAICAY', 'Trà trái cây');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitopping`
--

CREATE TABLE `loaitopping` (
  `MaLoaiTP` varchar(10) NOT NULL,
  `TenLoaiTP` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaitopping`
--

INSERT INTO `loaitopping` (`MaLoaiTP`, `TenLoaiTP`) VALUES
('HAT', 'Hạt'),
('KHAC', 'Khác'),
('THACH', 'Thạch'),
('TRANCHAU', 'Trân châu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `maNV` varchar(10) NOT NULL,
  `tenNV` varchar(50) NOT NULL,
  `gioiTinh` tinyint(4) NOT NULL,
  `ngaySinh` date NOT NULL,
  `diaChi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `hinhAnh` varchar(250) NOT NULL,
  `IDNhom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`maNV`, `tenNV`, `gioiTinh`, `ngaySinh`, `diaChi`, `email`, `password`, `sdt`, `hinhAnh`, `IDNhom`) VALUES
('NV0001', 'Lê Đức Mạnh', 1, '2002-12-22', 'Đà Nẵng', 'ldmanh.20it9@vku.udn.vn', '81dc9bdb52d04dc20036dbd8313ed055', '0334370823', 'manh.jpg', 'ADMIN'),
('NV0002', 'Nguyễn Văn Trí', 1, '1999-10-17', 'Đà Nẵng', 'tri123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0365062796', 'nhan-vien-giao-hang.jpg', 'SHIPPER'),
('NV0003', 'Nguyễn Văn Đức', 1, '2002-04-03', 'Đà Nẵng', 'nvduc.20it9@vku.udn.vn', '81dc9bdb52d04dc20036dbd8313ed055', '0234567891', 'long_avatar.jpg', 'QUANLY'),
('NV0004', 'Nguyễn Tiến Bảo', 1, '2001-01-13', 'Đà Nẵng', 'bao@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0372978074', 'nhan-vien-thu-ngan.jpg', 'THUNGAN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomnhanvien`
--

CREATE TABLE `nhomnhanvien` (
  `IDNhom` varchar(20) NOT NULL,
  `TenNhom` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhomnhanvien`
--

INSERT INTO `nhomnhanvien` (`IDNhom`, `TenNhom`) VALUES
('ADMIN', 'Quản trị hệ thống'),
('QUANLY', 'Quản lý'),
('SHIPPER', 'Nhân viên giao hàng'),
('THUNGAN', 'Thu ngân');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `id` int(11) NOT NULL,
  `hoTen` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `noiDung` varchar(500) NOT NULL,
  `ngayGui` date NOT NULL,
  `tinhTrang` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phanhoi`
--

INSERT INTO `phanhoi` (`id`, `hoTen`, `sdt`, `email`, `noiDung`, `ngayGui`, `tinhTrang`) VALUES
(2, 'Nguyễn Hoàng Đức', '0773340089', 'nvduc.20it9@vku.udn.vn', 'Chất lượng tuyệt vời !', '2021-12-01', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `IDQuyen` varchar(50) NOT NULL,
  `TenQuyen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`IDQuyen`, `TenQuyen`) VALUES
('PHANQUYEN', 'Phân quyền'),
('QUANLYDANHMUC', 'Quản lý danh mục'),
('QUANLYHOADON', 'Quản lý hóa đơn'),
('QUANLYNHANVIEN', 'Quản lý nhân viên'),
('QUANLYNHOMNHANVIEN', 'Quản lý nhóm nhân viên'),
('QUANLYPHANHOI', 'Quản lý phản hồi'),
('SHIPPER', 'Giao đơn hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topping`
--

CREATE TABLE `topping` (
  `MaTP` varchar(10) NOT NULL,
  `TenTP` varchar(250) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `HinhAnh` varchar(250) NOT NULL,
  `MaLoaiTP` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `topping`
--

INSERT INTO `topping` (`MaTP`, `TenTP`, `DonGia`, `HinhAnh`, `MaLoaiTP`) VALUES
('TP0001', 'Trân châu đen', 3000, 'tc_tranchauden.png', 'TRANCHAU'),
('TP0002', 'Kem sữa', 10000, 'k_kemsua.png', 'KHAC'),
('TP0003', 'Hạt sen', 8000, 'k_hatsen.png', 'KHAC'),
('TP0004', 'Đậu đỏ', 8000, 'k_daudo.png', 'KHAC'),
('TP0005', 'Khúc bạch', 5000, 'k_khucbach.png', 'KHAC'),
('TP0006', 'Trái vải', 5000, 'k_traivai.png', 'KHAC'),
('TP0007', 'Đào miếng', 5000, 'k_daomieng.png', 'KHAC'),
('TP0008', 'Pudding', 5000, 'k_pudding.png', 'KHAC'),
('TP0009', 'Hạt thủy tinh', 5000, 'h_hatthuytinh.png', 'HAT'),
('TP0010', 'Trân châu đường đen', 5000, 'tc_tranchauduongden.png', 'TRANCHAU'),
('TP0011', 'Hạt 3Q', 5000, 'h_hat3q.png', 'HAT'),
('TP0012', 'Thạch phô mai', 5000, 't_thachphomai.png', 'THACH'),
('TP0013', 'Thạch trái cây', 5000, 't_thachtraicay.png', 'THACH'),
('TP0014', 'Thạch nha đam', 5000, 't_thachnhadam.png', 'THACH'),
('TP0015', 'Trân châu trắng', 5000, 'tc_tranchautrang.png', 'TRANCHAU');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD PRIMARY KEY (`MaHD`,`MaDU`,`ThoiGianThem`),
  ADD KEY `cthd_du_fk` (`MaDU`);

--
-- Chỉ mục cho bảng `cttopping`
--
ALTER TABLE `cttopping`
  ADD PRIMARY KEY (`MaHD`,`MaDU`,`ThoiGianThem`,`MaTP`),
  ADD KEY `cttp_tp_fk` (`MaTP`);

--
-- Chỉ mục cho bảng `danhsachquyen`
--
ALTER TABLE `danhsachquyen`
  ADD PRIMARY KEY (`IDNhom`,`IDQuyen`),
  ADD KEY `dsq_q_fk` (`IDQuyen`);

--
-- Chỉ mục cho bảng `douong`
--
ALTER TABLE `douong`
  ADD PRIMARY KEY (`MaDU`),
  ADD KEY `du_ldu_fk` (`MaLoaiDU`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `hd_nv_fk` (`MaNV`);

--
-- Chỉ mục cho bảng `loaidouong`
--
ALTER TABLE `loaidouong`
  ADD PRIMARY KEY (`MaLoaiDU`);

--
-- Chỉ mục cho bảng `loaitopping`
--
ALTER TABLE `loaitopping`
  ADD PRIMARY KEY (`MaLoaiTP`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`maNV`),
  ADD KEY `nv_nnv_fk` (`IDNhom`);

--
-- Chỉ mục cho bảng `nhomnhanvien`
--
ALTER TABLE `nhomnhanvien`
  ADD PRIMARY KEY (`IDNhom`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`IDQuyen`);

--
-- Chỉ mục cho bảng `topping`
--
ALTER TABLE `topping`
  ADD PRIMARY KEY (`MaTP`),
  ADD KEY `tp_ltp_fk` (`MaLoaiTP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD CONSTRAINT `cthd_du_fk` FOREIGN KEY (`MaDU`) REFERENCES `douong` (`MaDU`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cthd_hd_fk` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cttopping`
--
ALTER TABLE `cttopping`
  ADD CONSTRAINT `cttp_cthd` FOREIGN KEY (`MaHD`,`MaDU`,`ThoiGianThem`) REFERENCES `chitiethd` (`MaHD`, `MaDU`, `ThoiGianThem`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cttp_tp_fk` FOREIGN KEY (`MaTP`) REFERENCES `topping` (`MaTP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachquyen`
--
ALTER TABLE `danhsachquyen`
  ADD CONSTRAINT `dsq_nnv_fk` FOREIGN KEY (`IDNhom`) REFERENCES `nhomnhanvien` (`IDNhom`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dsq_q_fk` FOREIGN KEY (`IDQuyen`) REFERENCES `quyen` (`IDQuyen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `douong`
--
ALTER TABLE `douong`
  ADD CONSTRAINT `du_ldu_fk` FOREIGN KEY (`MaLoaiDU`) REFERENCES `loaidouong` (`MaLoaiDU`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hd_nv_fk` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`maNV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nv_nnv_fk` FOREIGN KEY (`IDNhom`) REFERENCES `nhomnhanvien` (`IDNhom`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `topping`
--
ALTER TABLE `topping`
  ADD CONSTRAINT `tp_ltp_fk` FOREIGN KEY (`MaLoaiTP`) REFERENCES `loaitopping` (`MaLoaiTP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
