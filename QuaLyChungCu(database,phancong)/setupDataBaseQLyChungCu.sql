create database[QuanLyCanHo]
go
USE [QuanLyCanHo]
GO
/****** Object:  Table [dbo].[CanHo]    Script Date: 11/25/2019 4:33:11 PM ******/
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
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 11/25/2019 4:33:11 PM ******/
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
	[ngayVao] [date] NOT NULL CONSTRAINT [DF_ThanNhan_ngayVao]  DEFAULT (getdate()),
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
/****** Object:  Table [dbo].[UserTable]    Script Date: 11/25/2019 4:33:11 PM ******/
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
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThanNhan_CanHo] FOREIGN KEY([soCMNDChuHo])
REFERENCES [dbo].[CanHo] ([soCMNDChuHo])
GO
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_ThanNhan_CanHo]
GO
