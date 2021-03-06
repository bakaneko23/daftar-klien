USE [master]
GO
/****** Object:  Database [klien]    Script Date: 10/04/2015 17:00:35 ******/
CREATE DATABASE [klien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'klien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\klien.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'klien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\klien_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [klien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [klien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [klien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [klien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [klien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [klien] SET ARITHABORT OFF 
GO
ALTER DATABASE [klien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [klien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [klien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [klien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [klien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [klien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [klien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [klien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [klien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [klien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [klien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [klien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [klien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [klien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [klien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [klien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [klien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [klien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [klien] SET  MULTI_USER 
GO
ALTER DATABASE [klien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [klien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [klien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [klien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [klien]
GO
/****** Object:  User [klien]    Script Date: 10/04/2015 17:00:35 ******/
CREATE USER [klien] FOR LOGIN [klien] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [klien]
GO
/****** Object:  Table [dbo].[Daftar]    Script Date: 10/04/2015 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Daftar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](200) NOT NULL,
	[alamat] [varchar](50) NOT NULL,
	[tanggal] [date] NOT NULL,
 CONSTRAINT [PK_Daftar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[namauser]    Script Date: 10/04/2015 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[namauser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[keterangan] [varchar](50) NULL,
 CONSTRAINT [PK_namauser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 10/04/2015 17:00:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[role] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Daftar] ON 

INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (1, N'Video Conference Dinas Pendidikan Propinsi DIY', N'Yogyakarta', CAST(N'2010-03-08' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (2, N'Fiber Optic Network - Badan Pengelolaan Perpustakaan, Kearsipan dan Data Elektronik Pemkab Magelang', N'Magelang', CAST(N'2009-08-05' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (3, N'CCTV Rak Buku Perpustakaan Marloboro - Badan Perpustakaan dan Arsip Daerah Provinsi DIY', N'Yogyakarta', CAST(N'2009-09-18' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (4, N'Gandhi Memorial International School (GMIS) Denpasar Bali', N'Denpasar, Bali', CAST(N'2009-10-14' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (5, N'Yogyakarta Traffic Monitoring CCTV - Dinas Perhubungan Provinsi DIY', N'Yogyakarta', CAST(N'2009-11-09' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (6, N'CCTV Monitoring Gunung Merapi Kaliadem View - Kantor Telematika Sleman', N'Sleman', CAST(N'2009-11-17' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (7, N'Public PC Monitoring CCTV di Balai Irung Pancasila SMA Taruna Nusantara Magelang', N'Magelang', CAST(N'2009-11-21' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (8, N'Nusakambangan Island ( CCTV Include FO Cable )- PT. Holcim Indonesia Limited', N'Cilacap', CAST(N'2010-12-01' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (9, N'CCTV Monitoring Gunung Merapi TRITIS View - Subbag Santel Setda Kab. Magelang', N'Magelang', CAST(N'2010-11-01' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (10, N'CCTV Monitoring Gunung Merapi Kali urang View - Bagian Umum, Setda Kab. Sleman CCTV Surveilence', N'Slemann', CAST(N'2010-01-17' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (11, N'Warnet Giga CCTV', N'Yogyakarta', CAST(N'2010-01-21' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (12, N'Microteaching Learning Room SMA Taruna  Nusantara Magelang', N'Magelang', CAST(N'2010-01-30' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (13, N'CCTV Monitoring Ruang Pemasaran Dinas Pertanian Provinsi DIY', N'Yogyakarta', CAST(N'2010-02-11' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (14, N'Video Conference System SMA Taruna Nusantara Magelang', N'Magelang', CAST(N'2010-02-21' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (15, N'Toko / Swalayan IRAWATI ', N'Wonogiri', CAST(N'2010-01-08' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (16, N'SPBU  Karangmojo Kab. Gunung Kidul', N'Gunung Kidul', CAST(N'2010-08-12' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (17, N'BRI Beberapa Unit  DIY', N'Yogyakarta', CAST(N'2010-08-21' AS Date))
INSERT [dbo].[Daftar] ([id], [nama], [alamat], [tanggal]) VALUES (18, N'LPPM UGM Rumah Pintar', N'Wates', CAST(N'2010-09-22' AS Date))
SET IDENTITY_INSERT [dbo].[Daftar] OFF
SET IDENTITY_INSERT [dbo].[namauser] ON 

INSERT [dbo].[namauser] ([id], [username], [password], [keterangan]) VALUES (1, N'admin', N'admin', N'admin')
INSERT [dbo].[namauser] ([id], [username], [password], [keterangan]) VALUES (2, N'ojan', N'123', N'guest')
INSERT [dbo].[namauser] ([id], [username], [password], [keterangan]) VALUES (3, N'feel', N'12343', N'Guest')
INSERT [dbo].[namauser] ([id], [username], [password], [keterangan]) VALUES (4, N'ganteng', N'123', N'guest')
SET IDENTITY_INSERT [dbo].[namauser] OFF
INSERT [dbo].[role] ([role]) VALUES (N'admin')
INSERT [dbo].[role] ([role]) VALUES (N'guest')
USE [master]
GO
ALTER DATABASE [klien] SET  READ_WRITE 
GO
