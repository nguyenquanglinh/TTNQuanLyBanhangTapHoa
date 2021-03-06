USE [KhoNhaHang]
GO
/****** Object:  Table [dbo].[BienBanThanhLy]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BienBanThanhLy](
	[MaBB] [int] NOT NULL,
	[NgayLap] [date] NULL DEFAULT (getdate()),
	[MaNV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietBBTL]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBBTL](
	[MaBB] [int] NOT NULL,
	[MaNL] [int] NOT NULL,
	[Gia] [int] NOT NULL,
	[SoLuong] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBB] ASC,
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[MaHD] [int] NOT NULL,
	[MaNL] [int] NOT NULL,
	[GiaTien] [int] NOT NULL,
	[SoLuong] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPDNL]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPDNL](
	[MaPDNL] [int] NOT NULL,
	[MaNL] [int] NOT NULL,
	[SoLuong] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPDNL] ASC,
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPTK]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPTK](
	[MaPTK] [int] NOT NULL,
	[MaNL] [int] NOT NULL,
	[SoLuong] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPTK] ASC,
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonNhapNL]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhapNL](
	[MaHDN] [int] NOT NULL,
	[MaPDNL] [int] NULL,
	[NgayLap] [date] NULL DEFAULT (getdate()),
	[MaNV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[MaNL] [int] NOT NULL,
	[TenNL] [nvarchar](30) NULL,
	[LoaiTuoiKho] [bit] NULL,
	[GiaTien] [int] NULL,
	[SoLuong] [float] NULL DEFAULT ((0)),
	[TenDonVi] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuDatNL]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatNL](
	[MaPDNL] [int] NOT NULL,
	[NgayLap] [date] NULL DEFAULT (getdate()),
	[MaNCC] [int] NULL,
	[MaNV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPDNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuThongKe]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThongKe](
	[MaPTK] [int] NOT NULL,
	[NgayLap] [date] NULL DEFAULT (getdate()),
	[MaNV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BienBanThanhLy] ([MaBB], [NgayLap], [MaNV]) VALUES (2, CAST(N'2020-06-01' AS Date), 8)
INSERT [dbo].[BienBanThanhLy] ([MaBB], [NgayLap], [MaNV]) VALUES (3, CAST(N'2020-06-01' AS Date), 9)
INSERT [dbo].[ChiTietBBTL] ([MaBB], [MaNL], [Gia], [SoLuong]) VALUES (2, 7, 55000, 3)
INSERT [dbo].[ChiTietBBTL] ([MaBB], [MaNL], [Gia], [SoLuong]) VALUES (2, 9, 40000, 2)
INSERT [dbo].[ChiTietBBTL] ([MaBB], [MaNL], [Gia], [SoLuong]) VALUES (2, 10, 50000, 2)
INSERT [dbo].[ChiTietBBTL] ([MaBB], [MaNL], [Gia], [SoLuong]) VALUES (3, 6, 24000, 1)
INSERT [dbo].[ChiTietBBTL] ([MaBB], [MaNL], [Gia], [SoLuong]) VALUES (3, 8, 23000, 1)
INSERT [dbo].[ChiTietBBTL] ([MaBB], [MaNL], [Gia], [SoLuong]) VALUES (3, 9, 22000, 1)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (2, 2, 15000, 5)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (3, 5, 18000, 6)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (4, 10, 10000, 2)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (4, 11, 11000, 3)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (4, 12, 12000, 4)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (5, 11, 14000, 6)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (5, 12, 15000, 7)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (5, 13, 13000, 5)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (6, 13, 16000, 6)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (6, 14, 17000, 5)
INSERT [dbo].[ChiTietHDN] ([MaHD], [MaNL], [GiaTien], [SoLuong]) VALUES (6, 15, 18000, 4)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (1, 5, 4)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (1, 13, 4)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (1, 14, 3)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (1, 15, 2)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (2, 5, 5)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (3, 5, 6)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (6, 10, 7)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (6, 11, 6)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (6, 12, 5)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (8, 7, 6)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (8, 9, 4)
INSERT [dbo].[ChiTietPDNL] ([MaPDNL], [MaNL], [SoLuong]) VALUES (8, 11, 5)
INSERT [dbo].[ChiTietPTK] ([MaPTK], [MaNL], [SoLuong]) VALUES (3, 5, 7)
INSERT [dbo].[HoaDonNhapNL] ([MaHDN], [MaPDNL], [NgayLap], [MaNV]) VALUES (2, 2, CAST(N'2020-06-01' AS Date), 4)
INSERT [dbo].[HoaDonNhapNL] ([MaHDN], [MaPDNL], [NgayLap], [MaNV]) VALUES (3, 3, CAST(N'2020-06-01' AS Date), 5)
INSERT [dbo].[HoaDonNhapNL] ([MaHDN], [MaPDNL], [NgayLap], [MaNV]) VALUES (4, 1, CAST(N'2020-07-03' AS Date), 10)
INSERT [dbo].[HoaDonNhapNL] ([MaHDN], [MaPDNL], [NgayLap], [MaNV]) VALUES (5, 3, CAST(N'2020-06-01' AS Date), 11)
INSERT [dbo].[HoaDonNhapNL] ([MaHDN], [MaPDNL], [NgayLap], [MaNV]) VALUES (6, 7, CAST(N'2020-06-01' AS Date), 12)
INSERT [dbo].[HoaDonNhapNL] ([MaHDN], [MaPDNL], [NgayLap], [MaNV]) VALUES (8, 7, CAST(N'2020-06-01' AS Date), 12)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (2, N'Thịt lợn', 1, 20000, 4, N'cân')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (5, N'Mì chính', 1, 20000, 7, N'cân')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (6, N'Gan trời', 1, 10000, 7, N'm3')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (7, N'Thịt ngỗng', 1, 20000, 8, N'h?p 10m3')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (8, N'Mỡ muỗi', 1, 30000, 9, N'thùng 1m3')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (9, N'Gan ngỗng', 1, 15000, 11, N'kh?i 3m3')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (10, N'Cá basa', 1, 20000, 6, N'8 l?ng')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (11, N'Mật ong hoa', 1, 40000, 6, N'l?ng')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (12, N'Mật ong rừng', 1, 50000, 6, N'l?ng')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (13, N'Dầu dứa', 1, 60000, 7, N'l?ng')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (14, N'Dấm', 1, 70000, 8, N'l?ng')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (15, N'Tương cà chua', 1, 80000, 8, N'l?ng')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (16, N'Bột ca cao', 0, 10000, 8, N'cân')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (17, N'Bột hạnh nhân', 0, 20000, 10, N'cân')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (18, N'Bột kem sữa', 0, 30000, 10, N'cân')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (19, N'Bột mỳ', 0, 40000, 10, N'cân')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (20, N'Bột trà xanh', 0, 50000, 4, N'cân')
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (21, N'2', NULL, 2, 2, NULL)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [LoaiTuoiKho], [GiaTien], [SoLuong], [TenDonVi]) VALUES (133, N'Thịt', NULL, 3333, 3, NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (1, N'Chợ đầu mối', N'Hà Nội', N'123')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (2, N'Siêu thị X.', N'Thăng Long', N'456')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (3, N'Siêu thị Y.', N'Đông Độ', N'789         ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (4, N'Siêu thị Z.', N'Thanh Hóa', N'888')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (5, N'Chợ A.', N'Nghệ An', N'777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (6, N'Chợ Đồng Xa', N'Hà Tinh', N'123')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (7, N'Siêu thị A.', N'Huong Khê', N'456')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (8, N'Siêu thị B.', N'Nam Ð?nh', N'789')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (9, N'Siêu thị C.', N'Tiên Lãng', N'999')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (10, N'Chợ X.', N'Hà N?i', N'777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (11, N'Chợ AA', N'TP HCM', N'123123123')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (12, N'Chợ BB', N'Sài Gòn', N'456456789')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (13, N'Chợ CC', N'Số 7 Thiền Quang', N'9876543')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (14, N'Nhà hàng ZZ', N'Số 8 Lê Duẩn', N'212345267')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (15, N'Nhà hàng XX', N'Số 9 Bùi Viện', N'3748674937')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (16, N'TVP Food', N'TP HCM', N'123123123')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (17, N'Công ty Cổ phần Tôn Phan', N'Sài Gòn', N'456456789')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (18, N'Thực phẩm Đại Thuận', N'Số 10 Thiền Quang', N'9876543')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (19, N'San Hà Food', N'Số 11 Lê Duẩn', N'212345267')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (20, N'SamSung', N'Thanh Hoa', N'0395260959')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (3, N'Nga Vân ok', CAST(N'1993-03-03' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (4, N'Nguyễn Văn B', CAST(N'1994-04-04' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (5, N'Nguyễn Văn D', CAST(N'1995-02-15' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (7, N'Phan Văn Nhật', CAST(N'1992-02-02' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (8, N'Đỗ Kim Phương', CAST(N'1993-03-03' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (9, N'Lê Ngọc Trâm', CAST(N'1994-04-04' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (10, N'Phạm Văn Thoại', CAST(N'1995-02-15' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (11, N'Nguyễn Huy Thành', CAST(N'1991-01-01' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (12, N'Hoàng Minh Đại', CAST(N'1992-02-02' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (13, N'Kim Minh', CAST(N'1993-03-03' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (14, N'Minh gầy', CAST(N'1994-04-04' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (15, N'Minh nhỡ', CAST(N'1995-02-15' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (17, N'Mai Quốc Khánh', CAST(N'1992-02-02' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (18, N'Lê Thị Diễm', CAST(N'1993-03-03' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (20, N'Mai Văn Trường', CAST(N'1995-02-15' AS Date), N'Hà Nội', N'123         ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (22, N'sds', CAST(N'2020-06-02' AS Date), N'sdsd', N'2           ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [SDT]) VALUES (78, N'Đàm Viết Tùng', CAST(N'2020-06-02' AS Date), N'Hà Nội', N'4343        ')
INSERT [dbo].[PhieuDatNL] ([MaPDNL], [NgayLap], [MaNCC], [MaNV]) VALUES (1, CAST(N'2020-06-01' AS Date), 1, 3)
INSERT [dbo].[PhieuDatNL] ([MaPDNL], [NgayLap], [MaNCC], [MaNV]) VALUES (2, CAST(N'2020-06-01' AS Date), 2, 4)
INSERT [dbo].[PhieuDatNL] ([MaPDNL], [NgayLap], [MaNCC], [MaNV]) VALUES (3, CAST(N'2020-06-01' AS Date), 3, 5)
INSERT [dbo].[PhieuDatNL] ([MaPDNL], [NgayLap], [MaNCC], [MaNV]) VALUES (6, CAST(N'2020-06-01' AS Date), 1, 3)
INSERT [dbo].[PhieuDatNL] ([MaPDNL], [NgayLap], [MaNCC], [MaNV]) VALUES (7, CAST(N'2020-06-01' AS Date), 2, 4)
INSERT [dbo].[PhieuDatNL] ([MaPDNL], [NgayLap], [MaNCC], [MaNV]) VALUES (8, CAST(N'2020-06-01' AS Date), 3, 5)
INSERT [dbo].[PhieuThongKe] ([MaPTK], [NgayLap], [MaNV]) VALUES (3, CAST(N'2020-06-01' AS Date), NULL)
ALTER TABLE [dbo].[BienBanThanhLy]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTietBBTL]  WITH CHECK ADD FOREIGN KEY([MaBB])
REFERENCES [dbo].[BienBanThanhLy] ([MaBB])
GO
ALTER TABLE [dbo].[ChiTietBBTL]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[NguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDonNhapNL] ([MaHDN])
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[NguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[ChiTietPDNL]  WITH CHECK ADD FOREIGN KEY([MaPDNL])
REFERENCES [dbo].[PhieuDatNL] ([MaPDNL])
GO
ALTER TABLE [dbo].[ChiTietPDNL]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[NguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[ChiTietPTK]  WITH CHECK ADD FOREIGN KEY([MaPTK])
REFERENCES [dbo].[PhieuThongKe] ([MaPTK])
GO
ALTER TABLE [dbo].[ChiTietPTK]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[NguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[HoaDonNhapNL]  WITH CHECK ADD FOREIGN KEY([MaPDNL])
REFERENCES [dbo].[PhieuDatNL] ([MaPDNL])
GO
ALTER TABLE [dbo].[HoaDonNhapNL]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuDatNL]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuDatNL]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuThongKe]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
/****** Object:  StoredProcedure [dbo].[laydsncc]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[laydsncc]
as
begin
	select * from NhaCungCap
end
GO
/****** Object:  StoredProcedure [dbo].[laydsnl]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[laydsnl]
as
begin
    select * from NguyenLieu
end
GO
/****** Object:  StoredProcedure [dbo].[laydsnv]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[laydsnv]
as
begin
	select * from NhanVien
end
GO
/****** Object:  StoredProcedure [dbo].[layhdnnl]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[layhdnnl]
as
begin
    select * from HoaDonNhapNL
end
GO
/****** Object:  StoredProcedure [dbo].[suahdn]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[suahdn](@mahdn int, @mapdnl int,@ngaylap date,@manv int)
as
begin
   update HoaDonNhapNL set MaPDNL=@mapdnl ,NgayLap=@ngaylap, MaNV = @manv where MaHDN=@mahdn
 end
GO
/****** Object:  StoredProcedure [dbo].[suancc]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[suancc](@mancc int , @tenncc nvarchar(50), @diachi nvarchar(50), @sdt char(12))
	as
	begin
	update NhaCungCap set TenNCC=@tenncc,DiaChi=@diachi,SDT=@sdt where MaNCC= @mancc
	end
GO
/****** Object:  StoredProcedure [dbo].[suanl]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[suanl](@manl int, @tennl nvarchar(30), @giatien int, @soluong float)
as
begin
   update NguyenLieu set TenNL=@tennl ,GiaTien=@giatien,SoLuong=@soluong where MaNL=@manl
 end
GO
/****** Object:  StoredProcedure [dbo].[suanv]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[suanv](@manv int , @hoten nvarchar(50),@ngaysinh Date, @diachi nvarchar(50), @sdt char(12))
as
begin
update NhanVien set HoTen = @hoten ,NgaySinh=@ngaysinh ,DiaChi=@diachi,SDT=@sdt where MaNV=@manv
end
GO
/****** Object:  StoredProcedure [dbo].[Them]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Them](@manv int , @hoten nvarchar(50),@ngaysinh Date, @diachi nvarchar(50), @sdt char(12))
as
begin 
insert into NhanVien(MaNV , HoTen, NgaySinh,DiaChi,SDT) values
(@manv  , @hoten ,@ngaysinh , @diachi, @sdt )
end
GO
/****** Object:  StoredProcedure [dbo].[themhdn]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[themhdn](@mahdn int,@mapdnl int,@ngaylap date,@manv int)
as
begin 
insert into HoaDonNhapNL(MaHDN, MaPDNL,NgayLap,MaNV) values
(@mahdn ,@mapdnl ,@ngaylap,@manv )
end
GO
/****** Object:  StoredProcedure [dbo].[ThemNCC]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemNCC](@mancc int , @tenncc nvarchar(50), @diachi nvarchar(50), @sdt char(12))
as
begin 
insert into NhaCungCap(MaNCC , TenNCC, DiaChi,SDT) values
(@mancc  , @tenncc , @diachi, @sdt )
end
GO
/****** Object:  StoredProcedure [dbo].[themnl]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[themnl](@manl int,@tennl nvarchar(30),@giatien int,@soluong float)
as
begin 
insert into NguyenLieu(MaNL, TenNL,GiaTien,SoLuong) values
(@manl ,@tennl ,@giatien,@soluong )
end
GO
/****** Object:  StoredProcedure [dbo].[thongke]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[thongke](@ngaya date, @ngayb date)
as 
begin
  select count(NguyenLieu.MaNL) ,NguyenLieu.MaNL, NguyenLieu.TenNL
  from NguyenLieu,ChiTietHDN,HoaDonNhapNL
  where NguyenLieu.MaNL=ChiTietHDN.MaNL and ChiTietHDN.MaHD=HoaDonNhapNL.MaHDN 
  and HoaDonNhapNL.NgayLap>@ngaya and HoaDonNhapNL.NgayLap<@ngayb
  group by NguyenLieu.MaNL,NguyenLieu.TenNL
end
GO
/****** Object:  StoredProcedure [dbo].[timhdn]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[timhdn](@mahdn int)
 as
 begin
 select * from HoaDonNhapNL where MaHDN = @mahdn
 end
GO
/****** Object:  StoredProcedure [dbo].[xoahdn]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[xoahdn](@mahdn int)
 as
 begin
 delete ChiTietHDN where MaHD=@mahdn
 delete HoaDonNhapNL where MaHDN=@mahdn
 end
GO
/****** Object:  StoredProcedure [dbo].[xoancc]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoancc](@mancc int)
as 
begin
     update PhieuDatNL set MaNCC = null where MaNCC = @mancc
      delete  PhieuDatNL where PhieuDatNL.MaNCC= @mancc
	 
	  delete PhieuDatNL where MaNCC= @mancc
	  delete  NhaCungCap where MaNCC= @mancc
end
GO
/****** Object:  StoredProcedure [dbo].[xoanl]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xoanl](@manl int)
 as
 begin
 delete ChiTietBBTL where MaNL=@manl
 delete ChiTietPTK where MaNL=@manl
 delete ChiTietHDN where MaNL=@manl
 delete ChiTietPDNL where MaNL=@manl
 delete NguyenLieu where MaNL=@manl
 end
GO
/****** Object:  StoredProcedure [dbo].[xoanv]    Script Date: 6/5/2020 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[xoanv](@manv int)
as 
begin
      delete  PhieuDatNL where PhieuDatNL.MaNV= @manv
	  delete  ChiTietHDN where MaHD in (select HoaDonNhapNL.MaHDN from HoaDonNhapNL
												join NhanVien on HoaDonNhapNL.MaNV = @manv)
      delete ChiTietBBTL where MaBB in (select BienBanThanhLy.MaBB from BienBanThanhLy
												join NhanVien on BienBanThanhLy.MaNV = @manv)
	  delete  ChiTietPTK where MaPTK in (select PhieuThongKe.MaPTK from PhieuThongKe
												join NhanVien on PhieuThongKe.MaNV = @manv)
	  delete  PhieuThongKe where MaNV= @manv
	  delete  BienBanThanhLy where MaNV= @manv
	  delete  HoaDonNhapNL where MaNV= @manv
	  delete PhieuDatNL where MaNV= @manv
	  delete  NhanVien where MaNV= @manv
end
GO
