USE [master]
GO
/****** Object:  Database [QUANLYBANVALI]    Script Date: 3/20/2023 5:02:34 PM ******/
CREATE DATABASE [QUANLYBANVALI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYBANVALI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERIT\MSSQL\DATA\QUANLYBANVALI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYBANVALI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERIT\MSSQL\DATA\QUANLYBANVALI_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUANLYBANVALI] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYBANVALI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYBANVALI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYBANVALI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYBANVALI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUANLYBANVALI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYBANVALI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET RECOVERY FULL 
GO
ALTER DATABASE [QUANLYBANVALI] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYBANVALI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYBANVALI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYBANVALI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYBANVALI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYBANVALI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYBANVALI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUANLYBANVALI', N'ON'
GO
ALTER DATABASE [QUANLYBANVALI] SET QUERY_STORE = OFF
GO
USE [QUANLYBANVALI]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[taikhoan] [varchar](50) NOT NULL,
	[matkhau] [varchar](50) NOT NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ANHSLIDE]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANHSLIDE](
	[maslider] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](50) NULL,
	[hinhanh] [varchar](50) NULL,
 CONSTRAINT [PK_ANHSLIDE] PRIMARY KEY CLUSTERED 
(
	[maslider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ANHVALI]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANHVALI](
	[mavali] [int] NOT NULL,
	[mamausac] [int] NOT NULL,
	[hinhanh1] [varchar](50) NULL,
	[hinhanh2] [varchar](50) NULL,
	[hinhanh3] [varchar](50) NULL,
	[hinhanh4] [varchar](50) NULL,
	[hinhanh5] [varchar](50) NULL,
 CONSTRAINT [PK_ANHVALI] PRIMARY KEY CLUSTERED 
(
	[mavali] ASC,
	[mamausac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[mavali] [int] NOT NULL,
	[madonhang] [int] NOT NULL,
	[soluong] [int] NULL,
	[gia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONHANG] PRIMARY KEY CLUSTERED 
(
	[mavali] ASC,
	[madonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHGIASANPHAM]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIASANPHAM](
	[makh] [int] NOT NULL,
	[mavali] [int] NOT NULL,
	[sao] [int] NULL,
	[hinhanh1] [varchar](50) NULL,
	[hinhanh2] [varchar](50) NULL,
	[hinhanh3] [varchar](50) NULL,
	[noidung] [nvarchar](200) NULL,
 CONSTRAINT [PK_DANHGIASANPHAM] PRIMARY KEY CLUSTERED 
(
	[makh] ASC,
	[mavali] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUCVALI]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCVALI](
	[madanhmuc] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuc] [nvarchar](50) NOT NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_DANHMUCVALI] PRIMARY KEY CLUSTERED 
(
	[madanhmuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[madonhang] [int] IDENTITY(1,1) NOT NULL,
	[makh] [int] NOT NULL,
	[mathanhtoan] [int] NULL,
	[ngaydat] [datetime] NULL,
	[ngaygiao] [datetime] NOT NULL,
	[tinhtrang] [bit] NULL,
	[ghichu] [nvarchar](200) NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[madonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[makh] [int] IDENTITY(1,1) NOT NULL,
	[tenkhachhang] [nvarchar](50) NULL,
	[sodienthoai] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[taikhoankh] [varchar](50) NULL,
	[matkhau] [varchar](50) NULL,
	[ngaysinh] [datetime] NULL,
	[anhdaidien] [varchar](50) NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LIENHE]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIENHE](
	[malienhe] [int] IDENTITY(1,1) NOT NULL,
	[tenkhachhang] [nvarchar](50) NOT NULL,
	[tieude] [nvarchar](50) NULL,
	[sdt] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[noidung] [nvarchar](300) NULL,
 CONSTRAINT [PK_LIENHE] PRIMARY KEY CLUSTERED 
(
	[malienhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAUSAC]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAUSAC](
	[mamausac] [int] IDENTITY(1,1) NOT NULL,
	[tenmausac] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MAUSAC] PRIMARY KEY CLUSTERED 
(
	[mamausac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUKHUYENMAI]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUKHUYENMAI](
	[makhuyenmai] [int] IDENTITY(1,1) NOT NULL,
	[tenkhuyenmai] [nvarchar](50) NOT NULL,
	[phantram] [varchar](50) NULL,
	[tienkhuyenmai] [decimal](18, 0) NULL,
	[ngaybatdau] [datetime] NOT NULL,
	[ngayketthuc] [datetime] NULL,
 CONSTRAINT [PK_PHIEUKHUYENMAI] PRIMARY KEY CLUSTERED 
(
	[makhuyenmai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZEVALI]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZEVALI](
	[masize] [int] IDENTITY(1,1) NOT NULL,
	[tensize] [nvarchar](50) NOT NULL,
	[mota] [nvarchar](50) NULL,
 CONSTRAINT [PK_SIZEVALI] PRIMARY KEY CLUSTERED 
(
	[masize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[mathuonghieu] [int] IDENTITY(1,1) NOT NULL,
	[tenthuonghieu] [nvarchar](50) NOT NULL,
	[mota] [nchar](10) NULL,
 CONSTRAINT [PK_THUONGHIEU] PRIMARY KEY CLUSTERED 
(
	[mathuonghieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VALI]    Script Date: 3/20/2023 5:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VALI](
	[mavali] [int] IDENTITY(1,1) NOT NULL,
	[tenvali] [nvarchar](100) NOT NULL,
	[mathuonghieu] [int] NOT NULL,
	[masize] [int] NOT NULL,
	[madanhmuc] [int] NOT NULL,
	[anhvali] [varchar](50) NULL,
	[mota] [nvarchar](500) NULL,
	[tukhoa] [varchar](50) NULL,
	[soluongton] [int] NULL,
	[gia] [decimal](18, 0) NULL,
	[giakhuyenmai] [decimal](18, 0) NULL,
	[ngaytao] [datetime] NULL,
	[trangthai] [bit] NULL,
	[chatlieu] [nvarchar](50) NULL,
	[kichthuoc] [nvarchar](50) NULL,
	[thetich] [nvarchar](50) NULL,
	[banhxe] [nvarchar](50) NULL,
	[khoa] [nvarchar](50) NULL,
	[tienich] [nvarchar](50) NULL,
	[linkvideo] [nvarchar](50) NULL,
 CONSTRAINT [PK_VALI] PRIMARY KEY CLUSTERED 
(
	[mavali] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ADMIN] ([taikhoan], [matkhau], [trangthai]) VALUES (N'hoanhtuan', N'123456', 1)
INSERT [dbo].[ADMIN] ([taikhoan], [matkhau], [trangthai]) VALUES (N'nguyenhaiduong', N'123456', 1)
INSERT [dbo].[ADMIN] ([taikhoan], [matkhau], [trangthai]) VALUES (N'nguyenphuloc', N'123456', 1)
INSERT [dbo].[ADMIN] ([taikhoan], [matkhau], [trangthai]) VALUES (N'voanhquan', N'123456', 1)
GO
SET IDENTITY_INSERT [dbo].[ANHSLIDE] ON 

INSERT [dbo].[ANHSLIDE] ([maslider], [link], [hinhanh]) VALUES (1, NULL, N'slider1.jpg')
INSERT [dbo].[ANHSLIDE] ([maslider], [link], [hinhanh]) VALUES (2, NULL, N'slider2.jpg')
INSERT [dbo].[ANHSLIDE] ([maslider], [link], [hinhanh]) VALUES (3, NULL, N'slider3.jpg')
INSERT [dbo].[ANHSLIDE] ([maslider], [link], [hinhanh]) VALUES (4, NULL, N'slider4.jpg')
SET IDENTITY_INSERT [dbo].[ANHSLIDE] OFF
GO
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (1, 1, N'1_vali1_den1.jpg', N'1_vali1_den2.jpg', N'1_vali1_den3.jpg', N'1_vali1_den4.jpg', N'1_vali5_den1.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (1, 5, N'1_vali1_hong1.jpg', N'1_vali1_hong2.jpg', N'1_vali1_hong3.jpg', N'1_vali1_hong4.jpg', N'1_vali1_hong5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (1, 8, N'1_vali1_xam1.jpg', N'1_vali1_xam2.jpg', N'1_vali1_xam3.jpg', N'1_vali1_xam4.jpg', N'1_vali1_xam1.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (10, 1, N'1_vali1_den1.jpg', N'1_vali1_den2.jpg', N'1_vali1_den3.jpg', N'1_vali1_den4.jpg', N'1_vali5_den1.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (10, 5, N'1_vali1_hong1.jpg', N'1_vali1_hong2.jpg', N'1_vali1_hong3.jpg', N'1_vali1_hong4.jpg', N'1_vali1_hong5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (10, 8, N'1_vali1_xam1.jpg', N'1_vali1_xam2.jpg', N'1_vali1_xam3.jpg', N'1_vali1_xam4.jpg', N'1_vali1_xam1.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (11, 1, N'1_vali1_den1.jpg', N'1_vali1_den2.jpg', N'1_vali1_den3.jpg', N'1_vali1_den4.jpg', N'1_vali5_den1.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (11, 5, N'1_vali1_hong1.jpg', N'1_vali1_hong2.jpg', N'1_vali1_hong3.jpg', N'1_vali1_hong4.jpg', N'1_vali1_hong5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (11, 8, N'1_vali1_xam1.jpg', N'1_vali1_xam2.jpg', N'1_vali1_xam3.jpg', N'1_vali1_xam4.jpg', N'1_vali1_xam1.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (12, 3, N'1_vali2_hong1.jpg', N'1_vali2_hong2.jpg', N'1_vali2_hong3.jpg', N'1_vali2_hong4.jpg', N'1_vali2_hong5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (12, 5, N'1_vali2_vang1.jpg', N'1_vali2_vang2.jpg', N'1_vali2_vang3.jpg', N'1_vali2_vang4.jpg', N'1_vali2_vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (13, 3, N'1_vali2_hong1.jpg', N'1_vali2_hong2.jpg', N'1_vali2_hong3.jpg', N'1_vali2_hong4.jpg', N'1_vali2_hong5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (13, 5, N'1_vali2_vang1.jpg', N'1_vali2_vang2.jpg', N'1_vali2_vang3.jpg', N'1_vali2_vang4.jpg', N'1_vali2_vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (14, 3, N'1_vali2_hong1.jpg', N'1_vali2_hong2.jpg', N'1_vali2_hong3.jpg', N'1_vali2_hong4.jpg', N'1_vali2_hong5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (14, 5, N'1_vali2_vang1.jpg', N'1_vali2_vang2.jpg', N'1_vali2_vang3.jpg', N'1_vali2_vang4.jpg', N'1_vali2_vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (15, 5, N'1_vali3_hong1.jpg', N'1_vali3_hong2.jpg', N'1_vali3_hong3.jpg', N'1_vali3_hong4.jpg', N'1_vali3_hong5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (15, 9, N'1_vali3_xanhbacha1.jpg', N'1_vali3_xanhbacha2.jpg', N'1_vali3_xanhbacha3.jpg', N'1_vali3_xanhbacha4.jpg', N'1_vali3_xanhbacha5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (16, 5, N'1_vali3_hong1.jpg', N'1_vali3_hong2.jpg', N'1_vali3_hong3.jpg', N'1_vali3_hong4.jpg', N'1_vali3_hong5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (16, 9, N'1_vali3_xanhbacha1.jpg', N'1_vali3_xanhbacha2.jpg', N'1_vali3_xanhbacha3.jpg', N'1_vali3_xanhbacha4.jpg', N'1_vali3_xanhbacha5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (17, 4, N'1_vali4_do1.jpg', N'1_vali4_do2.jpg', N'1_vali4_do3.jpg', N'1_vali4_do4.jpg', N'1_vali4_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (17, 8, N'1_vali4_xam1.jpg', N'1_vali4_xam2.jpg', N'1_vali4_xam3.jpg', N'1_vali4_xam4.jpg', N'1_vali4_xam5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (17, 10, N'1_vali4_trang1.jpg', N'1_vali4_trang2.jpg', N'1_vali4_trang3.jpg', N'1_vali4_trang4.jpg', N'1_vali4_trang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (18, 4, N'1_vali4_do1.jpg', N'1_vali4_do2.jpg', N'1_vali4_do3.jpg', N'1_vali4_do4.jpg', N'1_vali4_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (18, 8, N'1_vali4_xam1.jpg', N'1_vali4_xam2.jpg', N'1_vali4_xam3.jpg', N'1_vali4_xam4.jpg', N'1_vali4_xam5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (18, 10, N'1_vali4_trang1.jpg', N'1_vali4_trang2.jpg', N'1_vali4_trang3.jpg', N'1_vali4_trang4.jpg', N'1_vali4_trang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (23, 4, N'2_vali2_do1.jpg', N'2_vali2_do2.jpg', N'2_vali2_do3.jpg', N'2_vali2_do4.jpg', N'2_vali2_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (23, 11, N'2_vali2_bac1.jpg', N'2_vali2_bac2.jpg', N'2_vali2_bac3.jpg', N'2_vali2_bac4.jpg', N'2_vali2_bac5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (51, 4, N'2_vali3_do1.jpg', N'2_vali3_do2.jpg', N'2_vali3_do3.jpg', N'2_vali3_do4.jpg', N'2_vali3_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (52, 13, N'2_vali3_navy1.jpg', N'2_vali3_navy2.jpg', N'2_vali3_navy3.jpg', N'2_vali3_navy4.jpg', N'2_vali3_navy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (54, 3, N'2_vali4_vang1.jpg', N'2_vali4_vang2.jpg', N'2_vali4_vang3.jpg', N'2_vali4_vang4.jpg', N'2_vali4_vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (54, 4, N'2_vali4_do1.jpg', N'2_vali4_do2.jpg', N'2_vali4_do3.jpg', N'2_vali4_do4.jpg', N'2_vali4_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (55, 2, N'3_vali1_xanh1.jpg', N'3_vali1_xanh2.jpg', N'3_vali1_xanh3.jpg', N'3_vali1_xanh4.jpg', N'3_vali1_xanh5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (55, 8, N'3_vali1_xam1.jpg', N'3_vali1_xam2.jpg', N'3_vali1_xam3.jpg', N'3_vali1_xam4.jpg', N'3_vali1_xam5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (56, 2, N'3_vali1_xanh1.jpg', N'3_vali1_xanh2.jpg', N'3_vali1_xanh3.jpg', N'3_vali1_xanh4.jpg', N'3_vali1_xanh5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (56, 8, N'3_vali1_xam1.jpg', N'3_vali1_xam2.jpg', N'3_vali1_xam3.jpg', N'3_vali1_xam4.jpg', N'3_vali1_xam5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (57, 2, N'3_vali1_xanh1.jpg', N'3_vali1_xanh2.jpg', N'3_vali1_xanh3.jpg', N'3_vali1_xanh4.jpg', N'3_vali1_xanh5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (57, 8, N'3_vali1_xam1.jpg', N'3_vali1_xam2.jpg', N'3_vali1_xam3.jpg', N'3_vali1_xam4.jpg', N'3_vali1_xam5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (58, 2, N'3_vali2_xanh1.jpg', N'3_vali2_xanh2.jpg', N'3_vali2_xanh3.jpg', N'3_vali2_xanh4.jpg', N'3_vali2_xanh5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (58, 14, N'3_vali2_burgundy1.jpg', N'3_vali2_burgundy2.jpg', N'3_vali2_burgundy3.jpg', N'3_vali2_burgundy4.jpg', N'3_vali2_burgundy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (59, 2, N'3_vali2_xanh1.jpg', N'3_vali2_xanh2.jpg', N'3_vali2_xanh3.jpg', N'3_vali2_xanh4.jpg', N'3_vali2_xanh5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (59, 14, N'3_vali2_burgundy1.jpg', N'3_vali2_burgundy2.jpg', N'3_vali2_burgundy3.jpg', N'3_vali2_burgundy4.jpg', N'3_vali2_burgundy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (60, 2, N'3_vali2_xanh1.jpg', N'3_vali2_xanh2.jpg', N'3_vali2_xanh3.jpg', N'3_vali2_xanh4.jpg', N'3_vali2_xanh5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (60, 14, N'3_vali2_burgundy1.jpg', N'3_vali2_burgundy2.jpg', N'3_vali2_burgundy3.jpg', N'3_vali2_burgundy4.jpg', N'3_vali2_burgundy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (61, 4, N'3_vali3_do1.jpg', N'3_vali3_do2.jpg', N'3_vali3_do3.jpg', N'3_vali3_do4.jpg', N'3_vali3_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (61, 13, N'3_vali3_navy1.jpg', N'3_vali3_navy2.jpg', N'3_vali3_navy3.jpg', N'3_vali3_navy4.jpg', N'3_vali3_navy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (62, 4, N'3_vali3_do1.jpg', N'3_vali3_do2.jpg', N'3_vali3_do3.jpg', N'3_vali3_do4.jpg', N'3_vali3_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (62, 13, N'3_vali3_navy1.jpg', N'3_vali3_navy2.jpg', N'3_vali3_navy3.jpg', N'3_vali3_navy4.jpg', N'3_vali3_navy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (63, 4, N'3_vali3_do1.jpg', N'3_vali3_do2.jpg', N'3_vali3_do3.jpg', N'3_vali3_do4.jpg', N'3_vali3_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (63, 13, N'3_vali3_navy1.jpg', N'3_vali3_navy2.jpg', N'3_vali3_navy3.jpg', N'3_vali3_navy4.jpg', N'3_vali3_navy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (64, 1, N'4_vali1_den1.jpg', N'4_vali1_den2.jpg', N'4_vali1_den3.jpg', N'4_vali1_den4.jpg', N'4_vali1_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (64, 17, N'4_vali1_graphite1.jpg', N'4_vali1_graphite2.jpg', N'4_vali1_graphite3.jpg', N'4_vali1_graphite4.jpg', N'4_vali1_graphite5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (65, 1, N'4_vali1_den1.jpg', N'4_vali1_den2.jpg', N'4_vali1_den3.jpg', N'4_vali1_den4.jpg', N'4_vali1_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (65, 17, N'4_vali1_graphite1.jpg', N'4_vali1_graphite2.jpg', N'4_vali1_graphite3.jpg', N'4_vali1_graphite4.jpg', N'4_vali1_graphite5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (66, 13, N'4_vali2_navy1.jpg', N'4_vali2_navy2.jpg', N'4_vali2_navy3.jpg', N'4_vali2_navy4.jpg', N'4_vali2_navy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (66, 16, N'4_vali2_nau1.jpg', N'4_vali2_nau2.jpg', N'4_vali2_nau3.jpg', N'4_vali2_nau4.jpg', N'4_vali2_nau5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (67, 13, N'4_vali2_navy1.jpg', N'4_vali2_navy2.jpg', N'4_vali2_navy3.jpg', N'4_vali2_navy4.jpg', N'4_vali2_navy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (67, 16, N'4_vali2_nau1.jpg', N'4_vali2_nau2.jpg', N'4_vali2_nau3.jpg', N'4_vali2_nau4.jpg', N'4_vali2_nau5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (68, 13, N'4_vali2_navy1.jpg', N'4_vali2_navy2.jpg', N'4_vali2_navy3.jpg', N'4_vali2_navy4.jpg', N'4_vali2_navy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (68, 16, N'4_vali2_nau1.jpg', N'4_vali2_nau2.jpg', N'4_vali2_nau3.jpg', N'4_vali2_nau4.jpg', N'4_vali2_nau5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (69, 1, N'4_vali3_den1.jpg', N'4_vali3_den2.jpg', N'4_vali3_den3.jpg', N'4_vali3_den4.jpg', N'4_vali3_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (69, 4, N'4_vali3_do1.jpg', N'4_vali3_do2.jpg', N'4_vali3_do3.jpg', N'4_vali3_do4.jpg', N'4_vali3_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (70, 1, N'4_vali3_den1.jpg', N'4_vali3_den2.jpg', N'4_vali3_den3.jpg', N'4_vali3_den4.jpg', N'4_vali3_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (70, 4, N'4_vali3_do1.jpg', N'4_vali3_do2.jpg', N'4_vali3_do3.jpg', N'4_vali3_do4.jpg', N'4_vali3_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (71, 1, N'4_vali3_den1.jpg', N'4_vali3_den2.jpg', N'4_vali3_den3.jpg', N'4_vali3_den4.jpg', N'4_vali3_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (71, 4, N'4_vali3_do1.jpg', N'4_vali3_do2.jpg', N'4_vali3_do3.jpg', N'4_vali3_do4.jpg', N'4_vali3_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (72, 4, N'5_vali1_do1.jpg', N'5_vali1_do2.jpg', N'5_vali1_do3.jpg', N'5_vali1_do4.jpg', N'5_vali1_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (72, 13, N'5_vali1_navy1.jpg', N'5_vali1_navy2.jpg', N'5_vali1_navy3.jpg', N'5_vali1_navy4.jpg', N'5_vali5_navy1.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (73, 4, N'5_vali1_do1.jpg', N'5_vali1_do2.jpg', N'5_vali1_do3.jpg', N'5_vali1_do4.jpg', N'5_vali1_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (73, 13, N'5_vali1_navy1.jpg', N'5_vali1_navy2.jpg', N'5_vali1_navy3.jpg', N'5_vali1_navy4.jpg', N'5_vali5_navy1.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (74, 4, N'5_vali1_do1.jpg', N'5_vali1_do2.jpg', N'5_vali1_do3.jpg', N'5_vali1_do4.jpg', N'5_vali1_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (74, 13, N'5_vali1_navy1.jpg', N'5_vali1_navy2.jpg', N'5_vali1_navy3.jpg', N'5_vali1_navy4.jpg', N'5_vali5_navy1.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (76, 4, N'5_vali2_do1.jpg', N'5_vali2_do2.jpg', N'5_vali2_do3.jpg', N'5_vali2_do4.jpg', N'5_vali2_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (77, 4, N'5_vali2_do1.jpg', N'5_vali2_do2.jpg', N'5_vali2_do3.jpg', N'5_vali2_do4.jpg', N'5_vali2_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (78, 1, N'5_vali3_den1.jpg', N'5_vali3_den2.jpg', N'5_vali3_den3.jpg', N'5_vali3_den4.jpg', N'5_vali3_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (79, 11, N'6_vali1_bac1.jpg', N'6_vali1_bac2.jpg', N'6_vali1_bac3.jpg', N'6_vali1_bac4.jpg', N'6_vali1_bac5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (79, 12, N'6_vali1_metal1.jpg', N'6_vali1_metal2.jpg', N'6_vali1_metal3.jpg', N'6_vali1_metal4.jpg', N'6_vali1_metal5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (80, 11, N'6_vali1_bac1.jpg', N'6_vali1_bac2.jpg', N'6_vali1_bac3.jpg', N'6_vali1_bac4.jpg', N'6_vali1_bac5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (80, 12, N'6_vali1_metal1.jpg', N'6_vali1_metal2.jpg', N'6_vali1_metal3.jpg', N'6_vali1_metal4.jpg', N'6_vali1_metal5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (81, 11, N'6_vali2_bac1.jpg', N'6_vali2_bac2.jpg', N'6_vali2_bac3.jpg', N'6_vali2_bac4.jpg', N'6_vali2_bac5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (81, 12, N'6_vali2_metal1.jpg', N'6_vali2_metal2.jpg', N'6_vali2_metal3.jpg', N'6_vali2_metal4.jpg', N'6_vali2_metal5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (82, 11, N'6_vali2_bac1.jpg', N'6_vali2_bac2.jpg', N'6_vali2_bac3.jpg', N'6_vali2_bac4.jpg', N'6_vali2_bac5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (82, 12, N'6_vali2_metal1.jpg', N'6_vali2_metal2.jpg', N'6_vali2_metal3.jpg', N'6_vali2_metal4.jpg', N'6_vali2_metal5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (83, 1, N'7_vali1_den1.jpg', N'7_vali1_den2.jpg', N'7_vali1_den3.jpg', N'7_vali1_den4.jpg', N'7_vali1_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (86, 4, N'8_vali1_do1.jpg', N'8_vali1_do2.jpg', N'8_vali1_do3.jpg', N'8_vali1_do4.jpg', N'8_vali1_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (87, 13, N'8_vali2_navy1.jpg', N'8_vali2_navy2.jpg', N'8_vali2_navy3.jpg', N'8_vali2_navy4.jpg', N'8_vali2_navy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (87, 14, N'8_vali2_burgundy1.jpg', N'8_vali2_burgundy2.jpg', N'8_vali2_burgundy3.jpg', N'8_vali2_burgundy4.jpg', N'8_vali2_burgundy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (88, 13, N'8_vali2_navy1.jpg', N'8_vali2_navy2.jpg', N'8_vali2_navy3.jpg', N'8_vali2_navy4.jpg', N'8_vali2_navy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (88, 14, N'8_vali2_burgundy1.jpg', N'8_vali2_burgundy2.jpg', N'8_vali2_burgundy3.jpg', N'8_vali2_burgundy4.jpg', N'8_vali2_burgundy5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (89, 1, N'8_vali3_den1.jpg', N'8_vali3_den2.jpg', N'8_vali3_den3.jpg', N'8_vali3_den4.jpg', N'8_vali3_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (89, 7, N'8_vali3_xanhla1.jpg', N'8_vali3_xanhla2.jpg', N'8_vali3_xanhla3.jpg', N'8_vali3_xanhla4.jpg', N'8_vali3_xanhla5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (90, 1, N'8_vali3_den1.jpg', N'8_vali3_den2.jpg', N'8_vali3_den3.jpg', N'8_vali3_den4.jpg', N'8_vali3_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (90, 7, N'8_vali3_xanhla1.jpg', N'8_vali3_xanhla2.jpg', N'8_vali3_xanhla3.jpg', N'8_vali3_xanhla4.jpg', N'8_vali3_xanhla5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (91, 1, N'8_vali3_den1.jpg', N'8_vali3_den2.jpg', N'8_vali3_den3.jpg', N'8_vali3_den4.jpg', N'8_vali3_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (91, 7, N'8_vali3_xanhla1.jpg', N'8_vali3_xanhla2.jpg', N'8_vali3_xanhla3.jpg', N'8_vali3_xanhla4.jpg', N'8_vali3_xanhla5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (92, 1, N'9_vali1_den1.jpg', N'9_vali1_den2.jpg', N'9_vali1_den3.jpg', N'9_vali1_den4.jpg', N'9_vali1_den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (92, 4, N'9_vali1_do1.jpg', N'9_vali1_do2.jpg', N'9_vali1_do3.jpg', N'9_vali1_do4.jpg', N'9_vali1_do5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (93, 3, N'9_vali2_vang1.jpg', N'9_vali2_vang2.jpg', N'9_vali2_vang3.jpg', N'9_vali2_vang4.jpg', N'9_vali2_vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (93, 7, N'9_vali2_xanhla1.jpg', N'9_vali2_xanhla2.jpg', N'9_vali2_xanhla3.jpg', N'9_vali2_xanhla4.jpg', N'9_vali2_xanhla5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (94, 3, N'9_vali2_vang1.jpg', N'9_vali2_vang2.jpg', N'9_vali2_vang3.jpg', N'9_vali2_vang4.jpg', N'9_vali2_vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (94, 7, N'9_vali2_xanhla1.jpg', N'9_vali2_xanhla2.jpg', N'9_vali2_xanhla3.jpg', N'9_vali2_xanhla4.jpg', N'9_vali2_xanhla5.jpg')
GO
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (95, 3, N'9_vali2_vang1.jpg', N'9_vali2_vang2.jpg', N'9_vali2_vang3.jpg', N'9_vali2_vang4.jpg', N'9_vali2_vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (95, 7, N'9_vali2_xanhla1.jpg', N'9_vali2_xanhla2.jpg', N'9_vali2_xanhla3.jpg', N'9_vali2_xanhla4.jpg', N'9_vali2_xanhla5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (96, 1, N'2_vali1_Den1.jpg', N'2_vali1_Den2.jpg', N'2_vali1_Den3.jpg', N'2_vali1_Den4.jpg', N'2_vali1_Den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (96, 3, N'2_vali1_Vang1.jpg', N'2_vali1_Vang2.jpg', N'2_vali1_Vang3.jpg', N'2_vali1_Vang4.jpg', N'2_vali1_Vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (96, 7, N'2_vali1_XanhLa1.jpg', N'2_vali1_XanhLa2.jpg', N'2_vali1_XanhLa3.jpg', N'2_vali1_XanhLa4.jpg', N'2_vali1_XanhLa6.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (97, 1, N'2_vali1_Den1.jpg', N'2_vali1_Den2.jpg', N'2_vali1_Den3.jpg', N'2_vali1_Den4.jpg', N'2_vali1_Den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (97, 3, N'2_vali1_Vang1.jpg', N'2_vali1_Vang2.jpg', N'2_vali1_Vang3.jpg', N'2_vali1_Vang4.jpg', N'2_vali1_Vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (97, 7, N'2_vali1_XanhLa1.jpg', N'2_vali1_XanhLa2.jpg', N'2_vali1_XanhLa3.jpg', N'2_vali1_XanhLa4.jpg', N'2_vali1_XanhLa6.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (98, 1, N'2_vali1_Den1.jpg', N'2_vali1_Den2.jpg', N'2_vali1_Den3.jpg', N'2_vali1_Den4.jpg', N'2_vali1_Den5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (98, 3, N'2_vali1_Vang1.jpg', N'2_vali1_Vang2.jpg', N'2_vali1_Vang3.jpg', N'2_vali1_Vang4.jpg', N'2_vali1_Vang5.jpg')
INSERT [dbo].[ANHVALI] ([mavali], [mamausac], [hinhanh1], [hinhanh2], [hinhanh3], [hinhanh4], [hinhanh5]) VALUES (98, 7, N'2_vali1_XanhLa1.jpg', N'2_vali1_XanhLa2.jpg', N'2_vali1_XanhLa3.jpg', N'2_vali1_XanhLa4.jpg', N'2_vali1_XanhLa6.jpg')
GO
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (1, 4, 1, CAST(3720000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (1, 11, 1, CAST(3720000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (1, 18, 1, CAST(3720000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (10, 1, 2, CAST(4120000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (12, 10, 2, CAST(2790000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (13, 2, 4, CAST(3050000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (13, 9, 1, CAST(3050000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (14, 4, 2, CAST(3320000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (14, 5, 5, CAST(3320000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (14, 6, 1, CAST(3320000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (14, 12, 1, CAST(3320000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (14, 13, 1, CAST(3320000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (15, 4, 1, CAST(6999000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (15, 6, 2, CAST(6999000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (15, 8, 1, CAST(6999000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (16, 1, 3, CAST(7399000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (16, 7, 1, CAST(7399000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (16, 8, 2, CAST(7399000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (16, 9, 1, CAST(7399000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (17, 3, 2, CAST(8909000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (17, 7, 2, CAST(8909000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (17, 9, 1, CAST(8909000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (17, 10, 1, CAST(8909000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (18, 3, 3, CAST(9090000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONHANG] ([mavali], [madonhang], [soluong], [gia]) VALUES (18, 7, 5, CAST(9090000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[DANHMUCVALI] ON 

INSERT [dbo].[DANHMUCVALI] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (1, N'Vali khóa khung', 1)
INSERT [dbo].[DANHMUCVALI] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (2, N'Vali kéo dựa dẻo', 1)
INSERT [dbo].[DANHMUCVALI] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (3, N'Vali kéo nhựa cứng', 1)
INSERT [dbo].[DANHMUCVALI] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (4, N'Vali kéo vải', 1)
INSERT [dbo].[DANHMUCVALI] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (5, N'Vali công nghệ', 1)
INSERT [dbo].[DANHMUCVALI] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (6, N'Vali nhôm nguyên khối', 1)
INSERT [dbo].[DANHMUCVALI] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (7, N'Vali kéo trẻ em ', 1)
INSERT [dbo].[DANHMUCVALI] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (8, N'Vali kéo chống rạch', 1)
INSERT [dbo].[DANHMUCVALI] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (9, N'Vali theo bộ', 1)
SET IDENTITY_INSERT [dbo].[DANHMUCVALI] OFF
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (1, 1, NULL, CAST(N'2022-04-04T12:38:59.443' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (2, 1, NULL, CAST(N'2022-04-04T12:47:40.897' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (3, 1, NULL, CAST(N'2022-04-04T14:19:25.563' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (4, 2, NULL, CAST(N'2022-04-04T15:04:04.400' AS DateTime), CAST(N'2022-04-08T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (5, 2, NULL, CAST(N'2022-04-04T15:05:56.490' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (6, 8, NULL, CAST(N'2022-04-04T15:43:57.490' AS DateTime), CAST(N'2022-04-30T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (7, 8, NULL, CAST(N'2022-04-04T15:55:50.900' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (8, 8, NULL, CAST(N'2022-04-05T14:56:04.457' AS DateTime), CAST(N'2022-04-08T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (9, 8, NULL, CAST(N'2022-04-05T15:03:01.763' AS DateTime), CAST(N'2022-03-29T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (10, 8, NULL, CAST(N'2022-04-05T21:43:42.043' AS DateTime), CAST(N'2022-04-16T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (11, 8, NULL, CAST(N'2022-04-06T08:14:47.017' AS DateTime), CAST(N'2022-04-16T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (12, 8, NULL, CAST(N'2022-04-06T08:18:36.183' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (13, 8, NULL, CAST(N'2022-04-06T08:45:53.987' AS DateTime), CAST(N'2022-04-12T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (14, 8, NULL, CAST(N'2022-04-06T08:45:56.290' AS DateTime), CAST(N'2022-04-12T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (15, 8, NULL, CAST(N'2022-04-06T08:45:59.197' AS DateTime), CAST(N'2022-04-12T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (16, 8, NULL, CAST(N'2022-04-06T08:46:01.373' AS DateTime), CAST(N'2022-04-12T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (17, 8, NULL, CAST(N'2022-04-06T08:46:03.570' AS DateTime), CAST(N'2022-04-12T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (18, 8, NULL, CAST(N'2022-04-06T08:48:50.983' AS DateTime), CAST(N'2022-04-16T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (19, 8, NULL, CAST(N'2022-04-06T10:23:08.987' AS DateTime), CAST(N'2022-04-07T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (20, 1, NULL, CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2022-12-10T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (21, 1, NULL, CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2022-12-11T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (22, 1, NULL, CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2022-04-11T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (23, 1, NULL, CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2022-04-11T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (24, 1, NULL, CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2022-04-11T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (25, 1, NULL, CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2022-04-11T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[DONDATHANG] ([madonhang], [makh], [mathanhtoan], [ngaydat], [ngaygiao], [tinhtrang], [ghichu]) VALUES (26, 1, NULL, CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2022-04-11T00:00:00.000' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (1, N'Lê Hữu Đăng ', N'0306360261', N'01642027120q@gmail.com', N'Bình Thạnh, Tp HCM', N'lehuudang', N'123123', CAST(N'1957-07-09T00:00:00.000' AS DateTime), N'khachhang1.jpg', 1)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (2, N'Trần Thị Ngọc Dung
', N'0345913100
', N'tranngocdung100@gmail.com', N'Thủ Đức, TP HCM', N'dungngoctran', N'123456', CAST(N'1967-11-13T00:00:00.000' AS DateTime), N'khachhang1.jpg', 1)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (3, N'Trần Diễm Hân
', N'0948843751
', N'diemhan751@gmail.com', N'Quận 1, TP HCM', N'diemhan751', N'123456789', CAST(N'2003-12-04T00:00:00.000' AS DateTime), N'khachhang3.jpg', 1)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (4, N'Nguyễn Thị Thu Hương
', N'0320796460
', N'nguyenthihuong@gmail.com', N'Tân Bình, Tp HCM', N'thuhuong', N'123123', CAST(N'1993-10-11T00:00:00.000' AS DateTime), N'khachhang.jpg', 1)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (5, N'Ngô Công Tú
', N'0378920200
', N'congtu123123@gmail.com', N'Quận 9, Tp HCM', N'congtu', N'123456', CAST(N'1977-02-07T00:00:00.000' AS DateTime), N'khachhang4.jpg', 1)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (8, N'Nguyễn Ocean', N'0352790923', N'nguyenhaiduong201001@gmail.com', N'Đông hòa,dĩ an,bình dương', N'ocean', N'77777', CAST(N'2000-02-08T00:00:00.000' AS DateTime), N'khachhang5.jpg', 1)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (9, N'a', N'1', N'a@gmail.com', NULL, N'a', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (10, N'0231_Võ Anh Quân', N'1', N'01642027120q@gmail.com', NULL, N'voanhquan', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (11, N'0231_Võ Anh Quân', N'1', N'01642027120q@gmail.com', NULL, N'a', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (12, N'0231_Võ Anh Quân', N'1', N'01642027120q@gmail.com', NULL, N'voanhquan', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (13, N'0231_Võ Anh Quân', N'1', N'01642027120q@gmail.com', NULL, N'q', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (14, N'0231_Võ Anh Quân', N'1212', N'01642027120q@gmail.com', NULL, N'asdad', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (15, N'Nguyễn Phú Lộc', N'0979291678', N'01642027120q@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (16, N'Võ Anh uân', N'0979291787', N'01642027120q@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (17, N'0231_Võ Anh Quân', N'0979291687', N'01642027120q@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (18, N'Nguyễn Phú Lộc', N'097921212', N'01642027120q@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (19, N'0231_Võ Anh Quân', N'0979291687', N'01642027120q@gmail.com', NULL, N'nguyenphuloc', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (20, N'0231_Võ Anh Quân', N'0979291687', N'01642027120q@gmail.com', NULL, N'nguyenphuloc', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (21, N'0231_Võ Anh Quân', N'0979291687', N'01642027120q@gmail.com', NULL, N'sqqs', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (22, N'0231_Võ Anh Quâna', N'0979291611', N'01642027120qaaaaa@gmail.com', NULL, N'aaaaaaaa', N'a', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (23, N'Ho aNH Tuan', N'0979291687', N'hoanhtuan@gmail.com', NULL, N'hoanhtuan', N'123123', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (24, N'Ho aNH Tuan1', N'0979291612', N'hoanhtuan@gmail.com', NULL, N'aaaaa', N'123123', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (25, N'Nguyễn Phú Lộc', N'0979291674', N'01642027120q@gmail.xn--com-kla', NULL, N'dâsdasd', N'111', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (26, N'âsdad', N'0979291628', N'01642027120q@gmail.xn--com-kla', NULL, N'ââ', N'1212', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (27, N'âsdad', N'0979291628', N'01642027120q@gmail.xn--com-kla', NULL, N'ââ', N'1212', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (28, N'Nguyễn Phú Lộc11', N'0979291611', N'01642027120q@gmail.xn--com-kla', NULL, N'22', N'1212', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (29, N'Võ Long Nhât', N'0979291621', N'nguyenphuloc2001t@gmail.com', NULL, N'longnhat', N'123123', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (30, N'Võ Long Nhật1', N'0979291123', N'nguyenphuloc2001t@gmail.com', NULL, N'longnhat1', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (31, N' longnhat2', N'0979291234', N'nguyenphuloc2001t@gmail.com', NULL, N'longnhat2', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (32, N'longnhat3', N'0979293456', N'01642027120q@gmail.com', NULL, N'longnhat3', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (33, N'longnhat4', N'0979291609', N'01642027120q@gmail.com', NULL, N'longnhat4', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (34, N'longnhat5', N'0979291676', N'01642027120q@gmail.com', NULL, N'longnhat5', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (35, N'longnhat6', N'0979291624', N'nguyenphuloc2001t@gmail.com', NULL, N'longnhat6', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (36, N'longnhat7', N'0979291620', N'01642027120q@gmail.com', NULL, N'longnhat7', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (37, N'longnhat8', N'0979291600', N'01642027120q@gmail.com', NULL, N'longnhat8', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (38, N'longnhat9', N'0979291620', N'01642027120q@gmail.com', NULL, N'longnhat9', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (39, N'longnhat10', N'0979291620', N'01642027120q@gmail.com', NULL, N'longnhat10', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (40, N'longnhat11', N'0979291623', N'01642027120q@gmail.com', NULL, N'longnhat11', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (41, N'longnhat12', N'0979291611', N'01642027120q@gmail.com', NULL, N'longnhat12', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (42, N'longnhat12', N'0979291611', N'01642027120q@gmail.com', NULL, N'longnhat12', N'123123', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (43, N'longnhat13', N'0979291623', N'01642027120q@gmail.com', NULL, N'longnhat13', N'1', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (44, N'longnhat13', N'0979291623', N'01642027120q@gmail.com', NULL, N'longnhat13', N'1', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (45, N'longnhat14', N'0979291620', N'01642027120q@gmail.com', NULL, N'longnhat14', N'1', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (46, N'longnhat15', N'0979291643', N'01642027120q@gmail.com', NULL, N'longnhat15', N'1', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (47, N'longnhat16', N'0979291620', N'01642027120q@gmail.com', NULL, N'longnhat16', N'1', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (48, N'longnhat17', N'0979291623', N'01642027120q@gmail.com', NULL, N'longnhat17', N'1', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (49, N'longnhat18', N'0979291623', N'01642027120q@gmail.com', NULL, N'longnhat18', N'1', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (50, N'longnhat20', N'0979291611', N'01642027120q@gmail.com', NULL, N'longnhat20', N'1', NULL, NULL, 0)
INSERT [dbo].[KHACHHANG] ([makh], [tenkhachhang], [sodienthoai], [email], [diachi], [taikhoankh], [matkhau], [ngaysinh], [anhdaidien], [trangthai]) VALUES (51, N'longnhat20', N'0979291611', N'01642027120q@gmail.com', NULL, N'longnhat20', N'1', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LIENHE] ON 

INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (1, N'Nguyễn Thị Linh', N'Mua Vali ', N'0372873286', N'nguyenthilinh123@gmail.com', N'Bên cửa hàng có vali mau trắng không ạ ')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (2, N'Trần Văn Đức', N'Khuyến Mãi Vali ', N'0328322748', N'ductran0921@gmail.com', N'Tháng tư cửa hàng có những khuyến mãi nào vậy ? ')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (3, N'Nguyễn Phú Lộc', N'PHẢN ÁNH', N'0979291678', N'01642027120q@gmail.com', N'nói dùm em anh quân ạo được hog')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (4, N'Võ Anh uân', N'a', N'0979291787', N'01642027120q@gmail.com', N'ádadasdasqweqweweqweqwewew')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (5, N'0231_Võ Anh Quân', N'PHẢN ÁNH', N'0979291687', N'01642027120q@gmail.com', N'hello eveny adjsdasd')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (7, N'Nguyễn Phú Lộc', N'PHẢN ÁNH', N'097921212', N'01642027120q@gmail.com', N'Nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis optio cumque nihil impedit quo minus id quod maxime  ')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (8, N'Nguyễn Phú Lộc', N'a', N'a', N'01642027120q@gmail.com', N'a')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (9, N'Admin Anh Quân', N'Test  ', N'0979291687', N'QuanCamilee@gmail.com', N'Test thôi làm gì căng')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (10, N'Võ Long Nhật', N'PHẢN ÁNH', N'0979291687', N'QuanCamilee@gmail.com', N'Test')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (11, N'Võ Long Nhât', N'PHẢN ÁNH', N'0979291611', N'nguyenphuloc2001t@gmail.com', N'test')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (12, N'0231_Võ Anh Quân', N'PHẢN ÁNH', N'0979291620', N'01642027120q@gmail.com', N'test')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (13, N'Võ Long Nhật', N'PHẢN ÁNH', N'0979291683', N'QuanCamilee@gmail.com', N'Test lan 2')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (14, N'Hồ Anh Tuấn', N'Phản ánh', N'0979292912', N'anhtuana2k422001@gmail.com', N'Test')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (15, N'Võ Anh Quân', N'test', N'0979291678', N'01642027120q@gmail.com', N'dad')
INSERT [dbo].[LIENHE] ([malienhe], [tenkhachhang], [tieude], [sdt], [email], [noidung]) VALUES (16, N'Võ Long Nhật', N'PHẢN ÁNH', N'0979291687', N'quancamilee@gmail.com', N'test')
SET IDENTITY_INSERT [dbo].[LIENHE] OFF
GO
SET IDENTITY_INSERT [dbo].[MAUSAC] ON 

INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (1, N'Đen')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (2, N'Xanh')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (3, N'Vàng')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (4, N'Đỏ')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (5, N'Hồng')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (6, N'Cam')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (7, N'Xanh lá')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (8, N'Xám')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (9, N'Xanh Bạc Hà')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (10, N'Trắng')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (11, N'Bạc')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (12, N'Metal')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (13, N'Navy')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (14, N'Burgundy')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (15, N'Rượu đỏ')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (16, N'Nâu')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (17, N'Graphite')
INSERT [dbo].[MAUSAC] ([mamausac], [tenmausac]) VALUES (18, N'Ngọc trai')
SET IDENTITY_INSERT [dbo].[MAUSAC] OFF
GO
SET IDENTITY_INSERT [dbo].[PHIEUKHUYENMAI] ON 

INSERT [dbo].[PHIEUKHUYENMAI] ([makhuyenmai], [tenkhuyenmai], [phantram], [tienkhuyenmai], [ngaybatdau], [ngayketthuc]) VALUES (1, N'Khuyến Mãi Sinh Nhật', NULL, CAST(20002 AS Decimal(18, 0)), CAST(N'2022-03-28T22:58:23.627' AS DateTime), NULL)
INSERT [dbo].[PHIEUKHUYENMAI] ([makhuyenmai], [tenkhuyenmai], [phantram], [tienkhuyenmai], [ngaybatdau], [ngayketthuc]) VALUES (2, N'Khuyến Mãi Tháng 4', N'15', NULL, CAST(N'2022-03-28T22:59:31.407' AS DateTime), CAST(N'2022-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[PHIEUKHUYENMAI] ([makhuyenmai], [tenkhuyenmai], [phantram], [tienkhuyenmai], [ngaybatdau], [ngayketthuc]) VALUES (3, N'Anh Quân test1', N'202', CAST(2 AS Decimal(18, 0)), CAST(N'2022-04-28T22:58:23.000' AS DateTime), CAST(N'2022-04-28T22:58:23.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PHIEUKHUYENMAI] OFF
GO
SET IDENTITY_INSERT [dbo].[SIZEVALI] ON 

INSERT [dbo].[SIZEVALI] ([masize], [tensize], [mota]) VALUES (1, N'S', N'Kích thước và thể tích chưa nhỏ ')
INSERT [dbo].[SIZEVALI] ([masize], [tensize], [mota]) VALUES (2, N'M', N'Kích thước và thể tich chứa vừa')
INSERT [dbo].[SIZEVALI] ([masize], [tensize], [mota]) VALUES (3, N'L', N'Kích thước và thể tích chứa lớn')
INSERT [dbo].[SIZEVALI] ([masize], [tensize], [mota]) VALUES (4, N'XL', N'Kích thước và thể tích chứa rất lớn')
SET IDENTITY_INSERT [dbo].[SIZEVALI] OFF
GO
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 

INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (1, N'Pisani', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (2, N'Valinice', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (3, N'Austin Reed', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (4, N'Larita', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (5, N'Epoch', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (6, N'Legend Walker', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (7, N'La Brujula', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (8, N'Rovigo', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (9, N'Mikkor', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (10, N'Beatas', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (11, N'Bouncie', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (12, N'Vantemz', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (13, N'Kakashi', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (14, N'Sakos', N'Chính hãng')
INSERT [dbo].[THUONGHIEU] ([mathuonghieu], [tenthuonghieu], [mota]) VALUES (15, N'Vivache

', N'Chính hãng')
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
GO
SET IDENTITY_INSERT [dbo].[VALI] ON 

INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (1, N'Vali Pisani Skyle CD_20 SIZE S ', 1, 1, 1, N'1_Vali1.jpg', NULL, N'vali', 33, CAST(3720000 AS Decimal(18, 0)), CAST(2790000 AS Decimal(18, 0)), CAST(N'2022-03-29T00:05:42.000' AS DateTime), 1, N'	Nhựa PP siêu bền, chống bể vỡ tốt', N'37x21x50 cm', N'35L', N'Bánh xe đôi', N'TSA', N'Khóa khung 3 điểm', N'cb8i_9hpp3c')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (10, N'Vali Pisani Skyle CD_24 SIZE M', 1, 2, 1, N'1_Vali1.jpg', NULL, N'vali', 43, CAST(4120000 AS Decimal(18, 0)), CAST(3090000 AS Decimal(18, 0)), CAST(N'2022-03-29T00:34:24.230' AS DateTime), 1, N'	Nhựa PP siêu bền, chống bể vỡ tốt', N'43x27.5x59.5 cm', N'63L', N'Bánh xe đôi', N'TSA', N'Khóa khung 3 điểm', N'cb8i_9hpp3c')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (11, N'Vali Pisani Skyle CD_20 SIZE L ', 1, 3, 1, N'1_Vali1.jpg', NULL, N'vali', 12, CAST(4520000 AS Decimal(18, 0)), CAST(3390000 AS Decimal(18, 0)), CAST(N'2022-03-29T00:05:42.500' AS DateTime), 1, N' Nhựa PP siêu bền, chống bể vỡ tốt', N'51x31x69.5 cm', N'99L', N'Bánh xe đôi', N'TSA', N'Khóa khung 3 điểm', N'cb8i_9hpp3c')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (12, N'Vali Kakashi Anze P7007_20 S', 13, 1, 1, N'1_Vali2.jpg', NULL, N'vali', 11, CAST(2790000 AS Decimal(18, 0)), CAST(999000 AS Decimal(18, 0)), CAST(N'2022-03-29T08:30:20.070' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'38x20x49 cm', N'34 Lít', N'Bánh xe đôi', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'tR-OKHZRbos')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (13, N'Vali Kakashi Anze P7007_20 M', 13, 2, 1, N'1_Vali2.jpg', NULL, N'vali', 4, CAST(3050000 AS Decimal(18, 0)), CAST(999000 AS Decimal(18, 0)), CAST(N'2022-03-29T08:30:20.070' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'45x26.5x60 cm', N'64 Lít', N'Bánh xe đôi', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'tR-OKHZRbos')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (14, N'Vali Kakashi Anze P7007_20 L', 13, 3, 1, N'1_Vali2.jpg', NULL, N'vali', 8, CAST(3320000 AS Decimal(18, 0)), CAST(999000 AS Decimal(18, 0)), CAST(N'2022-03-29T08:30:20.070' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'53x30x70 cm', N'100 Lít', N'Bánh xe đôi', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'tR-OKHZRbos')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (15, N'Vali Legend Walker LW6702_58 S', 6, 1, 1, N'1_Vali3.jpg', NULL, N'vali', 12, CAST(6999000 AS Decimal(18, 0)), CAST(6999000 AS Decimal(18, 0)), CAST(N'2022-03-29T09:02:24.447' AS DateTime), 1, N'Nhựa PC cao cấp', N'44x27x61 cm', N'53 Lít', N'Bánh xe đơn', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'-sTY09KbD2Q')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (16, N'Vali Legend Walker LW6702_58 L', 6, 2, 1, N'1_Vali3.jpg', NULL, N'vali', 12, CAST(7399000 AS Decimal(18, 0)), CAST(7399000 AS Decimal(18, 0)), CAST(N'2022-03-29T09:02:24.447' AS DateTime), 1, N'Nhựa PC cao cấp', N'48x29x68 cm', N'69 Lít', N'Bánh xe đơn', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'-sTY09KbD2Q')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (17, N'Vali Legend Walker LW6201L_62 M', 6, 2, 1, N'1_Vali4.jpg', NULL, N'vali', 23, CAST(8909000 AS Decimal(18, 0)), CAST(8909000 AS Decimal(18, 0)), CAST(N'2022-03-29T15:01:09.557' AS DateTime), 1, N'	Nhựa PC cao cấp', N'47.30x29.50x66 cm', N'70 Lít', N'Bánh xe đơn', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'mtEb0l_MAgg')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (18, N'Vali Legend Walker LW6201L_62 L', 6, 3, 1, N'1_Vali4.jpg', NULL, N'vali', 23, CAST(9090000 AS Decimal(18, 0)), CAST(9090000 AS Decimal(18, 0)), CAST(N'2022-03-29T15:01:09.557' AS DateTime), 1, N' Nhựa PC cao cấp', N'52.30x31x73 cm', N'90 Lít', N'Bánh xe đơn', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'mtEb0l_MAgg')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (23, N'Vali Epoch MF8064_19 SIZE S', 5, 1, 2, N'2_vali2.jpg', NULL, N'vali', 45, CAST(6999000 AS Decimal(18, 0)), CAST(6999000 AS Decimal(18, 0)), CAST(N'2022-04-06T12:18:39.570' AS DateTime), 1, N'Nhựa PC cao cấp', N'44x27x64 cm', N'60 Lít', N'	Bánh xe đôi', N'	Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'GuZyDmC3L3U')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (49, N'Vali Epoch MF8064_19 SIZE M', 5, 2, 2, N'2_vali2.jpg', NULL, N'vali', 45, CAST(7999000 AS Decimal(18, 0)), CAST(7999000 AS Decimal(18, 0)), CAST(N'2022-04-06T12:18:39.570' AS DateTime), 1, N'Nhựa PC cao cấp', N'52.30x31x73 cm', N'68 Lít', N' Bánh xe đôi', N' Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'GuZyDmC3L3U')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (51, N'Vali Pisani Skyle CD_20 SIZE S', 1, 1, 2, N'2_vali3.jpg', NULL, N'vali', 30, CAST(2790000 AS Decimal(18, 0)), CAST(2790000 AS Decimal(18, 0)), CAST(N'2022-04-06T12:56:16.217' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'	37x21x50 cm', N'35L', N'	Bánh xe đôi', N'TSA', N'Khóa khung 3 điểm', N'gezPzCJj-fg')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (52, N'Vali Pisani Skyle CD_20 SIZE M ', 1, 2, 2, N'2_vali3.jpg', NULL, N'vali', 30, CAST(4120000 AS Decimal(18, 0)), CAST(3090000 AS Decimal(18, 0)), CAST(N'2022-04-06T12:56:16.217' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'43x27.5x59.5 cm', N'63L', N' Bánh xe đôi', N'TSA', N'Khóa khung 3 điểm', N'gezPzCJj-fg')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (53, N'Vali Pisani Skyle CD_20 SIZE L', 1, 3, 2, N'2_vali3.jpg', NULL, N'vali', 30, CAST(4520000 AS Decimal(18, 0)), CAST(3390000 AS Decimal(18, 0)), CAST(N'2022-04-06T12:56:16.217' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'	51x31x69.5 cm', N'99L', N' Bánh xe đôi', N'TSA', N'Khóa khung 3 điểm', N'gezPzCJj-fg')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (54, N'Vali Pisani Rayan PP008_28 L', 1, 3, 2, N'2_vali4.jpg', NULL, N'vali', 40, CAST(2700000 AS Decimal(18, 0)), CAST(1699000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:09:39.587' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'	48x30x69 cm', N'	89L', N'	Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'lM_GCVG1k0U')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (55, N'Vali Pisani Reito YG086L_20 S', 1, 1, 3, N'3_vali1.jpg', NULL, N'vali', 50, CAST(2830000 AS Decimal(18, 0)), CAST(1799000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:18:07.340' AS DateTime), 1, N'Nhựa PC + ABS', N'35x23x48.5 cm', N'35L', N'	Bánh xe đôi', N'TSA', N'Khóa kéo đôi chống rạch', N'Mwejjig4gyc')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (56, N'Vali Pisani Reito YG086L_20 M', 1, 2, 3, N'3_vali1.jpg', NULL, N'vali', 50, CAST(3130000 AS Decimal(18, 0)), CAST(1999000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:18:07.340' AS DateTime), 1, N'Nhựa PC + ABS', N'42.5x27.5x58.5 cm', N'62L', N' Bánh xe đôi', N'TSA', N'Tích hợp cổng sạc dự phòng', N'Mwejjig4gyc')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (57, N'Vali Pisani Reito YG086L_20 L', 1, 3, 3, N'3_vali1.jpg', NULL, N'vali', 50, CAST(3430000 AS Decimal(18, 0)), CAST(2199000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:18:07.340' AS DateTime), 1, N'Nhựa PC + ABS', N'50x31x68.5 cm', N'96L', N' Bánh xe đôi', N'TSA', N'Tích hợp cổng sạc dự phòng', N'Mwejjig4gyc')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (58, N'Vali Pisani Tatti YG6044L_20 S', 1, 1, 3, N'3_vali2.jpg', NULL, N'vali', 60, CAST(2780000 AS Decimal(18, 0)), CAST(1999000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:33:09.283' AS DateTime), 1, N'Nhựa PC cao cấp', N'36x21x49 cm', N'33L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'_iXl1xDDs1s')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (59, N'Vali Pisani Tatti YG6044L_20 M', 1, 2, 3, N'3_vali2.jpg', NULL, N'vali', 60, CAST(3780000 AS Decimal(18, 0)), CAST(2199000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:33:09.283' AS DateTime), 1, N'Nhựa PC cao cấp', N'42x25x61 cm', N'56L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'_iXl1xDDs1s')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (60, N'Vali Pisani Tatti YG6044L_20 L', 1, 3, 3, N'3_vali2.jpg', NULL, N'vali', 60, CAST(3380000 AS Decimal(18, 0)), CAST(2499000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:33:09.283' AS DateTime), 1, N'Nhựa PC cao cấp', N'51x29x72 cm', N'96L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'_iXl1xDDs1s')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (61, N'Vali Larita Bolona TR6010_20 S', 4, 1, 3, N'3_vali3.jpg', NULL, N'vali', 70, CAST(2222000 AS Decimal(18, 0)), CAST(1399000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:42:42.170' AS DateTime), 1, N'Nhựa PC + ABS', N'35x23x47 cm', N'34L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'7kaDpT0Ib6U')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (62, N'Vali Larita Bolona TR6010_20 M', 4, 2, 3, N'3_vali3.jpg', NULL, N'vali', 70, CAST(2500000 AS Decimal(18, 0)), CAST(1599000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:42:42.170' AS DateTime), 1, N'Nhựa PC + ABS', N'	40.5x26x57 cm', N'54L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'7kaDpT0Ib6U')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (63, N'Vali Larita Bolona TR6010_20 L', 4, 3, 3, N'3_vali3.jpg', NULL, N'vali', 70, CAST(2800000 AS Decimal(18, 0)), CAST(1799000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:42:42.170' AS DateTime), 1, N'Nhựa PC + ABS', N'46x29x67.5 cm', N'81L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'7kaDpT0Ib6U')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (64, N'Vali Mikkor The Troy New TTN20-001_20 S', 9, 1, 4, N'4_vali1.jpg', NULL, N'vali', 55, CAST(2290000 AS Decimal(18, 0)), CAST(2290000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:50:17.453' AS DateTime), 1, N'Vải Polyester', N'36x25x50 cm', N'45L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'wT2UAKTpVpo')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (65, N'Vali Mikkor The Troy New TTN20-001_20 M', 9, 1, 4, N'4_vali1.jpg', NULL, N'vali', 55, CAST(2690000 AS Decimal(18, 0)), CAST(2690000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:50:17.453' AS DateTime), 1, N'Vải Polyester', N'40x28x60 cm', N'67L', N'Bánh xe đôi', N'TSA', N'Có thể nới rộng', N'wT2UAKTpVpo')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (66, N'Vali Beatas JP20_20 VBJ SIZE S', 10, 1, 4, N'4_vali2.jpg', NULL, N'vali', 65, CAST(4580000 AS Decimal(18, 0)), CAST(2890000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:57:05.940' AS DateTime), 1, N'Vải Polyester', N'38x25.50x60 cm', N'33L', N'Bánh xe đơn', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'mr75jxfj_qM')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (67, N'Vali Beatas JP20_20 VBJ SIZE M', 10, 2, 4, N'4_vali2.jpg', NULL, N'vali', 65, CAST(4980000 AS Decimal(18, 0)), CAST(3190000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:57:05.940' AS DateTime), 1, N'Vải Polyester', N'44x28.50x64 cm', N'57L', N'Bánh xe đơn', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'mr75jxfj_qM')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (68, N'Vali Beatas JP20_20 VVS SIZE L', 10, 2, 4, N'4_vali2.jpg', NULL, N'vali', 65, CAST(5180000 AS Decimal(18, 0)), CAST(3390000 AS Decimal(18, 0)), CAST(N'2022-04-06T13:57:05.940' AS DateTime), 1, N'Vải Polyester', N'45.5x31x78 cm', N'70L', N'Bánh xe đơn', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'mr75jxfj_qM')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (69, N'Vali Vivache SPR_2 VVS SIZE S', 15, 1, 4, N'4_vali3.jpg', NULL, N'vali', 75, CAST(1980000 AS Decimal(18, 0)), CAST(1980000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:07:24.563' AS DateTime), 1, N'Vải Polyester', N'34x24x55 cm', N'45L', N'Bánh xe đơn', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'9aKcr0W76Nk')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (70, N'Vali Vivache SPR_2 VVS SIZE L', 15, 3, 4, N'4_vali3.jpg', NULL, N'vali', 75, CAST(2430000 AS Decimal(18, 0)), CAST(2430000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:07:24.563' AS DateTime), 1, N'Vải Polyester', N'42x30x64 cm', N'81L', N'Bánh xe đơn', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'9aKcr0W76Nk')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (71, N'Vali Vivache SPR_2 SIZE SIZE XL', 15, 4, 4, N'4_vali3.jpg', NULL, N'vali', 75, CAST(2750000 AS Decimal(18, 0)), CAST(2750000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:07:24.563' AS DateTime), 1, N'Vải Polyester', N'	48x30x80 cm', N'90L', N'Bánh xe đơn', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'9aKcr0W76Nk')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (72, N'Vali Legend Walker LW6720_49 S ', 6, 1, 5, N'5_vali1.jpg', NULL, N'vali', 35, CAST(7990000 AS Decimal(18, 0)), CAST(7990000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:15:09.203' AS DateTime), 1, N'Nhựa PC cao cấp', N'36x23x50 cm', N'35L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'L8Gp5DRf0Tg')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (73, N'Vali Legend Walker LW6720_49 M ', 6, 2, 5, N'5_vali1.jpg', NULL, N'vali', 35, CAST(9990000 AS Decimal(18, 0)), CAST(9990000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:15:09.203' AS DateTime), 1, N'Nhựa PC cao cấp', N'	50x30x67 cm', N'68L', N'Bánh xe đôi', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'L8Gp5DRf0Tg')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (74, N'Vali Legend Walker LW6720_49 L ', 6, 3, 5, N'5_vali1.jpg', NULL, N'vali', 35, CAST(10990000 AS Decimal(18, 0)), CAST(10990000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:15:09.203' AS DateTime), 1, N'Nhựa PC cao cấp', N'50x29x75 cm', N'82L', N'Bánh xe đôi', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'L8Gp5DRf0Tg')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (76, N'Vali Legend Walker LW6021_64 M', 6, 1, 5, N'5_vali2.jpg', NULL, N'vali', 45, CAST(7190000 AS Decimal(18, 0)), CAST(7190000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:23:29.867' AS DateTime), 1, N'Nhựa PC cao cấp', N'48x29x68 cm', N'70L', N'Bánh xe đôi', N'Khung', N'Cân điện tử', N'QAHy-OyUfvI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (77, N'Vali Legend Walker LW6021_64 L', 6, 3, 5, N'5_vali2.jpg', NULL, N'vali', 45, CAST(7690000 AS Decimal(18, 0)), CAST(7690000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:23:29.867' AS DateTime), 1, N'Nhựa PC cao cấp', N'	52x30.50x74 cm', N'90L', N'Bánh xe đôi', N'Khung', N'Cân điện tử', N'QAHy-OyUfvI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (78, N'Vali Rovigo Scootor_20 SIZE S', 8, 1, 5, N'5_vali3.jpg', NULL, N'vali', 30, CAST(14999000 AS Decimal(18, 0)), CAST(14999000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:28:40.360' AS DateTime), 1, N'Nhựa PC + ABS', N'	62.9x36.5x82.6 cm', N'29.3L', N'Bánh xe đôi', N'TSA', N'Vali hổ trợ di chuyển', N'laWs2PY89xE')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (79, N'Vali Rovigo CAPTAIN XR15039_20 S', 8, 1, 6, N'6_vali1.jpg', NULL, N'vali', 25, CAST(10250000 AS Decimal(18, 0)), CAST(9020000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:32:06.967' AS DateTime), 1, N'Nhôm nguyên khối sang trọng', N'36x23.5x51 cm', N'39L', N'Bánh xe đôi', N'Khung', N'Khóa khung 2 điểm', N'iqNPIYjoAC0')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (80, N'Vali Rovigo CAPTAIN XR15039_20 M', 8, 2, 6, N'6_vali1.jpg', NULL, N'vali', 25, CAST(11150000 AS Decimal(18, 0)), CAST(9812000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:32:06.967' AS DateTime), 1, N'Nhôm nguyên khối sang trọng', N'43.5x29x65 cm', N'74L', N'Bánh xe đôi', N'Khung', N'Khóa khung 2 điểm', N'iqNPIYjoAC0')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (81, N'Vali Rovigo IRON XR15038_20 S', 8, 1, 6, N'6_vali2.jpg', NULL, N'vali', 33, CAST(11150000 AS Decimal(18, 0)), CAST(8932000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:50:42.593' AS DateTime), 1, N'Nhôm nguyên khối sang trọng', N'36x23.5x51 cm', N'39L', N'Bánh xe đô', N'Khung', N'Khóa khung 2 điểm', N'IZkMsSFWyT0')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (82, N'Vali Rovigo IRON XR15038_20 M', 8, 2, 6, N'6_vali2.jpg', NULL, N'vali', 33, CAST(11050000 AS Decimal(18, 0)), CAST(9724000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:50:42.593' AS DateTime), 1, N'Nhôm nguyên khối sang trọng', N'43.5x29x65 cm', N'74L', N'Bánh xe đô', N'Khung', N'Khóa khung 2 điểm', N'IZkMsSFWyT0')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (83, N'Vali Bouncie Vali kéo Starwar LG-16PC-R01 S', 11, 1, 7, N'7_vali1.jpg', NULL, N'vali', 44, CAST(899000 AS Decimal(18, 0)), CAST(499000 AS Decimal(18, 0)), CAST(N'2022-04-06T14:58:29.640' AS DateTime), 1, N'Nhựa ABS cứng cáp', N'33x26x44 cm', N'29L', N'Bánh xe đôi', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'v4RooATiCDM')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (86, N'Vali Rovigo Champions 18_19 S', 8, 1, 8, N'8_vali1.jpg', NULL, N'vali', 55, CAST(1900000 AS Decimal(18, 0)), CAST(1900000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:02:19.540' AS DateTime), 1, N'	Nhựa PC + ABS', N'38x23.5x53.5 cm', N'34L', N'Bánh xe đôi', N'TSA', N'Khóa kéo đôi chống rạch', N'Huwdd47XXeQ')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (87, N'Vali Epoch MF7053_20 SIZE S', 5, 1, 8, N'8_vali2.jpg', NULL, N'vali', 66, CAST(4599000 AS Decimal(18, 0)), CAST(4599000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:06:49.137' AS DateTime), 1, N'Nhựa PC cao cấp', N'36x24x51 cm', N'62L', N'Bánh xe đôi', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'j5GYW-UOkHI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (88, N'Vali Epoch MF7053_20 SIZE M', 5, 2, 8, N'8_vali2.jpg', NULL, N'vali', 66, CAST(5399000 AS Decimal(18, 0)), CAST(5399000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:06:49.137' AS DateTime), 1, N'Nhựa PC cao cấp', N'40x26x58 cm', N'54L', N'Bánh xe đôi', N'Khung', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'j5GYW-UOkHI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (89, N'Vali Rovigo Vittorio 8357C_20 S', 8, 1, 8, N'8_vali3.jpg', NULL, N'vali', 77, CAST(3390000 AS Decimal(18, 0)), CAST(2530000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:13:46.890' AS DateTime), 1, N'Nhựa PC cao cấp', N'	35x21x50 cm', N'33L', N'Bánh xe đôi', N'TSA', N' Khóa kéo đôi chống rạch', N'd11AiLyHxWI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (90, N'Vali Rovigo Vittorio 8357C_20 M', 8, 2, 8, N'8_vali3.jpg', NULL, N'vali', 77, CAST(3650000 AS Decimal(18, 0)), CAST(2730000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:13:46.890' AS DateTime), 1, N'Nhựa PC cao cấp', N'42x26x60 cm', N'59L', N'Bánh xe đôi', N'TSA', N' Khóa kéo đôi chống rạch', N'd11AiLyHxWI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (91, N'Vali Rovigo Vittorio 8357C_20 L', 8, 3, 8, N'8_vali3.jpg', NULL, N'vali', 77, CAST(3920000 AS Decimal(18, 0)), CAST(2930000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:13:46.890' AS DateTime), 1, N'Nhựa PC cao cấp', N'45x27x65 cm', N'71L', N'Bánh xe đôi', N'TSA', N' Khóa kéo đôi chống rạch', N'd11AiLyHxWI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (92, N'Vali Combo 2 VALI Pisani Riati Size XL', 1, 4, 9, N'9_vali1.jpg', NULL, N'vali', 33, CAST(4650000 AS Decimal(18, 0)), CAST(2998000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:21:24.967' AS DateTime), 1, N'Nhựa PC + ABS', N'	35x21x50 cm', N'54L', N'Bánh xe đôi', N'Khóa số TSA', N' Tặng kèm bộ Sticker chống thất lạc hành lý', N'FOXICNzjtTY')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (93, N'Vali Combo 2 VALI Larita Matio Size  M', 4, 2, 9, N'9_vali2.jpg', NULL, N'vali', 35, CAST(4650000 AS Decimal(18, 0)), CAST(2998000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:26:36.413' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'42x26x60 cm', N'60L', N'Bánh xe đôi', N'Khóa số TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'NULLywUSAwVCfNI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (94, N'Vali Combo 2 VALI Larita Matio Size  L', 4, 3, 9, N'9_vali2.jpg', NULL, N'vali', 35, CAST(5000000 AS Decimal(18, 0)), CAST(3198000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:26:36.413' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'45x27x65 cm', N'74L', N'Bánh xe đôi', N'Khóa số TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'NULLywUSAwVCfNI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (95, N'Vali Combo 2 VALI Larita Matio Size  XL', 4, 4, 9, N'9_vali2.jpg', NULL, N'vali', 35, CAST(5350000 AS Decimal(18, 0)), CAST(3398000 AS Decimal(18, 0)), CAST(N'2022-04-06T15:26:36.413' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'50x28x72 cm', N'91L', N'Bánh xe đôi', N'Khóa số TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'NULLywUSAwVCfNI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (96, N'Vali Larita Matio HK14_20 SIZE S', 4, 1, 2, N'2_Vali1.jpg', NULL, N'vali', 23, CAST(2150000 AS Decimal(18, 0)), CAST(1390000 AS Decimal(18, 0)), CAST(N'2022-03-30T20:38:35.633' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'37x22x50 cm', N'37L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'ywUSAwVCfNI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (97, N'Vali Larita Matio HK14_20 SIZE M', 4, 2, 2, N'2_Vali1.jpg', NULL, N'vali', 23, CAST(2500000 AS Decimal(18, 0)), CAST(1599000 AS Decimal(18, 0)), CAST(N'2022-03-30T20:38:35.633' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'44x25x61 cm', N'60L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'ywUSAwVCfNI')
INSERT [dbo].[VALI] ([mavali], [tenvali], [mathuonghieu], [masize], [madanhmuc], [anhvali], [mota], [tukhoa], [soluongton], [gia], [giakhuyenmai], [ngaytao], [trangthai], [chatlieu], [kichthuoc], [thetich], [banhxe], [khoa], [tienich], [linkvideo]) VALUES (98, N'Vali Larita Matio HK14_20 SIZE L', 4, 3, 2, N'2_Vali1.jpg', NULL, N'vali', 23, CAST(2850000 AS Decimal(18, 0)), CAST(1799999 AS Decimal(18, 0)), CAST(N'2022-03-30T20:38:35.633' AS DateTime), 1, N'Nhựa PP siêu bền, chống bể vỡ tốt', N'50x28x72 cm', N'91L', N'Bánh xe đôi', N'TSA', N'Tặng kèm bộ Sticker chống thất lạc hành lý', N'ywUSAwVCfNI')
SET IDENTITY_INSERT [dbo].[VALI] OFF
GO
ALTER TABLE [dbo].[ADMIN] ADD  CONSTRAINT [DF_ADMIN_trangthai]  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[CHITIETDONHANG] ADD  CONSTRAINT [DF_CHITIETDONHANG_soluong]  DEFAULT ((0)) FOR [soluong]
GO
ALTER TABLE [dbo].[CHITIETDONHANG] ADD  CONSTRAINT [DF_CHITIETDONHANG_gia]  DEFAULT ((0)) FOR [gia]
GO
ALTER TABLE [dbo].[DANHGIASANPHAM] ADD  CONSTRAINT [DF_DANHGIASANPHAM_sao]  DEFAULT ((5)) FOR [sao]
GO
ALTER TABLE [dbo].[DANHMUCVALI] ADD  CONSTRAINT [DF_DANHMUCVALI_trangthai]  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [DF_KHACHHANG_trangthai]  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[PHIEUKHUYENMAI] ADD  CONSTRAINT [DF_PHIEUKHUYENMAI_ngaybatdau]  DEFAULT (getdate()) FOR [ngaybatdau]
GO
ALTER TABLE [dbo].[VALI] ADD  CONSTRAINT [DF_VALI_soluongton]  DEFAULT ((0)) FOR [soluongton]
GO
ALTER TABLE [dbo].[VALI] ADD  CONSTRAINT [DF_VALI_gia]  DEFAULT ((0)) FOR [gia]
GO
ALTER TABLE [dbo].[VALI] ADD  CONSTRAINT [DF_VALI_giakhuyenmai]  DEFAULT ((0)) FOR [giakhuyenmai]
GO
ALTER TABLE [dbo].[VALI] ADD  CONSTRAINT [DF_VALI_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[VALI] ADD  CONSTRAINT [DF_VALI_trangthai]  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[ANHVALI]  WITH CHECK ADD  CONSTRAINT [FK_ANHVALI_MAUSAC] FOREIGN KEY([mamausac])
REFERENCES [dbo].[MAUSAC] ([mamausac])
GO
ALTER TABLE [dbo].[ANHVALI] CHECK CONSTRAINT [FK_ANHVALI_MAUSAC]
GO
ALTER TABLE [dbo].[ANHVALI]  WITH CHECK ADD  CONSTRAINT [FK_ANHVALI_VALI] FOREIGN KEY([mavali])
REFERENCES [dbo].[VALI] ([mavali])
GO
ALTER TABLE [dbo].[ANHVALI] CHECK CONSTRAINT [FK_ANHVALI_VALI]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_DONDATHANG] FOREIGN KEY([madonhang])
REFERENCES [dbo].[DONDATHANG] ([madonhang])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_VALI] FOREIGN KEY([mavali])
REFERENCES [dbo].[VALI] ([mavali])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_VALI]
GO
ALTER TABLE [dbo].[DANHGIASANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_DANHGIASANPHAM_KHACHHANG] FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
ALTER TABLE [dbo].[DANHGIASANPHAM] CHECK CONSTRAINT [FK_DANHGIASANPHAM_KHACHHANG]
GO
ALTER TABLE [dbo].[DANHGIASANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_DANHGIASANPHAM_VALI] FOREIGN KEY([mavali])
REFERENCES [dbo].[VALI] ([mavali])
GO
ALTER TABLE [dbo].[DANHGIASANPHAM] CHECK CONSTRAINT [FK_DANHGIASANPHAM_VALI]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[VALI]  WITH CHECK ADD  CONSTRAINT [FK_VALI_DANHMUCVALI] FOREIGN KEY([madanhmuc])
REFERENCES [dbo].[DANHMUCVALI] ([madanhmuc])
GO
ALTER TABLE [dbo].[VALI] CHECK CONSTRAINT [FK_VALI_DANHMUCVALI]
GO
ALTER TABLE [dbo].[VALI]  WITH CHECK ADD  CONSTRAINT [FK_VALI_SIZEVALI] FOREIGN KEY([masize])
REFERENCES [dbo].[SIZEVALI] ([masize])
GO
ALTER TABLE [dbo].[VALI] CHECK CONSTRAINT [FK_VALI_SIZEVALI]
GO
ALTER TABLE [dbo].[VALI]  WITH CHECK ADD  CONSTRAINT [FK_VALI_THUONGHIEU] FOREIGN KEY([mathuonghieu])
REFERENCES [dbo].[THUONGHIEU] ([mathuonghieu])
GO
ALTER TABLE [dbo].[VALI] CHECK CONSTRAINT [FK_VALI_THUONGHIEU]
GO
USE [master]
GO
ALTER DATABASE [QUANLYBANVALI] SET  READ_WRITE 
GO
