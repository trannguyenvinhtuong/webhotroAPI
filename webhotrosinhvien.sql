-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2021 lúc 03:36 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(3, 'Cấp 3'),
(4, 'Đại học');

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
(4, 'Địa lý', '', ''),
(5, 'Sinh học', '', ''),
(6, 'Chứng khoáng', '', ''),
(7, 'Tin học', 'https://drive.google.com/uc?export=view&id=1dWW_g29SYXmPvDmBhASy3gUl3xPvUuJx', 'https://drive.google.com/uc?export=view&id=1Nx-fiURlqR_pCmEQDmpXutKbg45xDlCK'),
(8, 'Giáo dục công dân', '', ''),
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
(2, 'Đại học công nghiệp thực phẩm TP.HCM', 'Thạc sĩ', 3, 'Giảng viên Đặng Trọng Khang là người có thâm niên đầu tư thực tế gần 15 năm trong thị trường chứng khoán', 'Người chia sẻ về Phương pháp đầu tư chứng khoán theo Luật Nhân Quả - Causality Investing', 'Chuyên gia chứng khoán tại NIK Capital. CEO CTCP Minh Bảo Tín. Trưởng VPDD Bình Dương - Cty chứng khoán Vietcombank (2016 - 2018). Từ 2014 đến nay, đã chia sẻ cho hơn 65.000 lượt người về đầu tư chứng khoán qua các khoá học kinh doanh \"đỉnh cao\". Là diễn giả về đầu tư cổ phiếu được đánh giá cao tại Việt Nam. Được mời đứng chung sân khấu với nhiều doanh nhân - diễn giả hàng đầu như Thầy John C.Maxwell, Thầy Mark Victor Hansen, Doanh nhân Phạm Đình Đoàn, Doanh nhân Đỗ Cao Bảo, Thầy Nguyễn Thành Tiến...', 6, 4, 500, 'Kinh tế', 21, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(50) NOT NULL,
  `TenKH` varchar(100) NOT NULL,
  `SDT` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `AnhDaiDien` varchar(100) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `SDT`, `DiaChi`, `Email`, `AnhDaiDien`, `TaiKhoan`, `MatKhau`) VALUES
(1, 'Nguyễn Minh Thy', '0986897256', '72616 Schuppe Corners', 'minhthy1004@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', 'toilathy', '1111'),
(2, 'Hoang Bảo Minh', '502-550-3667', '5483 Carson Cliffs', 'hoangbaominh2413@gmail.com', '', '', ''),
(3, 'Phạm Quang Minh', '398-671-6679', '521 Vivienne Flats', 'quangminh21898@gmail.com', '', '', ''),
(4, 'Lương Minh Hoàng', '574-926-3517', '86145 Larkin Via', 'leminhoang.lmh@gmail.com', '', '', ''),
(5, 'Vương Xuân Hùng', '985-471-689', '61374 May Mission', 'vuongxuanhung0809@gmail.com', '', '', ''),
(6, 'Đặng Trọng Khang', '0912901909', '4 Gò Dầu, phường Tân Qúy, Quận Tân Phú, TP.HCM', 'dtk@gmail.com', 'https://drive.google.com/uc?export=view&id=1JTdABYFaasXQNlOk9sPatLw6A2AwPkIl', '', '');

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
  `NgayDang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`MaKhoaHoc`, `TenKhoaHoc`, `MoTa`, `GiaKH`, `MaGV`, `MaCD`, `MaCB`, `AnhKhoaHoc`, `VideoGT`, `NgayDang`) VALUES
(1, 'Nhập môn chứng khoán ', 'Khóa học chứng khoán online giúp bạn nắm bắt được kiến thức đầu tư chứng khoán đầy đủ, bài bản và chi tiết nhất dành cho người mới bắt đầu tham gia. Bí quyết để nhanh chóng có được nguồn lợi nhuận khổng lồ từ thị trường chứng khoán', 600000, 2, 6, 4, 'https://drive.google.com/uc?export=view&id=1EcgScoMrzeav4SsDvTVwdoxtqc_qpICy', 'https://drive.google.com/file/d/14FBeyyVtrOtu5BjxKb2g66GGtMeUQiXa/preview\r\n', '2021-10-01'),
(2, 'Tự do tài chính cùng chứng khoán', 'Khoá học đầu tư tài chính đến từ nhà đầu tư Đặng Trọng Khang \"Tự do tài chính cùng chứng khoán\" giúp bạn tránh được những rủi ro, cạm bẫy để tăng thu nhập nhờ chứng khoán', 900000, 2, 6, 4, 'https://drive.google.com/uc?export=view&id=1Z4ity_GJ_8GgbNQClkfdr0LnpV3go3Pr', 'https://drive.google.com/file/d/1_SQgruCQ-4QOOqKcg-aV6guODOjYsmLu/preview', '2021-10-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoccuakh`
--

CREATE TABLE `khoahoccuakh` (
  `ID` int(50) NOT NULL,
  `MaKH` int(50) NOT NULL,
  `MaKhoaHoc` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khoahoccuakh`
--

INSERT INTO `khoahoccuakh` (`ID`, `MaKH`, `MaKhoaHoc`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmaikhoahoc`
--

CREATE TABLE `khuyenmaikhoahoc` (
  `MaKhoaHoc` int(50) NOT NULL,
  `TenKhuyenMai` varchar(100) NOT NULL,
  `PhanTramGiam` int(50) NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayHetHan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khuyenmaikhoahoc`
--

INSERT INTO `khuyenmaikhoahoc` (`MaKhoaHoc`, `TenKhuyenMai`, `PhanTramGiam`, `NgayBatDau`, `NgayHetHan`) VALUES
(1, 'Gỉam giá', 70, '2021-10-07', '2021-10-21'),
(2, 'Gỉam giá', 20, '2021-10-07', '2021-10-17');

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
(1, 'https://drive.google.com/uc?export=view&id=1Ucdpo0mhEj8yUsHiapoXGo2KR0U2mhyU');

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
  `AnhTL` varchar(100) NOT NULL,
  `Demo` varchar(100) NOT NULL,
  `SoTrang` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tailieu`
--

INSERT INTO `tailieu` (`MaTL`, `TenTL`, `MoTa`, `MaGV`, `MaCB`, `MaCD`, `GiaTL`, `AnhTL`, `Demo`, `SoTrang`) VALUES
(1, 'Yêu cầu đề tài', 'Máy điều chỉnh cảm ứng là một máy biến áp có hai dây quấn được đặt trên hai phần riêng biệt của lõi thép, hai phần này có thể quay hoặc dịch chuyển vị trí tương đối với nhau. Máy điều chỉnh cảm ứng thường được cấu tạo như động cơ không đồng bộ một dây quấn được đặt ở phần Stato, phần Roto được đặt dây quấn thứ hai, chuyển động tương đối của Rôto và Stato thực hiện qua bộ truyền trục vít. Máy điều chỉnh cảm ứng ba pha có dây quấn ba pha tương tự như dây quấn Stato và dây quấn Roto của động cơ điện không đồng bộ ba pha Roto dây quấn', 2, 4, 7, 500000, 'https://drive.google.com/uc?export=view&id=1-ejWK_x0gzYVmB53K-c9eTXqzMyjQaLB', 'https://drive.google.com/uc?export=view&id=1Ucdpo0mhEj8yUsHiapoXGo2KR0U2mhyU', 20);

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
(2, 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Kiến thức cơ bản nhất về thị trường chứng khoán, về đầu tư chứng khoán và tiềm năng', 'Thị trường chứng khoán và vai trò của TTCK &nbsp Thị trường chứng khoán (TTCK) là nơi diễn ra các hoạt động giao dịch mua bán, trao đổi các loại chứng khoán khác nhau giữa người chủ sở hữu với người mua. Thực chất việc thay đổi chủ sở hữu cổ phiếu (chứng khoán) chính là quá trình vận động của tư bản chuyển từ tư bản sở hữu sang tư bản kinh doanh.\r\n<br />\r\nThị trường chứng khoán Việt Nam đang ngày càng phát triển và trở thành lĩnh vực đầu tư vô cùng hấp dẫn, nhất là đối với những người trẻ và người có thu nhập khá trở lên. Tiềm năng thị trường vô cùng lớn hứa hẹn những khoản lợi nhuận khổng lồ mà nhưng cũng tiềm ẩn không ít rủi ro nếu như không biết cách đánh giá và đầu tư chính xác, khách quan. Nhận thấy tiềm năng phát triển đầy hứa hẹn nên rất nhiều người kéo nhau đi học kinh doanh chứng khoán cơ bản xây dựng nền tảng cá nhân vững chắc.\r\n<br />\r\nĐó là lý do vì sao khóa học đầu tư chứng khoán \"Nhập môn chứng khoán\" được ra đời nhằm giúp bạn có thể trở thành một nhà đầu tư chứng khoán với khả năng thu về lợi nhuận khổng lồ từ TTCK.\r\n<br/>\r\nKhóa học \"Nhập môn chứng khoán\" là khóa học trực tuyến cơ bản dành cho người mới bắt đầu mới tìm hiểu về chứng khoán và học đầu tư chứng khoán tại nhà do giảng viên - Chuyên gia chứng khoán Đặng Trọng Khang hướng dẫn.\r\n<br />\r\nKhóa học chứng khoán online đến từ chuyên gia Đặng Trọng Khang sẽ giúp bạn:\r\n<br />\r\n<i class=\"fas fa-check\"></i> Có được một cái nhìn tổng quan nhất về thị trường chứng khoán Việt Nam hiện nay, học chứng khoán cơ bản về tiềm năng lợi nhuận khổng lồ từ kênh thị trường này\r\n<br />\r\n<i class=\"fas fa-check\"></i> Có được 7 tư duy đúng về đầu tư chứng khoán, củng cố những phẩm chất sáng suốt, tinh thần trách nhiệm, sự rõ ràng, tính khách quan và sự liều lĩnh cần thiết\r\n<br />\r\n<i class=\"fas fa-check\"></i> Khoá học đầu tư chứng khoán giúp bạn nắm được 4 công cụ kiếm tiền tốt nhất ngày nay để bạn tự mình mở ra những cơ hội kiếm tiền mới\r\n<br />\r\n<i class=\"fas fa-check\"></i> Những kỹ năng, bí quyết và mẹo để bạn xử lý những vấn đề thường gặp của nhà đầu tư hiện nay: cách đọc bảng giá, cách giao dịch, cách thanh toán giao dịch, cách nội tiền, cách rút tiền, cách khắc phục rủi ro thua lỗ...\r\n<br />\r\n<i class=\"fas fa-check\"></i> Những định hướng đầu tư trong thời gian dài hạn, trung hạn dành cho bạn\r\n<br />\r\nHãy tham gia ngay khóa học chứng khoán online \"Nhập môn chứng khoán\" để trở thành nhà đầu tư chứng khoán thông minh và giàu có !\r\n');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `capbac`
--
ALTER TABLE `capbac`
  ADD PRIMARY KEY (`MaCB`);

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
-- AUTO_INCREMENT cho bảng `capbac`
--
ALTER TABLE `capbac`
  MODIFY `MaCB` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `MaCD` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `MaGV` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `MaKhoaHoc` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khoahoccuakh`
--
ALTER TABLE `khoahoccuakh`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  MODIFY `MaTL` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tailieucuakh`
--
ALTER TABLE `tailieucuakh`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `FK_CAPBAC_MACB_GV` FOREIGN KEY (`MaCB`) REFERENCES `capbac` (`MaCB`),
  ADD CONSTRAINT `FK_KHACHHANG_MAKH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

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