use master
go
drop database [QuanLyBanHangTapHoa]
go
use master
go
create database [QuanLyBanHangTapHoa]
go
USE [QuanLyBanHangTapHoa]
GO
/****** Object:  Table [dbo].[DsChiTietHangTrongKho]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DsChiTietHangTrongKho](
	[MaHH] [char](10) NOT NULL,
	[MaKho] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_Thuoc] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC,
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [char](10) NOT NULL,
	[TenHH] [nvarchar](50) NULL,
	[MaLoai] [char](10) NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[SoLuong] [int] NULL,
	[MaHH] [char](10) NOT NULL,
	[MaPN] [char](10) NOT NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_HoaDonNhap_1] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC,
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonXuat]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonXuat](
	[MaPX] [char](10) NOT NULL,
	[MaHH] [char](10) NOT NULL,
	[SoLuong] [char](10) NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_HoaDonXuat_1] PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Khachhang](
	[MaKH] [char](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kho](
	[MaKho] [char](10) NOT NULL,
	[TenKho] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SLHHToiDa] [int] NULL,
	[MaNV] [char](10) NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiHH]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiHH](
	[MaLoai] [char](10) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiHH] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [char](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
 CONSTRAINT [PK_NhaCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[NamSinh] [date] NULL,
	[ChucVu] [nvarchar](50) NULL,
	[LuongThang] [nchar](10) NULL,
	[GioiTinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [char](10) NOT NULL,
	[NgayThang] [date] NULL,
	[TongTien] [int] NULL,
	[MaNV] [char](10) NULL,
	[MaNCC] [char](10) NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaPX] [char](10) NOT NULL,
	[NgayThang] [date] NULL,
	[TongTien] [int] NULL,
	[MaNV] [char](10) NULL,
	[MaKH] [char](10) NULL,
 CONSTRAINT [PK_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 6/4/2020 9:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable](
	[userName] [nvarchar](50) NOT NULL,
	[passWord] [char](10) NOT NULL,
	[properties] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[userName] ASC,
	[passWord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'1         ', N'1         ', 30)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'1         ', N'2         ', 40)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'1         ', N'3         ', 51)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'1         ', N'4         ', 52)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'1         ', N'5         ', 53)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'10        ', N'1         ', 54)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'10        ', N'2         ', 50)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'10        ', N'3         ', 52)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'10        ', N'4         ', 43)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'10        ', N'5         ', 40)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'11        ', N'1         ', 50)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'11        ', N'2         ', 50)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'11        ', N'3         ', 30)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'11        ', N'4         ', 21)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'11        ', N'5         ', 42)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'12        ', N'1         ', 43)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'12        ', N'2         ', 44)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'12        ', N'3         ', 45)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'12        ', N'4         ', 46)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'12        ', N'5         ', 47)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'13        ', N'1         ', 46)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'13        ', N'2         ', 43)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'13        ', N'3         ', 34)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'13        ', N'4         ', 52)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'13        ', N'5         ', 51)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'14        ', N'1         ', 59)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'14        ', N'2         ', 37)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'14        ', N'3         ', 36)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'14        ', N'4         ', 35)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'14        ', N'5         ', 43)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'15        ', N'1         ', 55)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'15        ', N'2         ', 45)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'15        ', N'3         ', 43)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'15        ', N'4         ', 32)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'15        ', N'5         ', 37)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'16        ', N'1         ', 46)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'16        ', N'2         ', 45)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'16        ', N'3         ', 47)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'16        ', N'4         ', 48)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'16        ', N'5         ', 49)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'17        ', N'1         ', 51)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'17        ', N'2         ', 50)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'17        ', N'3         ', 52)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'17        ', N'4         ', 37)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'17        ', N'5         ', 61)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'18        ', N'1         ', 62)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'18        ', N'2         ', 62)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'18        ', N'3         ', 63)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'18        ', N'4         ', 45)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'18        ', N'5         ', 55)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'19        ', N'1         ', 54)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'19        ', N'2         ', 38)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'19        ', N'3         ', 70)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'19        ', N'4         ', 72)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'19        ', N'5         ', 45)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'2         ', N'1         ', 56)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'2         ', N'2         ', 54)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'2         ', N'3         ', 44)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'2         ', N'4         ', 43)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'2         ', N'5         ', 75)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'20        ', N'1         ', 64)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'20        ', N'2         ', 65)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'20        ', N'3         ', 54)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'20        ', N'4         ', 53)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'20        ', N'5         ', 52)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'21        ', N'1         ', 34)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'21        ', N'2         ', 35)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'21        ', N'3         ', 38)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'21        ', N'4         ', 39)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'21        ', N'5         ', 40)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'22        ', N'1         ', 31)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'22        ', N'2         ', 32)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'22        ', N'3         ', 70)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'22        ', N'4         ', 71)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'22        ', N'5         ', 71)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'23        ', N'1         ', 73)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'23        ', N'2         ', 72)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'23        ', N'3         ', 40)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'23        ', N'4         ', 53)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'23        ', N'5         ', 65)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'24        ', N'1         ', 57)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'24        ', N'2         ', 45)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'24        ', N'3         ', 34)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'24        ', N'4         ', 87)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'24        ', N'5         ', 67)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'25        ', N'1         ', 69)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'25        ', N'2         ', 64)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'25        ', N'3         ', 63)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'25        ', N'4         ', 63)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'25        ', N'5         ', 62)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'26        ', N'1         ', 61)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'26        ', N'2         ', 68)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'26        ', N'3         ', 69)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'26        ', N'4         ', 54)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'26        ', N'5         ', 55)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'27        ', N'1         ', 56)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'27        ', N'2         ', 47)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'27        ', N'3         ', 60)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'27        ', N'4         ', 53)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'27        ', N'5         ', 59)
GO
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'28        ', N'1         ', 55)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'28        ', N'2         ', 53)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'28        ', N'3         ', 80)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'28        ', N'4         ', 81)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'28        ', N'5         ', 72)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'29        ', N'1         ', 73)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'29        ', N'2         ', 65)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'29        ', N'3         ', 62)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'29        ', N'4         ', 69)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'29        ', N'5         ', 83)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'3         ', N'1         ', 72)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'3         ', N'2         ', 73)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'3         ', N'3         ', 78)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'3         ', N'4         ', 79)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'3         ', N'5         ', 75)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'30        ', N'1         ', 76)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'30        ', N'2         ', 54)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'30        ', N'3         ', 73)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'30        ', N'4         ', 71)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'30        ', N'5         ', 50)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'4         ', N'1         ', 50)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'4         ', N'2         ', 45)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'4         ', N'3         ', 67)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'4         ', N'4         ', 68)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'4         ', N'5         ', 63)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'5         ', N'1         ', 65)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'5         ', N'2         ', 87)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'5         ', N'3         ', 34)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'5         ', N'4         ', 45)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'5         ', N'5         ', 65)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'6         ', N'1         ', 76)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'6         ', N'2         ', 70)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'6         ', N'3         ', 87)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'6         ', N'4         ', 43)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'6         ', N'5         ', 56)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'7         ', N'1         ', 50)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'7         ', N'2         ', 59)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'7         ', N'3         ', 58)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'7         ', N'4         ', 59)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'7         ', N'5         ', 56)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'8         ', N'1         ', 54)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'8         ', N'2         ', 53)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'8         ', N'3         ', 52)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'8         ', N'4         ', 51)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'8         ', N'5         ', 55)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'9         ', N'1         ', 70)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'9         ', N'2         ', 71)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'9         ', N'3         ', 72)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'9         ', N'4         ', 50)
INSERT [dbo].[DsChiTietHangTrongKho] ([MaHH], [MaKho], [SoLuong]) VALUES (N'9         ', N'5         ', 50)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'1         ', N'Kem đánh răng Crest', N'1         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'10        ', N'Kem đánh răng Arm & Hammer', N'1         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'11        ', N'Mì tôm hảo hảo chua cay', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'12        ', N'Mì tôm miliket', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'13        ', N'Mì tôm omachi', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'14        ', N'Mì tôm kokomi', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'15        ', N'Mì tôm đệ nhất', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'16        ', N'Mì tôm 3 miền', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'17        ', N'Mì tôm cung đình', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'18        ', N'Mì tôm lẩu thái', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'19        ', N'Mì tôm bình minh', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'2         ', N'Kem đánh răng Aquafresh', N'1         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'20        ', N'Mì tôm trẻ em', N'2         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'21        ', N'Dầu gội đầu thái dương', N'3         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'22        ', N'Dầu gội đầu Xmen', N'3         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'23        ', N'Dầu gội đầu Clear', N'3         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'24        ', N'Mì gạo', N'4         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'25        ', N'Mì chũ', N'4         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'26        ', N'Miến', N'4         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'27        ', N'Bim bim snack', N'5         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'28        ', N'Bim bim trẻ em', N'5         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'29        ', N'Bim bim lạng', N'5         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'3         ', N'Kem đánh răng Colgate-Palmolive', N'1         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'30        ', N'Bim bim osi', N'5         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'4         ', N'Kem đánh răng lô hội Forever Bright Toothgel', N'1         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'5         ', N'Kem đánh răng Sensodyne', N'1         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'6         ', N'Kem đánh răng Glister của Armway', N'1         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'7         ', N'Kem đánh răng AIM', N'1         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'8         ', N'Kem đánh răng Pepsodent', N'1         ')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [MaLoai]) VALUES (N'9         ', N'Kem đánh răng Close-up', N'1         ')
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'1         ', N'1         ', 4000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'1         ', N'31        ', 3500)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'1         ', N'72        ', 3000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'10        ', N'10        ', 3100)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'10        ', N'40        ', 3200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'11        ', N'11        ', 3300)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'11        ', N'41        ', 3600)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'11        ', N'52        ', 3700)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'12        ', N'12        ', 3800)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'12        ', N'42        ', 3900)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'12        ', N'53        ', 3000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'13        ', N'13        ', 4000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'13        ', N'43        ', 4000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'13        ', N'54        ', 4300)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'14        ', N'14        ', 4500)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'14        ', N'44        ', 4300)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'14        ', N'55        ', 3400)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'15        ', N'15        ', 4300)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'15        ', N'45        ', 3000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'15        ', N'67        ', 3500)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'16        ', N'16        ', 3700)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'16        ', N'46        ', 3800)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'16        ', N'56        ', 5400)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'17        ', N'17        ', 5400)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'17        ', N'47        ', 5600)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'17        ', N'58        ', 6500)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'18        ', N'18        ', 3400)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'18        ', N'48        ', 3600)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'18        ', N'59        ', 3700)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'19        ', N'19        ', 3600)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'19        ', N'49        ', 4500)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'19        ', N'60        ', 3000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'2         ', N'2         ', 4300)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'2         ', N'32        ', 3000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'2         ', N'73        ', 4200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'20        ', N'20        ', 4100)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'20        ', N'50        ', 7600)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'20        ', N'61        ', 4500)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'21        ', N'21        ', 4600)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'21        ', N'51        ', 6500)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'21        ', N'62        ', 4300)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'22        ', N'22        ', 4700)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'22        ', N'63        ', 4800)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'23        ', N'23        ', 4900)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'23        ', N'64        ', 3800)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'24        ', N'24        ', 3900)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'24        ', N'65        ', 3200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'25        ', N'25        ', 3100)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'25        ', N'66        ', 3000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'26        ', N'26        ', 3000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'27        ', N'27        ', 4800)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'27        ', N'68        ', 3400)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'28        ', N'28        ', 3500)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'28        ', N'69        ', 3000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'29        ', N'29        ', 3600)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'29        ', N'70        ', 3700)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'3         ', N'3         ', 3800)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'3         ', N'33        ', 3100)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'3         ', N'74        ', 3200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'30        ', N'30        ', 3100)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'30        ', N'71        ', 3200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'4         ', N'34        ', 4000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'4         ', N'4         ', 5000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'4         ', N'75        ', 5000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'5         ', N'35        ', 4000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'5         ', N'5         ', 4000)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'5         ', N'76        ', 4100)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'6         ', N'36        ', 4200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'6         ', N'6         ', 4300)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'6         ', N'77        ', 4200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'7         ', N'37        ', 5300)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'7         ', N'7         ', 3200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'7         ', N'78        ', 3100)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'8         ', N'38        ', 4500)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'8         ', N'79        ', 5600)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'8         ', N'8         ', 3200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'9         ', N'39        ', 3200)
INSERT [dbo].[HoaDonNhap] ([SoLuong], [MaHH], [MaPN], [DonGia]) VALUES (50, N'9         ', N'9         ', 2300)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'1         ', N'1         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'10        ', N'10        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'11        ', N'11        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'12        ', N'12        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'13        ', N'13        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'14        ', N'14        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'15        ', N'15        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'16        ', N'16        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'17        ', N'17        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'18        ', N'18        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'19        ', N'19        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'2         ', N'2         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'20        ', N'20        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'21        ', N'21        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'22        ', N'22        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'23        ', N'23        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'24        ', N'24        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'25        ', N'25        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'26        ', N'26        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'27        ', N'27        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'28        ', N'28        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'29        ', N'29        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'3         ', N'3         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'30        ', N'30        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'31        ', N'1         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'32        ', N'2         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'33        ', N'3         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'34        ', N'4         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'35        ', N'5         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'36        ', N'6         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'37        ', N'7         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'38        ', N'8         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'39        ', N'9         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'4         ', N'4         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'40        ', N'10        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'41        ', N'11        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'42        ', N'12        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'43        ', N'13        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'44        ', N'14        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'45        ', N'15        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'46        ', N'16        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'47        ', N'17        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'48        ', N'18        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'49        ', N'19        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'5         ', N'5         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'50        ', N'20        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'51        ', N'21        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'52        ', N'11        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'53        ', N'12        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'54        ', N'13        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'55        ', N'14        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'56        ', N'16        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'58        ', N'17        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'59        ', N'18        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'6         ', N'6         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'60        ', N'19        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'61        ', N'20        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'62        ', N'21        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'63        ', N'22        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'64        ', N'23        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'65        ', N'24        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'66        ', N'25        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'67        ', N'15        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'68        ', N'27        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'69        ', N'28        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'7         ', N'7         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'70        ', N'29        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'71        ', N'30        ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'72        ', N'1         ', N'50        ', 900)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'73        ', N'2         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'74        ', N'3         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'75        ', N'4         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'76        ', N'5         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'77        ', N'6         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'78        ', N'7         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'79        ', N'8         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'8         ', N'8         ', N'50        ', 9000)
INSERT [dbo].[HoaDonXuat] ([MaPX], [MaHH], [SoLuong], [DonGia]) VALUES (N'9         ', N'9         ', N'50        ', 9000)
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'1         ', N'Nguyễn văn quang', N'nam định', N'012345    ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'10        ', N'Nguyễn thi thu', N'nha trang', N'013452    ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'11        ', N'Nguyễn thị ánh', N'điên biên', N'013245    ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'12        ', N'Nguyễn thị lan', N'lai châu', N'0123451   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'13        ', N'Nguyễn thị hương', N'vũng tàu', N'0123452   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'14        ', N'Nguyễn thị hường', N'đà năng', N'0123453   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'15        ', N'Nguyễn thị linh', N'thanh hóa', N'0123454   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'16        ', N'Nguyễn thị tuyến', N'nghệ an', N'0123455   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'17        ', N'Nguyễn thị ngân', N'tây ninh', N'0123456   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'18        ', N'Nguyễn thị tuyết', N'lâm đồng', N'0123457   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'19        ', N'Nguyễn thị hiền', N'nghệ tĩnh', N'0123458   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'2         ', N'Nguyễn văn thang', N'hà nam', N'012354    ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'20        ', N'Nguyễn thị thu', N'hà giang', N'0123459   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'21        ', N'Nguyễn thị đông', N'hải phòng', N'0123450   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'22        ', N'Nguyễn thị ngân', N'đà năng', N'0123495   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'23        ', N'Nguyễn văn mạnh', N'huế', N'0123485   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'24        ', N'Nguyễn văn hưng', N'đăck nông', N'0123475   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'25        ', N'Nguyễn văn hiếu', N'đăck lăck', N'0123465   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'26        ', N'Nguyễn văn thắng', N'cao bằng', N'0123545   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'27        ', N'Nguyễn văn anh', N'yên bái', N'0123445   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'28        ', N'Nguyễn văn hùng', N'quảng bình', N'0123435   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'29        ', N'Nguyễn văn dũng', N'quảng trị', N'0123425   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'3         ', N'Nguyễn văn ba', N'ninh binh', N'012543    ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'30        ', N'Nguyễn văn tiến', N'long an', N'0123415   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'4         ', N'Nguyễn văn hai', N'hà nội', N'012534    ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'5         ', N'Nguyễn văn bảy', N'tây nguyên', N'012453    ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'6         ', N'Nguyễn văn tư', N'hồ chí minh', N'0123435   ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'7         ', N'Nguyễn văn tý', N'tuyên quang', N'013245    ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'8         ', N'Nguyễn thị huyền', N'bình định', N'013254    ')
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'9         ', N'Nguyễn thi trang', N'khánh hòa', N'013425    ')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi], [SLHHToiDa], [MaNV]) VALUES (N'1         ', N'Kho 1', N'69 dương khuê cầu giấy hà nội', 600000, N'1         ')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi], [SLHHToiDa], [MaNV]) VALUES (N'2         ', N'Kho 2', N'89 nguyễn hoàng cầu giấy hà nội', 600000, N'1         ')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi], [SLHHToiDa], [MaNV]) VALUES (N'3         ', N'Kho 3', N'69 Phạm văn đồng cầu giấy hà nội', 600000, N'1         ')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi], [SLHHToiDa], [MaNV]) VALUES (N'4         ', N'Kho 4', N'80 Trần quốc hoàn cầu giấy hà nội', 600000, N'1         ')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi], [SLHHToiDa], [MaNV]) VALUES (N'5         ', N'Kho 5', N'99 Hoàng quốc việt cầu giấy hà nội', 600000, N'1         ')
INSERT [dbo].[LoaiHH] ([MaLoai], [TenLoai]) VALUES (N'1         ', N'Kem đánh răng')
INSERT [dbo].[LoaiHH] ([MaLoai], [TenLoai]) VALUES (N'2         ', N'Mì tôm')
INSERT [dbo].[LoaiHH] ([MaLoai], [TenLoai]) VALUES (N'3         ', N'Dầu gội đầu')
INSERT [dbo].[LoaiHH] ([MaLoai], [TenLoai]) VALUES (N'4         ', N'Mì gạo')
INSERT [dbo].[LoaiHH] ([MaLoai], [TenLoai]) VALUES (N'5         ', N'Bim bim')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'1         ', N'Kem đánh răng', N'80 lê đức thọ', N'54321     ')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'2         ', N'Mì tôm', N'90 phạm văn đồng', N'54322     ')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'3         ', N'Dầu gội đầu', N'80 duy tân', N'54323     ')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'4         ', N'Mì gạo', N'90 xuân thủy', N'54324     ')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'5         ', N'Bim bim', N'160 cầu giấy hà nội', N'54325     ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'1         ', N'Nguyễn văn Quang', N'Nam Định', CAST(N'1988-01-01' AS Date), N'Quản Lý', N'4700000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'10        ', N'Lê  Văn Sơn', N'Đắc lăck', CAST(N'1997-01-01' AS Date), N'Nhân Viên', N'3800000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'11        ', N'Nguyễn Thị Huyền', N'Gia Lai', CAST(N'1998-01-01' AS Date), N'Nhân Viên', N'3700000   ', N'Nữ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'12        ', N'Trần Văn Đạt', N'Cà Mau', CAST(N'1999-01-01' AS Date), N'Nhân Viên', N'3600000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'13        ', N'Ngô Thị Tuyết', N'Hà Giang', CAST(N'2000-01-01' AS Date), N'Nhân Viên', N'3500000   ', N'Nữ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'14        ', N'Pham Thi My', N'Yên Bái', CAST(N'2001-01-01' AS Date), N'Nhân Viên', N'3400000   ', N'Nữ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'15        ', N'Lê Văn Hóa', N'Tuyên Quang', CAST(N'2002-01-01' AS Date), N'Nhân Viên', N'3300000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'16        ', N'Nguyễn Xuân Tỵ', N'Đà Năng', CAST(N'2003-01-01' AS Date), N'Nhân Viên', N'3200000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'17        ', N'Trần Thị Hường', N'Huế', CAST(N'2004-01-01' AS Date), N'Nhân Viên', N'3100000   ', N'Nữ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'18        ', N'Ngô Thị Hương', N'Bình Định', CAST(N'2005-01-01' AS Date), N'Nhân Viên', N'3000000   ', N'Nữ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'19        ', N'Vũ Văn Ba', N'Hồ Chí Minh', CAST(N'2006-01-01' AS Date), N'Nhân Viên', N'2900000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'2         ', N'Trần Văn Linh', N'Ninh Bình', CAST(N'1989-01-01' AS Date), N'Nhân Viên', N'4600000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'20        ', N'Vũ Văn Tư', N'Hồ Chí Minh', CAST(N'2007-01-01' AS Date), N'Nhân Viên', N'2800000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'3         ', N'Ngô Văn Tú', N'Hà Nam', CAST(N'1990-01-01' AS Date), N'Nhân Viên', N'4500000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'4         ', N'Pham Thị Trang', N'Hà Nội', CAST(N'1991-01-01' AS Date), N'Nhân Viên', N'4400000   ', N'Nữ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'5         ', N'Lê Văn Đông', N'Lào Cai', CAST(N'1992-01-01' AS Date), N'Nhân Viên', N'4300000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'6         ', N'Nguyễn Văn Đô', N'Điện biên', CAST(N'1993-01-01' AS Date), N'Nhân Viên', N'4200000   ', N'Nam')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'7         ', N'Trần Thị Bưởi', N'Lai Châu', CAST(N'1994-01-01' AS Date), N'Nhân Viên', N'4100000   ', N'Nữ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'8         ', N'Ngô Thị Tý', N'Phú Thọ', CAST(N'1995-01-01' AS Date), N'Nhân Viên', N'4000000   ', N'Nữ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [QueQuan], [NamSinh], [ChucVu], [LuongThang], [GioiTinh]) VALUES (N'9         ', N'Pham Văn Đông', N'Yên bái', CAST(N'1996-01-01' AS Date), N'Nhân Viên', N'3900000   ', N'Nam')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'1         ', CAST(N'2019-01-10' AS Date), 150000, N'1         ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'10        ', CAST(N'2019-10-10' AS Date), 150000, N'10        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'11        ', CAST(N'2019-11-10' AS Date), 150000, N'11        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'12        ', CAST(N'2019-12-10' AS Date), 150000, N'12        ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'13        ', CAST(N'2019-03-10' AS Date), 150000, N'13        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'14        ', CAST(N'2019-04-10' AS Date), 150000, N'14        ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'15        ', CAST(N'2019-05-10' AS Date), 150000, N'15        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'16        ', CAST(N'2019-06-10' AS Date), 150000, N'16        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'17        ', CAST(N'2019-07-10' AS Date), 150000, N'17        ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'18        ', CAST(N'2019-08-10' AS Date), 150000, N'18        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'19        ', CAST(N'2019-09-10' AS Date), 150000, N'19        ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'2         ', CAST(N'2019-02-10' AS Date), 150000, N'2         ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'20        ', CAST(N'2019-02-10' AS Date), 150000, N'20        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'21        ', CAST(N'2019-01-10' AS Date), 150000, N'11        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'22        ', CAST(N'2019-02-10' AS Date), 150000, N'12        ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'23        ', CAST(N'2019-03-10' AS Date), 150000, N'13        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'24        ', CAST(N'2019-04-10' AS Date), 150000, N'14        ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'25        ', CAST(N'2019-05-10' AS Date), 150000, N'15        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'26        ', CAST(N'2019-06-10' AS Date), 150000, N'16        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'27        ', CAST(N'2019-07-10' AS Date), 150000, N'17        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'28        ', CAST(N'2019-08-10' AS Date), 150000, N'18        ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'29        ', CAST(N'2019-09-10' AS Date), 150000, N'19        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'3         ', CAST(N'2019-03-10' AS Date), 150000, N'3         ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'30        ', CAST(N'2019-03-10' AS Date), 150000, N'20        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'31        ', CAST(N'2019-01-10' AS Date), 150000, N'1         ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'32        ', CAST(N'2019-02-11' AS Date), 150000, N'2         ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'33        ', CAST(N'2019-03-11' AS Date), 150000, N'3         ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'34        ', CAST(N'2019-04-11' AS Date), 150000, N'4         ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'35        ', CAST(N'2019-05-11' AS Date), 150000, N'5         ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'36        ', CAST(N'2019-06-11' AS Date), 150000, N'6         ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'37        ', CAST(N'2019-07-11' AS Date), 150000, N'7         ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'38        ', CAST(N'2019-08-11' AS Date), 150000, N'8         ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'39        ', CAST(N'2019-09-11' AS Date), 150000, N'9         ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'4         ', CAST(N'2019-04-10' AS Date), 150000, N'4         ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'40        ', CAST(N'2019-10-11' AS Date), 150000, N'10        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'41        ', CAST(N'2019-11-11' AS Date), 150000, N'11        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'42        ', CAST(N'2019-12-11' AS Date), 150000, N'12        ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'43        ', CAST(N'2019-11-11' AS Date), 150000, N'13        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'44        ', CAST(N'2019-04-11' AS Date), 150000, N'14        ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'45        ', CAST(N'2019-05-11' AS Date), 150000, N'15        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'46        ', CAST(N'2019-06-11' AS Date), 150000, N'16        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'47        ', CAST(N'2019-07-11' AS Date), 150000, N'17        ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'48        ', CAST(N'2019-08-11' AS Date), 150000, N'18        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'49        ', CAST(N'2019-09-11' AS Date), 150000, N'19        ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'5         ', CAST(N'2019-05-10' AS Date), 150000, N'5         ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'50        ', CAST(N'2019-11-11' AS Date), 150000, N'20        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'51        ', CAST(N'2019-11-11' AS Date), 150000, N'1         ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'52        ', CAST(N'2019-08-11' AS Date), 150000, N'2         ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'53        ', CAST(N'2019-07-11' AS Date), 150000, N'3         ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'54        ', CAST(N'2019-06-11' AS Date), 150000, N'4         ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'55        ', CAST(N'2019-05-11' AS Date), 150000, N'5         ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'56        ', CAST(N'2019-04-11' AS Date), 150000, N'6         ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'58        ', CAST(N'2019-02-11' AS Date), 150000, N'8         ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'59        ', CAST(N'2019-01-11' AS Date), 150000, N'9         ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'6         ', CAST(N'2019-06-10' AS Date), 150000, N'6         ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'60        ', CAST(N'2019-10-11' AS Date), 150000, N'10        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'61        ', CAST(N'2019-01-09' AS Date), 150000, N'11        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'62        ', CAST(N'2019-02-09' AS Date), 150000, N'12        ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'63        ', CAST(N'2019-03-09' AS Date), 150000, N'13        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'64        ', CAST(N'2019-04-09' AS Date), 150000, N'14        ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'65        ', CAST(N'2019-05-09' AS Date), 150000, N'14        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'66        ', CAST(N'2019-06-09' AS Date), 150000, N'16        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'67        ', CAST(N'2019-03-11' AS Date), 150000, N'7         ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'68        ', CAST(N'2019-08-09' AS Date), 150000, N'18        ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'69        ', CAST(N'2019-09-09' AS Date), 150000, N'19        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'7         ', CAST(N'2019-07-10' AS Date), 150000, N'7         ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'70        ', CAST(N'2019-10-09' AS Date), 150000, N'20        ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'71        ', CAST(N'2019-09-09' AS Date), 150000, N'11        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'72        ', CAST(N'2019-08-09' AS Date), 150000, N'12        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'73        ', CAST(N'2019-07-09' AS Date), 150000, N'13        ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'74        ', CAST(N'2019-06-09' AS Date), 150000, N'14        ', N'4         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'75        ', CAST(N'2019-05-09' AS Date), 150000, N'15        ', N'5         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'76        ', CAST(N'2019-04-09' AS Date), 150000, N'16        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'77        ', CAST(N'2019-03-09' AS Date), 150000, N'17        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'78        ', CAST(N'2019-02-09' AS Date), 150000, N'18        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'79        ', CAST(N'2019-01-09' AS Date), 150000, N'19        ', N'1         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'8         ', CAST(N'2019-08-10' AS Date), 150000, N'8         ', N'3         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'80        ', CAST(N'2019-10-09' AS Date), 100000, N'20        ', N'2         ')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayThang], [TongTien], [MaNV], [MaNCC]) VALUES (N'9         ', CAST(N'2019-09-10' AS Date), 150000, N'9         ', N'4         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'1         ', CAST(N'2019-01-10' AS Date), 450000, N'1         ', N'1         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'10        ', CAST(N'2019-10-10' AS Date), 450000, N'10        ', N'10        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'11        ', CAST(N'2019-11-10' AS Date), 450000, N'11        ', N'11        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'12        ', CAST(N'2019-12-10' AS Date), 450000, N'12        ', N'12        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'13        ', CAST(N'2019-03-10' AS Date), 450000, N'13        ', N'13        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'14        ', CAST(N'2019-04-10' AS Date), 450000, N'14        ', N'14        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'15        ', CAST(N'2019-05-10' AS Date), 450000, N'15        ', N'15        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'16        ', CAST(N'2019-06-10' AS Date), 450000, N'16        ', N'16        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'17        ', CAST(N'2019-07-10' AS Date), 450000, N'17        ', N'17        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'18        ', CAST(N'2019-08-10' AS Date), 450000, N'18        ', N'18        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'19        ', CAST(N'2019-09-10' AS Date), 450000, N'19        ', N'19        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'2         ', CAST(N'2019-02-10' AS Date), 450000, N'2         ', N'2         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'20        ', CAST(N'2019-02-10' AS Date), 450000, N'20        ', N'20        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'21        ', CAST(N'2019-01-10' AS Date), 450000, N'11        ', N'21        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'22        ', CAST(N'2019-02-10' AS Date), 450000, N'12        ', N'22        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'23        ', CAST(N'2019-03-10' AS Date), 450000, N'13        ', N'23        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'24        ', CAST(N'2019-04-10' AS Date), 450000, N'14        ', N'24        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'25        ', CAST(N'2019-05-10' AS Date), 450000, N'15        ', N'25        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'26        ', CAST(N'2019-06-10' AS Date), 450000, N'16        ', N'26        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'27        ', CAST(N'2019-07-10' AS Date), 450000, N'17        ', N'27        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'28        ', CAST(N'2019-08-10' AS Date), 450000, N'18        ', N'28        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'29        ', CAST(N'2019-09-10' AS Date), 450000, N'19        ', N'29        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'3         ', CAST(N'2019-03-10' AS Date), 450000, N'3         ', N'3         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'30        ', CAST(N'2019-03-10' AS Date), 450000, N'20        ', N'30        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'31        ', CAST(N'2019-01-10' AS Date), 450000, N'1         ', N'1         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'32        ', CAST(N'2019-02-11' AS Date), 450000, N'2         ', N'2         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'33        ', CAST(N'2019-03-11' AS Date), 450000, N'3         ', N'3         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'34        ', CAST(N'2019-04-11' AS Date), 450000, N'4         ', N'4         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'35        ', CAST(N'2019-05-11' AS Date), 450000, N'5         ', N'5         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'36        ', CAST(N'2019-06-11' AS Date), 450000, N'6         ', N'6         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'37        ', CAST(N'2019-07-11' AS Date), 450000, N'7         ', N'7         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'38        ', CAST(N'2019-08-11' AS Date), 450000, N'8         ', N'8         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'39        ', CAST(N'2019-09-11' AS Date), 450000, N'9         ', N'9         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'4         ', CAST(N'2019-04-10' AS Date), 450000, N'4         ', N'4         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'40        ', CAST(N'2019-10-11' AS Date), 450000, N'10        ', N'10        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'41        ', CAST(N'2019-11-11' AS Date), 450000, N'11        ', N'11        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'42        ', CAST(N'2019-12-11' AS Date), 450000, N'12        ', N'12        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'43        ', CAST(N'2019-11-11' AS Date), 450000, N'13        ', N'13        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'44        ', CAST(N'2019-04-11' AS Date), 450000, N'14        ', N'14        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'45        ', CAST(N'2019-05-11' AS Date), 450000, N'15        ', N'15        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'46        ', CAST(N'2019-06-11' AS Date), 450000, N'16        ', N'16        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'47        ', CAST(N'2019-07-11' AS Date), 450000, N'17        ', N'17        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'48        ', CAST(N'2019-08-11' AS Date), 450000, N'18        ', N'18        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'49        ', CAST(N'2019-09-11' AS Date), 450000, N'19        ', N'19        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'5         ', CAST(N'2019-05-10' AS Date), 450000, N'5         ', N'5         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'50        ', CAST(N'2019-11-11' AS Date), 450000, N'20        ', N'20        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'51        ', CAST(N'2019-11-11' AS Date), 450000, N'1         ', N'21        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'52        ', CAST(N'2019-08-11' AS Date), 450000, N'2         ', N'22        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'53        ', CAST(N'2019-07-11' AS Date), 450000, N'3         ', N'23        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'54        ', CAST(N'2019-06-11' AS Date), 450000, N'4         ', N'24        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'55        ', CAST(N'2019-05-11' AS Date), 450000, N'5         ', N'25        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'56        ', CAST(N'2019-04-11' AS Date), 450000, N'6         ', N'26        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'58        ', CAST(N'2019-02-11' AS Date), 450000, N'8         ', N'28        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'59        ', CAST(N'2019-01-11' AS Date), 450000, N'9         ', N'29        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'6         ', CAST(N'2019-06-10' AS Date), 450000, N'6         ', N'6         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'60        ', CAST(N'2019-10-11' AS Date), 450000, N'10        ', N'30        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'61        ', CAST(N'2019-01-09' AS Date), 450000, N'11        ', N'1         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'62        ', CAST(N'2019-02-09' AS Date), 450000, N'12        ', N'2         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'63        ', CAST(N'2019-03-09' AS Date), 450000, N'13        ', N'3         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'64        ', CAST(N'2019-04-09' AS Date), 450000, N'14        ', N'4         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'65        ', CAST(N'2019-05-09' AS Date), 450000, N'14        ', N'5         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'66        ', CAST(N'2019-06-09' AS Date), 450000, N'16        ', N'6         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'67        ', CAST(N'2019-03-11' AS Date), 450000, N'7         ', N'27        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'68        ', CAST(N'2019-08-09' AS Date), 450000, N'18        ', N'8         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'69        ', CAST(N'2019-09-09' AS Date), 450000, N'19        ', N'8         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'7         ', CAST(N'2019-07-10' AS Date), 450000, N'7         ', N'7         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'70        ', CAST(N'2019-10-09' AS Date), 450000, N'20        ', N'10        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'71        ', CAST(N'2019-09-09' AS Date), 450000, N'11        ', N'11        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'72        ', CAST(N'2019-08-09' AS Date), 45000, N'12        ', N'12        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'73        ', CAST(N'2019-07-09' AS Date), 450000, N'13        ', N'13        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'74        ', CAST(N'2019-06-09' AS Date), 450000, N'14        ', N'14        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'75        ', CAST(N'2019-05-09' AS Date), 450000, N'15        ', N'15        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'76        ', CAST(N'2019-04-09' AS Date), 450000, N'16        ', N'16        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'77        ', CAST(N'2019-03-09' AS Date), 450000, N'17        ', N'17        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'78        ', CAST(N'2019-02-09' AS Date), 450000, N'18        ', N'18        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'79        ', CAST(N'2019-01-09' AS Date), 450000, N'19        ', N'19        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'8         ', CAST(N'2019-08-10' AS Date), 450000, N'8         ', N'8         ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'80        ', CAST(N'2019-10-09' AS Date), 100000, N'20        ', N'20        ')
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayThang], [TongTien], [MaNV], [MaKH]) VALUES (N'9         ', CAST(N'2019-09-10' AS Date), 450000, N'9         ', N'9         ')
INSERT [dbo].[UserTable] ([userName], [passWord], [properties]) VALUES (N'admin', N'12345678  ', N'admin')
ALTER TABLE [dbo].[DsChiTietHangTrongKho]  WITH CHECK ADD  CONSTRAINT [FK_DsChiTietHangTrongKho_HangHoa1] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[DsChiTietHangTrongKho] CHECK CONSTRAINT [FK_DsChiTietHangTrongKho_HangHoa1]
GO
ALTER TABLE [dbo].[DsChiTietHangTrongKho]  WITH CHECK ADD  CONSTRAINT [FK_DsChiTietHangTrongKho_Kho1] FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[DsChiTietHangTrongKho] CHECK CONSTRAINT [FK_DsChiTietHangTrongKho_Kho1]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_LoaiHH] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiHH] ([MaLoai])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_LoaiHH]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_HangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_HangHoa]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[HoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonXuat_HangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[HoaDonXuat] CHECK CONSTRAINT [FK_HoaDonXuat_HangHoa]
GO
ALTER TABLE [dbo].[HoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonXuat_PhieuXuat] FOREIGN KEY([MaPX])
REFERENCES [dbo].[PhieuXuat] ([MaPX])
GO
ALTER TABLE [dbo].[HoaDonXuat] CHECK CONSTRAINT [FK_HoaDonXuat_PhieuXuat]
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD  CONSTRAINT [FK_Kho_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Kho] CHECK CONSTRAINT [FK_Kho_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCC]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien1] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien1]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_Khachhang1] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khachhang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_Khachhang1]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_NhanVien]
GO
