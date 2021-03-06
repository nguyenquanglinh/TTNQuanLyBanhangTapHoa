use master
go
drop database [QuanLyCanHo]
go
use master
go
create database [QuanLyCanHo]
go
USE [QuanLyCanHo]
GO
/****** Object:  Table [dbo].[CanHo]    Script Date: 6/4/2020 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CanHo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[soCMNDChuHo] [char](15) NOT NULL,
	[tenChuHo] [nvarchar](50) NOT NULL,
	[tenPhong] [nvarchar](50) NOT NULL,
	[tenTang] [nvarchar](50) NOT NULL,
	[gioiTinh] [nvarchar](4) NOT NULL,
	[queQuan] [nvarchar](50) NOT NULL,
	[ngayVao] [date] NOT NULL,
	[namSinh] [date] NULL,
 CONSTRAINT [PK_CanHo_1] PRIMARY KEY CLUSTERED 
(
	[soCMNDChuHo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 6/4/2020 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[soCMNDChuHo] [char](15) NOT NULL,
	[tenThanNhan] [nvarchar](50) NOT NULL,
	[quanHe] [nvarchar](50) NOT NULL,
	[namSinh] [nvarchar](50) NULL,
	[queQuan] [nvarchar](50) NULL,
	[soCMNDThanNhan] [char](15) NOT NULL,
	[ngayVao] [date] NOT NULL,
	[gioiTinh] [nvarchar](5) NULL,
 CONSTRAINT [PK_ThanNhan] PRIMARY KEY CLUSTERED 
(
	[soCMNDChuHo] ASC,
	[tenThanNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 6/4/2020 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [char](50) NOT NULL,
	[passWord] [char](50) NOT NULL,
	[properties] [nvarchar](50) NOT NULL CONSTRAINT [DF_UserTable_properties]  DEFAULT (N'ReadOnly'),
 CONSTRAINT [PK_user_1] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CanHo] ON 

INSERT [dbo].[CanHo] ([ID], [soCMNDChuHo], [tenChuHo], [tenPhong], [tenTang], [gioiTinh], [queQuan], [ngayVao], [namSinh]) VALUES (2, N'01923          ', N'NGUYEN VAN A', N'P203', N'T20', N'nam', N'NAM DINH', CAST(N'2019-01-01' AS Date), CAST(N'1999-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[CanHo] OFF
SET IDENTITY_INSERT [dbo].[UserTable] ON 

INSERT [dbo].[UserTable] ([id], [userName], [passWord], [properties]) VALUES (1, N'admin                                             ', N'1234                                              ', N'admin')
SET IDENTITY_INSERT [dbo].[UserTable] OFF
ALTER TABLE [dbo].[ThanNhan] ADD  CONSTRAINT [DF_ThanNhan_ngayVao]  DEFAULT (getdate()) FOR [ngayVao]
GO
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThanNhan_CanHo] FOREIGN KEY([soCMNDChuHo])
REFERENCES [dbo].[CanHo] ([soCMNDChuHo])
GO
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_ThanNhan_CanHo]
GO
