-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 29, 2021 lúc 04:08 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webhotrosinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhhocmay`
--

CREATE TABLE `anhhocmay` (
  `ID` int(50) NOT NULL,
  `MaKH` int(50) NOT NULL,
  `LinkAnh1` varchar(100) NOT NULL,
  `LinkAnh2` varchar(100) NOT NULL,
  `LinkAnh3` varchar(100) NOT NULL,
  `LinkAnh4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `anhhocmay`
--

INSERT INTO `anhhocmay` (`ID`, `MaKH`, `LinkAnh1`, `LinkAnh2`, `LinkAnh3`, `LinkAnh4`) VALUES
(1, 6, 'https://drive.google.com/thumbnail?id=1PzaWpXRJBxj8Zvms--A_Uzl0ZHPMx4dW', 'https://drive.google.com/thumbnail?id=1LB2_l8Trm72Pz5zxWRK5uS06_P393Doe', 'https://drive.google.com/thumbnail?id=1t53s-pQWyxljqTPOwlWEfuxNf7KELdxs', 'https://drive.google.com/thumbnail?id=1DD-4ntTLxRAgux12E8sJDb4hyEGq5FHN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `capbac`
--

CREATE TABLE `capbac` (
  `MaCB` int(50) NOT NULL,
  `TenCB` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `capbac`
--

INSERT INTO `capbac` (`MaCB`, `TenCB`) VALUES
(1, 'Cấp 1'),
(2, 'Cấp 2'),
(3, 'Cấp 3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoahon`
--

CREATE TABLE `chitiethoahon` (
  `Id` int(50) NOT NULL,
  `MaHD` int(50) NOT NULL,
  `MaKhoaHoc` int(50) DEFAULT NULL,
  `MaTL` int(50) DEFAULT NULL,
  `SoLuong` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoahon`
--

INSERT INTO `chitiethoahon` (`Id`, `MaHD`, `MaKhoaHoc`, `MaTL`, `SoLuong`) VALUES
(11, 13, 1, NULL, 3),
(12, 13, 2, NULL, 1),
(13, 14, 1, NULL, 3),
(14, 14, 2, NULL, 1),
(15, 15, 2, NULL, 1),
(16, 15, 1, NULL, 1),
(17, 16, 1, NULL, 1),
(18, 17, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `MaCD` int(50) NOT NULL,
  `TenCD` varchar(100) NOT NULL,
  `AnhCD` varchar(100) NOT NULL,
  `IconCD` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`MaCD`, `TenCD`, `AnhCD`, `IconCD`) VALUES
(1, 'Toán học', 'https://drive.google.com/uc?export=view&id=1qguu18fFw3TIwlApc9LSCZVQL1-4YYhE', 'https://drive.google.com/uc?export=view&id=1z37T0D_r1QBJtfdBrrMivJP202Tthusv'),
(2, 'Văn học', 'https://drive.google.com/uc?export=view&id=1t-Y1upSUZH7Z7lW6bFqNoSK2l0uB5FOc', 'https://drive.google.com/uc?export=view&id=1uqY5uhibKrOW3UWNoqtzVx2dcxM4irHx'),
(3, 'Vật lý', 'https://drive.google.com/uc?export=view&id=1FVrEZPHroBareNszYGYkiczLPIBUp61j', 'https://drive.google.com/uc?export=view&id=1P3lIOfWkJqaUWWZtOXqHHIJ-qruDCeYv'),
(4, 'Địa lý', 'https://drive.google.com/uc?export=view&id=1zxxhM9zpsDoTOKnv2UDzhcgUMgR5-GUa', ''),
(5, 'Sinh học', 'https://drive.google.com/uc?export=view&id=1DGjCA34fUp7fyDM_EFSYK83kJ_SBf2zs', ''),
(7, 'Tin học', 'https://drive.google.com/uc?export=view&id=1dWW_g29SYXmPvDmBhASy3gUl3xPvUuJx', 'https://drive.google.com/uc?export=view&id=1Nx-fiURlqR_pCmEQDmpXutKbg45xDlCK'),
(8, 'Giáo dục công dân', 'https://drive.google.com/uc?export=view&id=15IyuT7RShEpSKSirIyxzKdK9vklty_IX', ''),
(10, 'Công nghệ', 'https://drive.google.com/uc?export=view&id=1sPfsjQS1P3u0ZW5dQdxKXr_nXKxkOkSO', ''),
(11, 'Ngoại ngữ', 'https://drive.google.com/uc?export=view&id=1jqH4hPlxK2wXNJNE6nKCFq5dgQg9CPPZ', ''),
(12, 'Hóa học', 'https://drive.google.com/uc?export=view&id=1i67zkpoUcdtPSHXtVrkgpPoiT_eNnqaB', ''),
(13, 'Lịch sử', 'https://drive.google.com/uc?export=view&id=1iew9B2RhPkvlqnEPARY_i9wjGdMTcvLG', 'https://drive.google.com/uc?export=view&id=1-mfNgqUKqylZGabSkodUJatOTPUwQyOx');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `MaGV` int(50) NOT NULL,
  `NoiCongTac` varchar(100) NOT NULL,
  `TrinhDo` varchar(100) NOT NULL,
  `KinhNghiem` int(50) NOT NULL,
  `GioiThieuBanThan` varchar(1000) NOT NULL,
  `GioiThieuNgheNghiep` varchar(1000) NOT NULL,
  `GioiThieuKinhNghiem` varchar(1000) NOT NULL,
  `MaKH` int(50) NOT NULL,
  `MaCB` int(50) NOT NULL,
  `SoLuongHV` int(50) NOT NULL,
  `ChuyenNganh` varchar(100) NOT NULL,
  `SoLuongKH` int(11) NOT NULL,
  `TrangThai` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`MaGV`, `NoiCongTac`, `TrinhDo`, `KinhNghiem`, `GioiThieuBanThan`, `GioiThieuNgheNghiep`, `GioiThieuKinhNghiem`, `MaKH`, `MaCB`, `SoLuongHV`, `ChuyenNganh`, `SoLuongKH`, `TrangThai`) VALUES
(2, 'Đại học công nghiệp thực phẩm TP.HCM', 'Thạc sĩ', 3, 'Giảng viên Đặng Trọng Khang là người có thâm niên đầu tư thực tế gần 15 năm trong thị trường chứng khoán', 'Người chia sẻ về Phương pháp đầu tư chứng khoán theo Luật Nhân Quả - Causality Investing', 'Chuyên gia chứng khoán tại NIK Capital. CEO CTCP Minh Bảo Tín. Trưởng VPDD Bình Dương - Cty chứng khoán Vietcombank (2016 - 2018). Từ 2014 đến nay, đã chia sẻ cho hơn 65.000 lượt người về đầu tư chứng khoán qua các khoá học kinh doanh \"đỉnh cao\". Là diễn giả về đầu tư cổ phiếu được đánh giá cao tại Việt Nam. Được mời đứng chung sân khấu với nhiều doanh nhân - diễn giả hàng đầu như Thầy John C.Maxwell, Thầy Mark Victor Hansen, Doanh nhân Phạm Đình Đoàn, Doanh nhân Đỗ Cao Bảo, Thầy Nguyễn Thành Tiến...', 6, 3, 500, 'Kinh tế', 21, 0),
(13, 'THPT Lý Thường Kiệt', 'Đại học', 4, 'tốt nghiệp trường Đại học Dược Hà Nội', 'từng làm việc trong các tập đoàn dược phẩm nổi tiếng của Bỉ ', 'đã gắn bó với việc dạy học trong hơn 10 năm qua. ', 13, 3, 0, 'Toán', 0, 0),
(14, 'THCS Lê Quý Đôn', 'Đại học', 6, 'không chỉ cung cấp cho học sinh những kiến thức cốt lõi mà còn là chuyên gia tư vấn tâm lí cho các em học sinh trên khắp mọi miền tổ quốc', 'tốt nghiệp trường Đại học Khoa học Tự nhiên chuyên ngành Hóa học', 'từng là cán bộ nghiên cứu phòng Hóa sinh Protein – Viện Công nghệ Sinh học – Viện Khoa học và Công nghệ Việt Nam', 14, 3, 0, 'hoá học', 0, 0),
(15, 'Tiểu Học Thị Trấn A', 'Cao Đẳng', 5, 'giáo viên tiểu học', 'dạy các môn toán, văn học cho trẻ từ lớp 5 trở xuống', 'đã có 5 năm kinh nghiệm trong ngành giáo dục trẻ em', 15, 1, 0, 'giáo dục', 0, 0),
(16, 'THCS Lê Văn Tám', 'Đại Học', 2, 'Từng là giáo viên xuất sắc cấp tỉnh, tốt nghiệp đại học sư phạm', 'Giáo viên dạy vật lý cấp 2', 'có 4 năm trong nghề giáo', 16, 2, 0, 'Sư phạm toán', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(50) NOT NULL,
  `MaKH` int(50) NOT NULL,
  `GhiChu` varchar(100) NOT NULL,
  `TongTien` int(50) NOT NULL,
  `NgayDat` varchar(100) NOT NULL,
  `TrangThaiHD` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `GhiChu`, `TongTien`, `NgayDat`, `TrangThaiHD`) VALUES
(13, 6, 'abc', 900000, '23-11-2021', 2),
(14, 6, 'abc', 900000, '23-11-2021', 0),
(15, 1, 'abc', 900000, '25-11-2021', 0),
(16, 1, 'abc', 180000, '25-11-2021', 0),
(17, 1, 'abc', 180000, '7-12-2021', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqua`
--

CREATE TABLE `ketqua` (
  `ID` int(50) NOT NULL,
  `MaKH` int(50) NOT NULL,
  `MaDe` int(50) NOT NULL,
  `Diem` float NOT NULL,
  `TenDe` varchar(1000) NOT NULL,
  `NgayLamBai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ketqua`
--

INSERT INTO `ketqua` (`ID`, `MaKH`, `MaDe`, `Diem`, `TenDe`, `NgayLamBai`) VALUES
(2, 1, 0, 9, 'Bài kiểm tra toán', '10-12-2020'),
(3, 6, 0, 2, 'Bài kiểm tra toán', '01-02-2020'),
(8, 6, 0, 9, 'Bài kiểm tra toán', '01-03-2021'),
(13, 6, 0, 0, 'Bài kiểm tra toán', '12-12-2016'),
(14, 1, 0, 0.2, 'Bài kiểm tra toán', '01-10-2018'),
(15, 1, 0, 0.2, 'Bài kiểm tra toán', '05-12-2019'),
(18, 1, 0, 0.4, 'Bài kiểm tra toán', '19-12-2021'),
(19, 1, 0, 0.2, 'Bài kiểm tra toán', '20-12-2021'),
(20, 1, 0, 0.6, 'Bài kiểm tra toán', '20-12-2021'),
(21, 6, 0, 1, 'Bài kiểm tra toán', '23-12-2021'),
(22, 6, 0, 9, 'Bài kiểm tra toán', '23-12-2021'),
(23, 6, 0, 9, 'Bài kiểm tra toán', '23-12-2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(50) NOT NULL,
  `TenKH` varchar(100) DEFAULT NULL,
  `SDT` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `AnhDaiDien` varchar(100) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `TrangThaiTK` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `SDT`, `DiaChi`, `Email`, `AnhDaiDien`, `TaiKhoan`, `MatKhau`, `TrangThaiTK`) VALUES
(1, 'thydat', '1234', '102 Lê Văn Sĩ', 'vttt@gmail.c', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'toilathy', '1111', 0),
(2, 'Hoang Bảo Minh', '502-550-3667', '5483 Carson Cliffs', 'hoangbaominh2413@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'toilaminh', '1111', 0),
(3, 'Phạm Quang Minh', '398-671-6679', '521 Vivienne Flats', 'quangminh21898@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', '', '', 0),
(4, 'Lương Minh Hoàng', '574-926-3517', '86145 Larkin Via', 'leminhoang.lmh@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', '', '', 0),
(5, 'Vương Xuân Hùng', '985-471-689', '61374 May Mission', 'vuongxuanhung0809@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', '', '', 0),
(6, 'Đặng Trọng Khang', '0912901909', '4 Gò Dầu, phường Tân Qúy, Quận Tân Phú, TP.HCM', 'dtk@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'toilakhang', '1111', 0),
(7, 'Test mot', '1', '1', '1', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', '1', '1', 0),
(9, 'testing', '0299', 'abc', '123', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'toitestdo', '1111', 0),
(10, 'adminday', '123', 'cos', '111', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'admintest', '1234', 0),
(11, 'testAdmin', '1111', '111', 'test', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'toi la test', '1234', 0),
(12, 'abcxyz', '1990000', '190000', 'abc', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'abcxyz', '1234', 0),
(13, 'Trần Văn Quang', '093597531', '73 Lý Triện', 'quang@gmail.com', 'https://drive.google.com/uc?export=view&id=1fSHHHtOOj37Tn6m93wo36fq3TQoio5s-', 'toilaquang', '1234', 0),
(14, 'Lê Phan Trung Kiên', '098564715', '8 Lê Thánh Tôn', 'kien1109@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'toilakien', '1234', 0),
(15, 'Trần Đại Minh', '0968743969', '921/1 Dương Văn Dương', 'minh@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'toilaminh', '1234', 0),
(16, 'Đặng Tiểu Khải', '09355476154', '89 Nguyễn Thị Minh Khai', 'khai@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'toilakhai', '1234', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `MaKhoaHoc` int(50) NOT NULL,
  `TenKhoaHoc` varchar(100) NOT NULL,
  `MoTa` varchar(1000) NOT NULL,
  `GiaKH` bigint(20) NOT NULL,
  `MaGV` int(50) NOT NULL,
  `MaCD` int(50) NOT NULL,
  `MaCB` int(50) NOT NULL,
  `AnhKhoaHoc` varchar(100) NOT NULL,
  `VideoGT` varchar(100) NOT NULL,
  `NgayDang` varchar(100) NOT NULL,
  `SoHS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`MaKhoaHoc`, `TenKhoaHoc`, `MoTa`, `GiaKH`, `MaGV`, `MaCD`, `MaCB`, `AnhKhoaHoc`, `VideoGT`, `NgayDang`, `SoHS`) VALUES
(1, 'Nhập môn chứng khoán ', 'Khóa học chứng khoán online giúp bạn nắm bắt được kiến thức đầu tư chứng khoán đầy đủ, bài bản và chi tiết nhất dành cho người mới bắt đầu tham gia. Bí quyết để nhanh chóng có được nguồn lợi nhuận khổng lồ từ thị trường chứng khoán', 600000, 2, 10, 3, 'https://drive.google.com/uc?export=view&id=1EcgScoMrzeav4SsDvTVwdoxtqc_qpICy', 'https://drive.google.com/file/d/14FBeyyVtrOtu5BjxKb2g66GGtMeUQiXa/preview\r\n', '2021-10-01', 30),
(2, 'Tự do tài chính cùng chứng khoán', 'Khoá học đầu tư tài chính đến từ nhà đầu tư Đặng Trọng Khang \"Tự do tài chính cùng chứng khoán\" giúp bạn tránh được những rủi ro, cạm bẫy để tăng thu nhập nhờ chứng khoán', 900000, 2, 10, 3, 'https://drive.google.com/uc?export=view&id=1Z4ity_GJ_8GgbNQClkfdr0LnpV3go3Pr', 'https://drive.google.com/file/d/1_SQgruCQ-4QOOqKcg-aV6guODOjYsmLu/preview', '2021-10-01', 30),
(30, 'Phương pháp học tốt môn toán lớp 12', 'Sẽ giúp các em nắm bắt các kiến thức cơ bản và nâng cao một  cách nhanh nhất . Từ đó giúp các em có một nền tảng kiến thức vững chắc để phát triển tư duy và trí tuệ và giúp các em đạt được những ước mơ của riêng mình . Chúc các em thành công.', 500000, 13, 1, 3, 'https://drive.google.com/uc?export=view&id=1RSAQs9t7bhF_LUwIYpGwhOtS8obGFDZb', 'https://www.youtube.com/embed/k3sEuAF_hUA', '28-12-2021', 0),
(31, 'Ôn luyện Hoá Học 11', 'Khoá học sẽ giúp các em ôn luyện tốt môn Hoá Học trong các kỳ thi sắp tới.', 200000, 14, 12, 3, 'https://drive.google.com/uc?export=view&id=1FsWh6Cj9y5DQpLwzQCk5gM8cusvyLRs1', 'https://www.youtube.com/embed/Df36vOSzVMM', '28-12-2021', 0),
(32, 'Luyện chữ đẹp', 'Khoá học sẽ giúp các em nắm vững căn bản của chữ cái Việt Nam, đồng thời luyện nét chữ đẹp cho các em', 100000, 15, 2, 1, 'https://drive.google.com/uc?export=view&id=1rSuT1La-m2S_Je0fDMry6JbG2eTAhxxi', 'https://www.youtube.com/embed/2LBv_9oZ1qY', '28-12-2021', 0),
(33, 'Vật lý lớp 9', 'Sẽ giúp các em nắm bắt các kiến thức cơ bản và nâng cao một  cách nhanh nhất . Từ đó giúp các em có một nền tảng kiến thức vững chắc để phát triển tư duy và trí tuệ và giúp các em đạt được những ước mơ của riêng mình', 400000, 16, 3, 2, 'https://drive.google.com/uc?export=view&id=1cjhAe6BuZuxQaW9Ohbl-2iylTows_KCq', 'https://www.youtube.com/embed/TIcXImhQnSM', '28-12-2021', 0),
(34, 'Hoá học lớp 8', 'Ôn luyện kiến thức hoá học lớp 8', 100000, 16, 12, 2, 'https://drive.google.com/uc?export=view&id=1zXCE-THI4M13ssGKSfTg6NBlhbe91aB5', 'https://www.youtube.com/embed/b4zUlCYaMBE', '28-12-2021', 0),
(35, 'Sinh học 9', 'Ôn luyện kiến thức sinh học', 400000, 16, 5, 2, 'https://drive.google.com/uc?export=view&id=11Xk0N812hXgAIRz14qkOkXrbFiJzB-Dd', 'https://www.youtube.com/embed/0o4EY8QIZsg', '28-12-2021', 0),
(36, 'Ôn tập toán lớp 8', 'Ôn tập các kiến thức toán lớp 8', 300000, 16, 1, 2, 'https://drive.google.com/uc?export=view&id=1qo8L5oBkTe-IHBDjpb77L56uJM3bJYPf', 'https://www.youtube.com/embed/nxhu6WxOe3I', '28-12-2021', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoccuakh`
--

CREATE TABLE `khoahoccuakh` (
  `ID` int(50) NOT NULL,
  `MaKH` int(50) NOT NULL,
  `MaKhoaHoc` int(50) NOT NULL,
  `NgayThamGia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khoahoccuakh`
--

INSERT INTO `khoahoccuakh` (`ID`, `MaKH`, `MaKhoaHoc`, `NgayThamGia`) VALUES
(1, 1, 1, '10-10-2021'),
(2, 1, 2, '9-9-2021'),
(6, 6, 1, '9-5-2021'),
(8, 6, 2, '22-12-2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmaikhoahoc`
--

CREATE TABLE `khuyenmaikhoahoc` (
  `MaKhoaHoc` int(50) NOT NULL,
  `TenKhuyenMai` varchar(100) NOT NULL,
  `PhanTramGiam` int(50) NOT NULL,
  `NgayBatDau` varchar(100) NOT NULL,
  `NgayHetHan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khuyenmaikhoahoc`
--

INSERT INTO `khuyenmaikhoahoc` (`MaKhoaHoc`, `TenKhuyenMai`, `PhanTramGiam`, `NgayBatDau`, `NgayHetHan`) VALUES
(1, 'Gỉam giá', 70, '2021-10-07', '2021-10-21'),
(2, 'Gỉam giá', 20, '2021-10-07', '2021-10-17'),
(30, 'chuaco', 0, '02-12-2021', '02-12-2021'),
(31, 'chuaco', 0, '02-12-2021', '02-12-2021'),
(32, 'chuaco', 0, '02-12-2021', '02-12-2021'),
(33, 'chuaco', 0, '02-12-2021', '02-12-2021'),
(34, 'chuaco', 0, '02-12-2021', '02-12-2021'),
(35, 'chuaco', 0, '02-12-2021', '02-12-2021'),
(36, 'chuaco', 0, '02-12-2021', '02-12-2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmaitailieu`
--

CREATE TABLE `khuyenmaitailieu` (
  `MaTL` int(50) NOT NULL,
  `TenKhuyenMai` varchar(100) NOT NULL,
  `PhanTramGiam` int(50) NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayHetHan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khuyenmaitailieu`
--

INSERT INTO `khuyenmaitailieu` (`MaTL`, `TenKhuyenMai`, `PhanTramGiam`, `NgayBatDau`, `NgayHetHan`) VALUES
(1, 'Giảm giá', 30, '2021-10-07', '2021-10-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichhoatkhoahoc`
--

CREATE TABLE `kichhoatkhoahoc` (
  `Id` int(50) NOT NULL,
  `MaKhoaHoc` int(50) NOT NULL,
  `MaKichHoat` varchar(100) NOT NULL,
  `TrangThai` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `kichhoatkhoahoc`
--

INSERT INTO `kichhoatkhoahoc` (`Id`, `MaKhoaHoc`, `MaKichHoat`, `TrangThai`) VALUES
(1, 1, 'abcxyz', 0),
(2, 1, 'XLDjPAfJGX', 0),
(3, 1, '4g5ducw7hx', 0),
(4, 2, '3Z0wxgLiZ5', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luutrukhoahoc`
--

CREATE TABLE `luutrukhoahoc` (
  `MaKhoaHoc` int(50) NOT NULL,
  `LinkKhoaHoc` varchar(1000) NOT NULL,
  `LinkTaiLieu` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luutrutailieu`
--

CREATE TABLE `luutrutailieu` (
  `MaTL` int(50) NOT NULL,
  `Link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `luutrutailieu`
--

INSERT INTO `luutrutailieu` (`MaTL`, `Link`) VALUES
(1, 'https://drive.google.com/file/d/1Ucdpo0mhEj8yUsHiapoXGo2KR0U2mhyU/preview'),
(29, 'https://drive.google.com/file/d/1e5Ih6_tcjLTJ9betyS8IhQGVcDK9TSEV/preview'),
(30, 'https://drive.google.com/file/d/11aw6WeBd9x0EAp_saobi_zmckoh3YKEJ/preview'),
(31, 'https://drive.google.com/file/d/1ERDZsNWpBOiiYhFHl7fRGLQ-9smwr-tW/preview'),
(32, 'https://drive.google.com/file/d/1Axj36530WfWHZLtGnKNnL30ErhaL8Gpj/preview'),
(33, 'https://drive.google.com/file/d/1MzmHosa0811oezA7QBg8fu1iNKtNGIkT/preview'),
(34, 'https://drive.google.com/file/d/1KreCkInNkCeJ-77DOjiupGMYNN5hrw8K/preview'),
(35, 'https://drive.google.com/file/d/13vRrD8uxcKK6ky2z0ER-irDr3tQ4F7oM/preview'),
(36, 'https://drive.google.com/file/d/1tVOGSmC4k0P2Svs3vgwsMYLGHOT58SwN/preview');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tailieu`
--

CREATE TABLE `tailieu` (
  `MaTL` int(50) NOT NULL,
  `TenTL` varchar(100) NOT NULL,
  `MoTa` longtext NOT NULL,
  `MaGV` int(50) NOT NULL,
  `MaCB` int(50) NOT NULL,
  `MaCD` int(50) NOT NULL,
  `GiaTL` bigint(20) NOT NULL,
  `AnhTL` varchar(1000) NOT NULL,
  `Demo` varchar(1000) NOT NULL,
  `SoTrang` int(50) NOT NULL,
  `NgayDang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tailieu`
--

INSERT INTO `tailieu` (`MaTL`, `TenTL`, `MoTa`, `MaGV`, `MaCB`, `MaCD`, `GiaTL`, `AnhTL`, `Demo`, `SoTrang`, `NgayDang`) VALUES
(1, 'Yêu cầu đề tài', 'Máy điều chỉnh cảm ứng là một máy biến áp có hai dây quấn được đặt trên hai phần riêng biệt của lõi thép, hai phần này có thể quay hoặc dịch chuyển vị trí tương đối với nhau. Máy điều chỉnh cảm ứng thường được cấu tạo như động cơ không đồng bộ một dây quấn được đặt ở phần Stato, phần Roto được đặt dây quấn thứ hai, chuyển động tương đối của Rôto và Stato thực hiện qua bộ truyền trục vít. Máy điều chỉnh cảm ứng ba pha có dây quấn ba pha tương tự như dây quấn Stato và dây quấn Roto của động cơ điện không đồng bộ ba pha Roto dây quấn', 2, 3, 7, 0, 'https://drive.google.com/uc?export=view&id=1-ejWK_x0gzYVmB53K-c9eTXqzMyjQaLB', 'https://drive.google.com/file/d/1Ucdpo0mhEj8yUsHiapoXGo2KR0U2mhyU/preview', 20, ''),
(29, 'Tài liệu tự ôn tập logaric', 'Tài liệu sẽ giúp bạn ôn luyện các kỳ thy dễ dàng', 14, 3, 1, 0, 'https://drive.google.com/uc?export=view&id=1GfxxHRQPwF3V-hoak6n3e4iQlGdgqdu_', 'https://drive.google.com/file/d/1e5Ih6_tcjLTJ9betyS8IhQGVcDK9TSEV/preview', 50, '27-12-2021'),
(30, 'Học tốt hoá học 8', 'Tài liệu sẽ giúp các em học tốt môn hoá lớp 8', 16, 2, 12, 0, 'https://drive.google.com/uc?export=view&id=1GfxxHRQPwF3V-hoak6n3e4iQlGdgqdu_', 'https://drive.google.com/file/d/11aw6WeBd9x0EAp_saobi_zmckoh3YKEJ/preview', 20, '28-12-2021'),
(31, 'Đề thi thử toán THPT Quốc Học Huế', 'Tài liệu bao gồm đề thi thử THPT', 16, 3, 1, 0, 'https://drive.google.com/uc?export=view&id=1GfxxHRQPwF3V-hoak6n3e4iQlGdgqdu_', 'https://drive.google.com/file/d/1ERDZsNWpBOiiYhFHl7fRGLQ-9smwr-tW/preview', 30, '28-12-2021'),
(32, 'Tài liệu thi thử Toán THPT Chuyên Thái Bình', 'Tài liệu bao gồm đề thi thử THPT ', 16, 3, 1, 0, 'https://drive.google.com/uc?export=view&id=1GfxxHRQPwF3V-hoak6n3e4iQlGdgqdu_', 'https://drive.google.com/file/d/1Axj36530WfWHZLtGnKNnL30ErhaL8Gpj/preview', 25, '28-12-2021'),
(33, 'Đề thi toán các năm', 'Tài liệu bao gồm các đề thi toán', 16, 3, 1, 0, 'https://drive.google.com/uc?export=view&id=1GfxxHRQPwF3V-hoak6n3e4iQlGdgqdu_', 'https://drive.google.com/file/d/1MzmHosa0811oezA7QBg8fu1iNKtNGIkT/preview', 30, '28-12-2021'),
(34, 'Tổng hợp các công thức hoá học', 'Tài liệu tổng hợp các công thức hoá học', 16, 3, 12, 0, 'https://drive.google.com/uc?export=view&id=1GfxxHRQPwF3V-hoak6n3e4iQlGdgqdu_', 'https://drive.google.com/file/d/1KreCkInNkCeJ-77DOjiupGMYNN5hrw8K/preview', 34, '28-12-2021'),
(35, 'Đề thi thử toán THPT Yên Lạc', 'Tài liệu bao gồm các đề thi thử môn toán', 16, 3, 1, 0, 'https://drive.google.com/uc?export=view&id=1GfxxHRQPwF3V-hoak6n3e4iQlGdgqdu_', 'https://drive.google.com/file/d/13vRrD8uxcKK6ky2z0ER-irDr3tQ4F7oM/preview', 15, '28-12-2021'),
(36, 'Bài tập về Ankan', 'Tài liệu về Ankan', 16, 2, 12, 0, 'https://drive.google.com/uc?export=view&id=1GfxxHRQPwF3V-hoak6n3e4iQlGdgqdu_', 'https://drive.google.com/file/d/1tVOGSmC4k0P2Svs3vgwsMYLGHOT58SwN/preview', 15, '28-12-2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tailieucuakh`
--

CREATE TABLE `tailieucuakh` (
  `ID` int(50) NOT NULL,
  `MaKH` int(50) NOT NULL,
  `MaTL` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tailieucuakh`
--

INSERT INTO `tailieucuakh` (`ID`, `MaKH`, `MaTL`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinkhoahoc`
--

CREATE TABLE `thongtinkhoahoc` (
  `MaKhoaHoc` int(50) NOT NULL,
  `Marketing1` varchar(1000) NOT NULL,
  `Marketing2` varchar(1000) NOT NULL,
  `Marketing3` varchar(1000) NOT NULL,
  `Marketing4` varchar(1000) NOT NULL,
  `Marketing5` varchar(1000) NOT NULL,
  `Marketing6` varchar(1000) NOT NULL,
  `GioiThieuKH` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thongtinkhoahoc`
--

INSERT INTO `thongtinkhoahoc` (`MaKhoaHoc`, `Marketing1`, `Marketing2`, `Marketing3`, `Marketing4`, `Marketing5`, `Marketing6`, `GioiThieuKH`) VALUES
(1, 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Thị trường chứng khoán và vai trò của TTCK <br> Thị trường chứng khoán (TTCK) là nơi diễn ra các hoạt động giao dịch mua bán, trao đổi các loại chứng khoán khác nhau giữa người chủ sở hữu với người mua. Thực chất việc thay đổi chủ sở hữu cổ phiếu (chứng khoán) chính là quá trình vận động của tư bản chuyển từ tư bản sở hữu sang tư bản kinh doanh.\r\n<br />\r\nThị trường chứng khoán Việt Nam đang ngày càng phát triển và trở thành lĩnh vực đầu tư vô cùng hấp dẫn, nhất là đối với những người trẻ và người có thu nhập khá trở lên. Tiềm năng thị trường vô cùng lớn hứa hẹn những khoản lợi nhuận khổng lồ mà nhưng cũng tiềm ẩn không ít rủi ro nếu như không biết cách đánh giá và đầu tư chính xác, khách quan. Nhận thấy tiềm năng phát triển đầy hứa hẹn nên rất nhiều người kéo nhau đi học kinh doanh chứng khoán cơ bản xây dựng nền tảng cá nhân vững chắc.\r\n<br />\r\nĐó là lý do vì sao khóa học đầu tư chứng khoán \"Nhập môn chứng khoán\" được ra đời nhằm giúp bạn có thể trở thành một nhà đầu tư chứng khoán với khả năng thu về lợi nhuận khổng lồ từ TTCK.\r\n<br/>\r\nKhóa học \"Nhập môn chứng khoán\" là khóa học trực tuyến cơ bản dành cho người mới bắt đầu mới tìm hiểu về chứng khoán và học đầu tư chứng khoán tại nhà do giảng viên - Chuyên gia chứng khoán Đặng Trọng Khang hướng dẫn.\r\n<br />\r\nKhóa học chứng khoán online đến từ chuyên gia Đặng Trọng Khang sẽ giúp bạn:\r\n<br />\r\n<i class=\"fas fa-check\"></i> Có được một cái nhìn tổng quan nhất về thị trường chứng khoán Việt Nam hiện nay, học chứng khoán cơ bản về tiềm năng lợi nhuận khổng lồ từ kênh thị trường này\r\n<br />\r\n<i class=\"fas fa-check\"></i> Có được 7 tư duy đúng về đầu tư chứng khoán, củng cố những phẩm chất sáng suốt, tinh thần trách nhiệm, sự rõ ràng, tính khách quan và sự liều lĩnh cần thiết\r\n<br />\r\n<i class=\"fas fa-check\"></i> Khoá học đầu tư chứng khoán giúp bạn nắm được 4 công cụ kiếm tiền tốt nhất ngày nay để bạn tự mình mở ra những cơ hội kiếm tiền mới\r\n<br />\r\n<i class=\"fas fa-check\"></i> Những kỹ năng, bí quyết và mẹo để bạn xử lý những vấn đề thường gặp của nhà đầu tư hiện nay: cách đọc bảng giá, cách giao dịch, cách thanh toán giao dịch, cách nội tiền, cách rút tiền, cách khắc phục rủi ro thua lỗ...\r\n<br />\r\n<i class=\"fas fa-check\"></i> Những định hướng đầu tư trong thời gian dài hạn, trung hạn dành cho bạn\r\n<br />\r\nHãy tham gia ngay khóa học chứng khoán online \"Nhập môn chứng khoán\" để trở thành nhà đầu tư chứng khoán thông minh và giàu có !\r\n'),
(2, 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Thị trường chứng khoán và vai trò của TTCK &nbsp Thị trường chứng khoán (TTCK) là nơi diễn ra các hoạt động giao dịch mua bán, trao đổi các loại chứng khoán khác nhau giữa người chủ sở hữu với người mua. Thực chất việc thay đổi chủ sở hữu cổ phiếu (chứng khoán) chính là quá trình vận động của tư bản chuyển từ tư bản sở hữu sang tư bản kinh doanh.\r\n<br />\r\nThị trường chứng khoán Việt Nam đang ngày càng phát triển và trở thành lĩnh vực đầu tư vô cùng hấp dẫn, nhất là đối với những người trẻ và người có thu nhập khá trở lên. Tiềm năng thị trường vô cùng lớn hứa hẹn những khoản lợi nhuận khổng lồ mà nhưng cũng tiềm ẩn không ít rủi ro nếu như không biết cách đánh giá và đầu tư chính xác, khách quan. Nhận thấy tiềm năng phát triển đầy hứa hẹn nên rất nhiều người kéo nhau đi học kinh doanh chứng khoán cơ bản xây dựng nền tảng cá nhân vững chắc.\r\n<br />\r\nĐó là lý do vì sao khóa học đầu tư chứng khoán \"Nhập môn chứng khoán\" được ra đời nhằm giúp bạn có thể trở thành một nhà đầu tư chứng khoán với khả năng thu về lợi nhuận khổng lồ từ TTCK.\r\n<br/>\r\nKhóa học \"Nhập môn chứng khoán\" là khóa học trực tuyến cơ bản dành cho người mới bắt đầu mới tìm hiểu về chứng khoán và học đầu tư chứng khoán tại nhà do giảng viên - Chuyên gia chứng khoán Đặng Trọng Khang hướng dẫn.\r\n<br />\r\nKhóa học chứng khoán online đến từ chuyên gia Đặng Trọng Khang sẽ giúp bạn:\r\n<br />\r\n<i class=\"fas fa-check\"></i> Có được một cái nhìn tổng quan nhất về thị trường chứng khoán Việt Nam hiện nay, học chứng khoán cơ bản về tiềm năng lợi nhuận khổng lồ từ kênh thị trường này\r\n<br />\r\n<i class=\"fas fa-check\"></i> Có được 7 tư duy đúng về đầu tư chứng khoán, củng cố những phẩm chất sáng suốt, tinh thần trách nhiệm, sự rõ ràng, tính khách quan và sự liều lĩnh cần thiết\r\n<br />\r\n<i class=\"fas fa-check\"></i> Khoá học đầu tư chứng khoán giúp bạn nắm được 4 công cụ kiếm tiền tốt nhất ngày nay để bạn tự mình mở ra những cơ hội kiếm tiền mới\r\n<br />\r\n<i class=\"fas fa-check\"></i> Những kỹ năng, bí quyết và mẹo để bạn xử lý những vấn đề thường gặp của nhà đầu tư hiện nay: cách đọc bảng giá, cách giao dịch, cách thanh toán giao dịch, cách nội tiền, cách rút tiền, cách khắc phục rủi ro thua lỗ...\r\n<br />\r\n<i class=\"fas fa-check\"></i> Những định hướng đầu tư trong thời gian dài hạn, trung hạn dành cho bạn\r\n<br />\r\nHãy tham gia ngay khóa học chứng khoán online \"Nhập môn chứng khoán\" để trở thành nhà đầu tư chứng khoán thông minh và giàu có !\r\n'),
(30, 'Kỹ năng giải đề', 'Cách học tốt môn Toán', 'Kỹ năng giải quyết vấn đề', 'Cách ôn luyện tốt cho các kỳ thi', 'Kinh nghiệm giải bài trắc nghiệm nhanh', 'Các kỹ năng và kinh nghiệm sống', 'Chia sẽ kinh nghiệm học tốt môn Toán, đồng thời ôn luyện giải các đề toán hot nhất hiện nay.'),
(31, 'Kỹ năng giải đề nhanh', 'Tổng hợp kiến thức nhanh gọn ', 'Giúp ôn luyện cho kỳ thi học kỳ tốt hơn', 'Nắm kỹ kiến thức cơ bản', 'Chuẩn bị cho kỳ thi THPT quốc gia', 'Nắm kỹ hoá hữu cơ và vô cơ', 'Khoá học sẽ ôn luyện lại các kiến thức học kỳ I của hoá học 11, giúp các em hoàn thành tốt bài thi sắp tới'),
(32, '', '', '', '', '', '', ''),
(33, 'Nắm kỹ vật lý THCS', 'Có tư duy về vật lý', 'Học tốt vật lý các cấp cao hơn', 'Rèn luyện kỹ năng tự học', 'Nẵm vững cơ bản', 'undefined', 'Khoá học tổng kết kiến thức vật lý lớp 9 cũng như toàn bộ kiến thức vật lý THCS'),
(34, 'Làm quen với hoá học', 'Nắm vững căn bản', 'Làm tiền đề cho kiến thức cao hơn', 'Nắm vững sơ khai hoá học', 'Dễ dàng học ', 'undefined', 'Ôn luyện kiến thức cho các em học sinh lớp 8'),
(35, 'Nắm vững kiến thức', 'Luyện tập kỹ năng giải đề', 'Chuẩn bị kiến thức cho học sinh thi chuyên', 'Luyện tập kỹ năng tự học', 'Dễ dàng làm quen với kiến thức nâng cao', 'undefined', 'Luyện tập bài tập và ôn luyện kiến thức sinh học 9'),
(36, 'Ôn tập kiến thức lớp 8', 'Chuẩn bị tốt cho kỳ thi học kỳ', 'Nắm vững nền tảng ', 'Dễ dàng học các kiến thức cao hơn', 'Luyện kỹ năng giải đề', 'undefined', 'Ôn tập các kiến thức toán lớp 8');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhhocmay`
--
ALTER TABLE `anhhocmay`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_MaKH_AI` (`MaKH`);

--
-- Chỉ mục cho bảng `capbac`
--
ALTER TABLE `capbac`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `chitiethoahon`
--
ALTER TABLE `chitiethoahon`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_MaKhoaHoc_CTHD` (`MaKhoaHoc`),
  ADD KEY `FK_MaTL_CTHD` (`MaTL`);

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`MaCD`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`MaGV`),
  ADD KEY `FK_KHACHHANG_MAKH` (`MaKH`),
  ADD KEY `FK_CAPBAC_MACB_GV` (`MaCB`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `FK_MaKH_HD` (`MaKH`);

--
-- Chỉ mục cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_MaKH_KQ` (`MaKH`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`MaKhoaHoc`),
  ADD KEY `FK_GIANGVIEN_MAGV` (`MaGV`),
  ADD KEY `FK_CHUDE_MACD` (`MaCD`),
  ADD KEY `FK_CAPBAC_MACB_KH` (`MaCB`);

--
-- Chỉ mục cho bảng `khoahoccuakh`
--
ALTER TABLE `khoahoccuakh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_KHACHHANG_MAKH_KH` (`MaKH`),
  ADD KEY `FK_KHOAHOC_MAKH_KH` (`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `khuyenmaikhoahoc`
--
ALTER TABLE `khuyenmaikhoahoc`
  ADD PRIMARY KEY (`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `khuyenmaitailieu`
--
ALTER TABLE `khuyenmaitailieu`
  ADD PRIMARY KEY (`MaTL`);

--
-- Chỉ mục cho bảng `kichhoatkhoahoc`
--
ALTER TABLE `kichhoatkhoahoc`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_MaKhoaHoc_KHKH` (`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `luutrukhoahoc`
--
ALTER TABLE `luutrukhoahoc`
  ADD KEY `FK_KHOAHOC_MAKHOAHOC` (`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `luutrutailieu`
--
ALTER TABLE `luutrutailieu`
  ADD PRIMARY KEY (`MaTL`);

--
-- Chỉ mục cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`MaTL`),
  ADD KEY `FK_GIANGVIEN_MAGV_TAILIEU` (`MaGV`),
  ADD KEY `FK_CAPBAC_MACB` (`MaCB`),
  ADD KEY `FK_CHUDE_MACD_TL` (`MaCD`);

--
-- Chỉ mục cho bảng `tailieucuakh`
--
ALTER TABLE `tailieucuakh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_KHACHHANG_MAKH_TL` (`MaKH`),
  ADD KEY `FK_TAILIEU_MATL_TL` (`MaTL`);

--
-- Chỉ mục cho bảng `thongtinkhoahoc`
--
ALTER TABLE `thongtinkhoahoc`
  ADD PRIMARY KEY (`MaKhoaHoc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhhocmay`
--
ALTER TABLE `anhhocmay`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `capbac`
--
ALTER TABLE `capbac`
  MODIFY `MaCB` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `chitiethoahon`
--
ALTER TABLE `chitiethoahon`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `MaCD` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `MaGV` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `MaKhoaHoc` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `khoahoccuakh`
--
ALTER TABLE `khoahoccuakh`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `kichhoatkhoahoc`
--
ALTER TABLE `kichhoatkhoahoc`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  MODIFY `MaTL` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tailieucuakh`
--
ALTER TABLE `tailieucuakh`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhhocmay`
--
ALTER TABLE `anhhocmay`
  ADD CONSTRAINT `FK_MaKH_AI` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Các ràng buộc cho bảng `chitiethoahon`
--
ALTER TABLE `chitiethoahon`
  ADD CONSTRAINT `FK_MaKhoaHoc_CTHD` FOREIGN KEY (`MaKhoaHoc`) REFERENCES `khoahoc` (`MaKhoaHoc`),
  ADD CONSTRAINT `FK_MaTL_CTHD` FOREIGN KEY (`MaTL`) REFERENCES `tailieu` (`MaTL`);

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `FK_CAPBAC_MACB_GV` FOREIGN KEY (`MaCB`) REFERENCES `capbac` (`MaCB`),
  ADD CONSTRAINT `FK_KHACHHANG_MAKH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FK_MaKH_HD` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Các ràng buộc cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD CONSTRAINT `FK_MaKH_KQ` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Các ràng buộc cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD CONSTRAINT `FK_CAPBAC_MACB_KH` FOREIGN KEY (`MaCB`) REFERENCES `capbac` (`MaCB`),
  ADD CONSTRAINT `FK_CHUDE_MACD` FOREIGN KEY (`MaCD`) REFERENCES `chude` (`MaCD`),
  ADD CONSTRAINT `FK_GIANGVIEN_MAGV` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`);

--
-- Các ràng buộc cho bảng `khoahoccuakh`
--
ALTER TABLE `khoahoccuakh`
  ADD CONSTRAINT `FK_KHACHHANG_MAKH_KH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `FK_KHOAHOC_MAKH_KH` FOREIGN KEY (`MaKhoaHoc`) REFERENCES `khoahoc` (`MaKhoaHoc`);

--
-- Các ràng buộc cho bảng `khuyenmaikhoahoc`
--
ALTER TABLE `khuyenmaikhoahoc`
  ADD CONSTRAINT `FK_KHOAHOC_MAKHOAHOC_KM` FOREIGN KEY (`MaKhoaHoc`) REFERENCES `khoahoc` (`MaKhoaHoc`);

--
-- Các ràng buộc cho bảng `khuyenmaitailieu`
--
ALTER TABLE `khuyenmaitailieu`
  ADD CONSTRAINT `FK_TAILIEU_MATL_KM` FOREIGN KEY (`MaTL`) REFERENCES `tailieu` (`MaTL`);

--
-- Các ràng buộc cho bảng `kichhoatkhoahoc`
--
ALTER TABLE `kichhoatkhoahoc`
  ADD CONSTRAINT `FK_MaKhoaHoc_KHKH` FOREIGN KEY (`MaKhoaHoc`) REFERENCES `khoahoc` (`MaKhoaHoc`);

--
-- Các ràng buộc cho bảng `luutrukhoahoc`
--
ALTER TABLE `luutrukhoahoc`
  ADD CONSTRAINT `FK_KHOAHOC_MAKHOAHOC` FOREIGN KEY (`MaKhoaHoc`) REFERENCES `khoahoc` (`MaKhoaHoc`);

--
-- Các ràng buộc cho bảng `luutrutailieu`
--
ALTER TABLE `luutrutailieu`
  ADD CONSTRAINT `FK_TAILIEU_MATL` FOREIGN KEY (`MaTL`) REFERENCES `tailieu` (`MaTL`);

--
-- Các ràng buộc cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD CONSTRAINT `FK_CAPBAC_MACB` FOREIGN KEY (`MaCB`) REFERENCES `capbac` (`MaCB`),
  ADD CONSTRAINT `FK_CHUDE_MACD_TL` FOREIGN KEY (`MaCD`) REFERENCES `chude` (`MaCD`),
  ADD CONSTRAINT `FK_GIANGVIEN_MAGV_TAILIEU` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`);

--
-- Các ràng buộc cho bảng `tailieucuakh`
--
ALTER TABLE `tailieucuakh`
  ADD CONSTRAINT `FK_KHACHHANG_MAKH_TL` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `FK_TAILIEU_MATL_TL` FOREIGN KEY (`MaTL`) REFERENCES `tailieu` (`MaTL`);

--
-- Các ràng buộc cho bảng `thongtinkhoahoc`
--
ALTER TABLE `thongtinkhoahoc`
  ADD CONSTRAINT `FK_KHOAHOC_MAKHOAHOC_TTKH` FOREIGN KEY (`MaKhoaHoc`) REFERENCES `khoahoc` (`MaKhoaHoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
