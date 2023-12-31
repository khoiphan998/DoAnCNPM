USE [master]
GO
/****** Object:  Database [QLBanHang]    Script Date: 3/27/2022 12:21:02 PM ******/
CREATE DATABASE [QLBanHang]
GO
ALTER DATABASE [QLBanHang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBanHang', N'ON'
GO
ALTER DATABASE [QLBanHang] SET QUERY_STORE = OFF
GO
USE [QLBanHang]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaHD] [nchar](10) NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[DonGia] [money] NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NULL,
	[MaNV] [nchar](10) NULL,
	[NgayLap] [date] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](150) NULL,
	[SoDT] [nchar](11) NULL,
	[DiaChi] [nvarchar](max) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](150) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[MaBaoMat] [nvarchar](max) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[Hinh] [image] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nchar](10) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[DonGia] [money] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_SanPham]
GO
/****** Object:  StoredProcedure [dbo].[checkNVTonTai]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[checkNVTonTai](@MaNV nchar(10))
AS
Select *
From NhanVien
Where MaNV = @MaNV
GO
/****** Object:  StoredProcedure [dbo].[CheckSanPhamIsAlready]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckSanPhamIsAlready](@MaSP nchar(10))
AS
Select Count(*)
From ChiTietHD
Where MaSP = @MaSP
GO
/****** Object:  StoredProcedure [dbo].[DoiMaBaoMat]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoiMaBaoMat](@MaBaoMat nvarchar(max), @MaNV nchar(10), @MatKhau nvarchar(max))
AS
Update NhanVien
Set MaBaoMat = @MaBaoMat
Where MaNV = @MaNV And MatKhau = @MatKhau
GO
/****** Object:  StoredProcedure [dbo].[DoiMatKhau]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DoiMatKhau](@MaNV nchar(10), @MatKhau nvarchar(max))
AS
Update NhanVien
Set MatKhau = @MatKhau
Where MaNV = @MaNV
GO
/****** Object:  StoredProcedure [dbo].[getUser]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getUser](@MaNV nvarchar(max), @MatKhau nvarchar(max))
AS
Select *
From NhanVien
Where MaNV=@MaNV And MatKhau=@MatKhau
GO
/****** Object:  StoredProcedure [dbo].[HienThiChiTietSanPham]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiChiTietSanPham]
@ma nchar(10)
as
begin
	select * from SanPham where MaSP=@ma
end
GO
/****** Object:  StoredProcedure [dbo].[nvDeleteNhanVien]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nvDeleteNhanVien](@MaNV nchar(10))
AS
Delete
From NhanVien
Where MaNV = @MaNV
GO
/****** Object:  StoredProcedure [dbo].[nvInsertNhanVien]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nvInsertNhanVien](@MaNV nchar(10), @TenNV nvarchar(150), @GioiTinh nvarchar(3), @NgaySinh date, @DiaChi nvarchar(max), @MatKhau nvarchar(max), @MaBaoMat nvarchar(max), @ChucVu nvarchar(50))
AS
Insert into NhanVien(MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, MatKhau, MaBaoMat, ChucVu)
Values (@MaNV, @TenNV, @GioiTinh, @NgaySinh, @DiaChi, @MatKhau, @MaBaoMat, @ChucVu)
GO
/****** Object:  StoredProcedure [dbo].[nvUpdateNhanVien]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nvUpdateNhanVien](@MaNV nchar(10), @TenNV nvarchar(150), @GioiTinh nvarchar(3), @NgaySinh date, @DiaChi nvarchar(max), @MatKhau nvarchar(max), @ChucVu nvarchar(50))
AS
Update NhanVien
Set TenNV = @TenNV, GioiTinh = @GioiTinh, NgaySinh = @NgaySinh, DiaChi = @DiaChi, MatKhau = @MatKhau, ChucVu = @ChucVu
Where MaNV = @MaNV
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCustomer]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spDeleteCustomer](@maKH nchar(10))
as
begin
	Delete from KhachHang where MaKH = @maKH
end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteProduct]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spDeleteProduct] (@maSP nchar(10))
as
begin
	Delete from SanPham where MaSP = @maSP
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertCustomers]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spInsertCustomers](@maKH nchar(10),@tenKH nvarchar(50),@sdt nchar(11),@diaChi nvarchar(max))
as
begin
	if(not exists(select * from KhachHang where MaKH = @maKH))
	begin
	Insert into KhachHang(MaKH,TenKH,SoDT,DiaChi) values (@maKH,@tenKH,@sdt,@diaChi)
	end
	else
	begin
		raiserror('The MaKH you enter has existed',16,1)
	end
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertProduct]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spInsertProduct] (@maSP nchar(10),@tenSP nvarchar(150),@dongia money,@soluong int)
as
Insert into SanPham(MaSP,TenSP,DonGia,SoLuong) values (@maSP,@tenSP,@dongia,@soluong)
GO
/****** Object:  StoredProcedure [dbo].[spSelectAllCustomers]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spSelectAllCustomers]
as
begin
	select * from KhachHang 
end
GO
/****** Object:  StoredProcedure [dbo].[spSelectAllProduct]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spSelectAllProduct]
as
begin
select * from SanPham
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCustomers]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spUpdateCustomers](@maKH nchar(10),@tenKH nvarchar(50),@sdt nchar(11),@diaChi nvarchar(max))
as
begin
	update KhachHang set TenKH = @tenKH, SoDT=@sdt,DiaChi=@diaChi where MaKH = @maKH
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateProduct]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spUpdateProduct] (@maSP nchar(10),@tenSP nvarchar(150),@dongia money,@soluong int)
as
begin
	update SanPham set TenSP=@tenSP,DonGia=@dongia,SoLuong=@soluong where MaSP=@maSP
end
GO
/****** Object:  StoredProcedure [dbo].[SuaHinh]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SuaHinh](@MaNV nchar(10),@Hinh image)
AS
Update NhanVien
Set Hinh = @Hinh
Where MaNV = @MaNV
GO
/****** Object:  StoredProcedure [dbo].[SuaKhachHang]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SuaKhachHang](@MaKH nchar(10), @TenKH nvarchar(150), @SoDT nchar(11), @DiaChi nvarchar(MAX))
AS
Update KhachHang
Set TenKH = @TenKH, SoDT = @SoDT, DiaChi = @DiaChi
Where MaKH = @MaKH
GO
/****** Object:  StoredProcedure [dbo].[themChitietHoaDon]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[themChitietHoaDon](@MaHD nchar(10), @MaSP nchar(10), @DonGia money, @SoLuong int)
AS
Insert into ChiTietHD(MaHD,MaSP,DonGia,SoLuong)
Values (@MaHD,@MaSP,@DonGia,@SoLuong)
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDon]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemHoaDon](@MaHD nchar(10), @MaKH nchar(10), @MaNV nchar(10), @NgayLap date, @ThanhTien money)
AS
Insert into HoaDon(MaHD,MaKH,MaNV,NgayLap,ThanhTien)
Values (@MaHD, @MaKH, @MaNV, @NgayLap, @ThanhTien)
GO
/****** Object:  StoredProcedure [dbo].[ThemKhachHang]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemKhachHang](@MaKH nchar(10), @TenKH nvarchar(150), @SoDT nchar(11), @DiaChi nvarchar(MAX))
AS
Insert into KhachHang(MaKH, TenKH, SoDT, DiaChi)
Values (@MaKH, @TenKH, @SoDT, @DiaChi)
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThu]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeDoanhThu](@Date Date)
AS
Select Month(NgayLap) as 'Thang', COUNT(*) as 'SoDonHang', SUM(ThanhTien) as 'DoanhThu'
From HoaDon
Where Year(NgayLap) = Year(@Date)
Group by Month(NgayLap)


Select Month(NgayLap) as 'Thang', COUNT(*) as 'SoDonHang', SUM(ThanhTien) as 'DoanhThu'
From HoaDon
Where Year(NgayLap) = Year(@Date) - 1
Group by Month(NgayLap)
GO
/****** Object:  StoredProcedure [dbo].[TimHoaDonKH]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TimHoaDonKH](@TenKH nvarchar(150))
AS
Select MaHD, KhachHang.MaKH, KhachHang.TenKH, KhachHang.DiaChi, KhachHang.SoDT,NhanVien.TenNV, NgayLap, ThanhTien
from HoaDon, KhachHang, NhanVien
Where HoaDon.MaKH = KhachHang.MaKH And HoaDon.MaNV = NhanVien.MaNV And TenKH like @TenKH
GO
/****** Object:  StoredProcedure [dbo].[TimMaSanPham]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TimMaSanPham](@MaSP nchar(10))
AS
Select *
From SanPham
Where MaSP = @MaSP
GO
/****** Object:  StoredProcedure [dbo].[TimTenSanPham]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TimTenSanPham](@TenSP nvarchar(150))
AS
Select *
from SanPham
Where TenSP like @TenSP;
GO
/****** Object:  StoredProcedure [dbo].[TongDoanhThuNam]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TongDoanhThuNam](@Date date)
AS
Select Sum(ThanhTien)
From HoaDon
Where Year(NgayLap) = Year(@Date)
GO
/****** Object:  StoredProcedure [dbo].[TongDoanhThuThang]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TongDoanhThuThang](@Date date)
AS
Select Sum(ThanhTien)
From HoaDon
Where Month(NgayLap) = Month(@Date) And Year(NgayLap) = Year(@Date)
GO
/****** Object:  StoredProcedure [dbo].[TongDonHangTrongNam]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TongDonHangTrongNam](@Date date)
AS
Select Count(*)
From HoaDon
Where Year(NgayLap) = Year(@Date)
GO
/****** Object:  StoredProcedure [dbo].[TongDonHangTrongThang]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TongDonHangTrongThang](@Date date)
AS
Select Count(*)
From HoaDon
Where Month(NgayLap) = Month(@Date) And Year(NgayLap) = Year(@Date)
GO
/****** Object:  StoredProcedure [dbo].[TongHoaDon]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TongHoaDon]
AS
Select Count(*)
From HoaDon
GO
/****** Object:  StoredProcedure [dbo].[TongSanPham]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TongSanPham]
AS
Select Count(*)
From SanPham
GO
/****** Object:  StoredProcedure [dbo].[xemChitietHoaDon]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[xemChitietHoaDon](@MaHD nchar(10))
AS
Select ChiTietHD.DonGia, ChiTietHD.SoLuong, HoaDon.MaHD, HoaDon.NgayLap, 
KhachHang.TenKH, KhachHang.SoDT, KhachHang.DiaChi, NhanVien.TenNV, SanPham.TenSP
From ChiTietHD, SanPham, KhachHang, NhanVien, HoaDon
Where ChiTietHD.MaHD = @MaHD and ChiTietHD.MaSP = SanPham.MaSP 
and HoaDon.MaHD = ChiTietHD.MaHD and KhachHang.MaKH = HoaDon.MaKH
and NhanVien.MaNV = HoaDon.MaNV
GO
/****** Object:  StoredProcedure [dbo].[XemHoaDon]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XemHoaDon]
AS
Select MaHD, KhachHang.MaKH, KhachHang.TenKH, KhachHang.DiaChi, KhachHang.SoDT,NhanVien.TenNV, NgayLap, ThanhTien
from HoaDon, KhachHang, NhanVien
Where HoaDon.MaKH = KhachHang.MaKH And HoaDon.MaNV = NhanVien.MaNV
GO
/****** Object:  StoredProcedure [dbo].[XemKhachHang]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XemKhachHang]
AS
Select *
From KhachHang
GO
/****** Object:  StoredProcedure [dbo].[XemNhanVien]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XemNhanVien]
AS
Select *
From NhanVien
GO
/****** Object:  StoredProcedure [dbo].[xoaChitietHoaDon]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[xoaChitietHoaDon](@MaHD nchar(10))
AS
Delete
From ChiTietHD
Where MaHD = @MaHD
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDon]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XoaHoaDon](@MaHD nchar(10))
AS
Delete
From HoaDon
Where MaHD = @MaHD
GO
/****** Object:  StoredProcedure [dbo].[XoaKhachHang]    Script Date: 3/27/2022 12:21:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XoaKhachHang](@MaKH nchar(10))
AS
Delete
From KhachHang
Where MaKH = @MaKH
GO
USE [master]
GO
ALTER DATABASE [QLBanHang] SET  READ_WRITE 
GO
