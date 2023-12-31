USE [master]
GO
/****** Object:  Database [LabB2_QLLichBay_19127102]    Script Date: 12-Jun-21 15:28:22 ******/
CREATE DATABASE [LabB2_QLLichBay_19127102]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LabB2_QLLichBay_19127102', FILENAME = N'D:\ASUS\Documents\Homework\CSDL\LabB2-QLLB-19clc9-19127102-21\LabB2_QLLichBay_19127102.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LabB2_QLLichBay_19127102_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLEXPRESS\MSSQL\DATA\LabB2_QLLichBay_19127102_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LabB2_QLLichBay_19127102].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET ARITHABORT OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET  MULTI_USER 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LabB2_QLLichBay_19127102]
GO
/****** Object:  Table [dbo].[LichBay]    Script Date: 12-Jun-21 15:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichBay](
	[MaChuyenBay] [varchar](4) NOT NULL,
	[SanBayDi] [varchar](3) NOT NULL,
	[SanBayDen] [varchar](3) NOT NULL,
	[NgayKhoiHanh] [date] NOT NULL,
	[GioKhoiHanh] [time](7) NOT NULL,
	[SoChangDung] [smallint] NOT NULL CONSTRAINT [DF_LichBay_SoChangDung]  DEFAULT ((0)),
 CONSTRAINT [PK_LichBay] PRIMARY KEY CLUSTERED 
(
	[SanBayDi] ASC,
	[NgayKhoiHanh] ASC,
	[GioKhoiHanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanBay]    Script Date: 12-Jun-21 15:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanBay](
	[MaSanBay] [varchar](3) NOT NULL,
	[TenSanBay] [nvarchar](200) NOT NULL,
	[ThuocQuocGia] [nvarchar](100) NOT NULL,
	[KhuVuc] [nvarchar](100) NOT NULL,
	[TinhTrang] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SanBay] PRIMARY KEY CLUSTERED 
(
	[MaSanBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LichBay] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [GioKhoiHanh], [SoChangDung]) VALUES (N'6036', N'SGN', N'HAN', CAST(N'2021-02-01' AS Date), CAST(N'12:00:00' AS Time), 0)
INSERT [dbo].[LichBay] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [GioKhoiHanh], [SoChangDung]) VALUES (N'6006', N'SGN', N'TPE', CAST(N'2021-02-01' AS Date), CAST(N'12:30:00' AS Time), 3)
INSERT [dbo].[LichBay] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [GioKhoiHanh], [SoChangDung]) VALUES (N'252', N'SGN', N'HAN', CAST(N'2021-02-01' AS Date), CAST(N'13:00:00' AS Time), 0)
INSERT [dbo].[LichBay] ([MaChuyenBay], [SanBayDi], [SanBayDen], [NgayKhoiHanh], [GioKhoiHanh], [SoChangDung]) VALUES (N'6038', N'SGN', N'HAN', CAST(N'2021-03-01' AS Date), CAST(N'07:00:00' AS Time), 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ThuocQuocGia], [KhuVuc], [TinhTrang]) VALUES (N'DAD', N'Sân Bay Đà Nẵng', N'Việt Nam', N'Việt Nam', N'Phong tỏa')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ThuocQuocGia], [KhuVuc], [TinhTrang]) VALUES (N'HAN', N'Sân Bay Nội Bài', N'Việt Nam', N'Việt Nam', N'Phong tỏa')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ThuocQuocGia], [KhuVuc], [TinhTrang]) VALUES (N'NRT', N'Sân Bay Narita', N'Nhật Bản', N'Châu Á', N'Hoạt động')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ThuocQuocGia], [KhuVuc], [TinhTrang]) VALUES (N'PQC', N'Sân Bay Phú Quốc', N'Việt Nam', N'Việt Nam', N'Hoạt động')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ThuocQuocGia], [KhuVuc], [TinhTrang]) VALUES (N'SGN', N'Sân Bay Tân Sơn Nhất', N'Việt Nam', N'Việt Nam', N'Hoạt động')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ThuocQuocGia], [KhuVuc], [TinhTrang]) VALUES (N'SIN', N'Sân Bay ChangJi', N'Singapore', N'Châu Á', N'Hoạt động')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ThuocQuocGia], [KhuVuc], [TinhTrang]) VALUES (N'TLN', N'Sân Bay Toulon', N'Pháp', N'Châu Âu', N'Đóng cửa')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ThuocQuocGia], [KhuVuc], [TinhTrang]) VALUES (N'TPE', N'Sân Bay Taipie', N'Đài Loan', N'Châu Á', N'Phong tỏa')
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ThuocQuocGia], [KhuVuc], [TinhTrang]) VALUES (N'UBJ', N'Sân Bay Ube', N'Nhật Bản', N'Châu Á', N'Đóng cửa')
ALTER TABLE [dbo].[LichBay]  WITH CHECK ADD  CONSTRAINT [FK_LichBay_SanBay] FOREIGN KEY([SanBayDi])
REFERENCES [dbo].[SanBay] ([MaSanBay])
GO
ALTER TABLE [dbo].[LichBay] CHECK CONSTRAINT [FK_LichBay_SanBay]
GO
ALTER TABLE [dbo].[LichBay]  WITH CHECK ADD  CONSTRAINT [FK_LichBay_SanBay1] FOREIGN KEY([SanBayDen])
REFERENCES [dbo].[SanBay] ([MaSanBay])
GO
ALTER TABLE [dbo].[LichBay] CHECK CONSTRAINT [FK_LichBay_SanBay1]
GO
ALTER TABLE [dbo].[LichBay]  WITH CHECK ADD  CONSTRAINT [CK_LichBay] CHECK  (([SanBayDi]<>[SanBayDen]))
GO
ALTER TABLE [dbo].[LichBay] CHECK CONSTRAINT [CK_LichBay]
GO
ALTER TABLE [dbo].[LichBay]  WITH CHECK ADD  CONSTRAINT [CK_LichBay_1] CHECK  (([SoChangDung]>=(0)))
GO
ALTER TABLE [dbo].[LichBay] CHECK CONSTRAINT [CK_LichBay_1]
GO
ALTER TABLE [dbo].[SanBay]  WITH CHECK ADD  CONSTRAINT [CK_SanBay] CHECK  (([TinhTrang]=N'Khác' OR [TinhTrang]=N'Phong tỏa' OR [TinhTrang]=N'Đóng cửa' OR [TinhTrang]=N'Hoạt động'))
GO
ALTER TABLE [dbo].[SanBay] CHECK CONSTRAINT [CK_SanBay]
GO
ALTER TABLE [dbo].[SanBay]  WITH CHECK ADD  CONSTRAINT [CK_SanBay_1] CHECK  (([KhuVuc]=N'Khác' OR [KhuVuc]=N'Châu Úc' OR [KhuVuc]=N'Châu Mỹ' OR [KhuVuc]=N'Châu Âu' OR [KhuVuc]=N'Châu Á' OR [KhuVuc]=N'Việt Nam'))
GO
ALTER TABLE [dbo].[SanBay] CHECK CONSTRAINT [CK_SanBay_1]
GO
USE [master]
GO
ALTER DATABASE [LabB2_QLLichBay_19127102] SET  READ_WRITE 
GO
