USE [QLSVDb]
GO

/****** Object:  Table [dbo].[Sinhvien]    Script Date: 25/03/2025 2:40:01 CH ******/
SET ANSI_NULLS ON
GO
//taobangSinhvien
CREATE TABLE [dbo].[Sinhvien](
	[Masv] [nvarchar](50) NOT NULL,
	[Tensv] [nvarchar](50) NOT NULL,
	[Ngaysinh] [date] NOT NULL,
 CONSTRAINT [PK_Sinhvien] PRIMARY KEY 
(
	[Masv] ASC)
GO
//taobanglop
CREATE TABLE [dbo].[lop1](
	[Malop] [nvarchar](10) NOT NULL,
	[Tenlop] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_lop1] PRIMARY KEY 
(
	[Malop] ASC))
GO
//taobangGvcn
CREATE TABLE [dbo].[Gvcn.](
	[Malop] [nvarchar](10) NOT NULL,
	[Magv] [nvarchar](10) NOT NULL,
	[HK] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Gvcn.] PRIMARY KEY 
(
	[HK] ASC
)
GO
//taokhoangoai
ALTER TABLE [dbo].[Gvcn.]  WITH CHECK ADD  CONSTRAINT [FK_Gvcn._Giaovien] FOREIGN KEY([Magv])
REFERENCES [dbo].[Giaovien] ([Magv])
GO

ALTER TABLE [dbo].[Gvcn.] CHECK CONSTRAINT [FK_Gvcn._Giaovien]
GO

ALTER TABLE [dbo].[Gvcn.]  WITH CHECK ADD  CONSTRAINT [FK_Gvcn._lop1] FOREIGN KEY([Malop])
REFERENCES [dbo].[lop1] ([Malop])
GO

ALTER TABLE [dbo].[Gvcn.] CHECK CONSTRAINT [FK_Gvcn._lop1]
GO
//taobanglopsv
CREATE TABLE [dbo].[Lopsv](
	[Malop] [nvarchar](10) NOT NULL,
	[Masv] [nvarchar](50) NOT NULL,
	[Chucvu] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
//taokhoangoai
ALTER TABLE [dbo].[Lopsv]  WITH CHECK ADD  CONSTRAINT [FK_Lopsv_lop1] FOREIGN KEY([Malop])
REFERENCES [dbo].[lop1] ([Malop])
GO

ALTER TABLE [dbo].[Lopsv] CHECK CONSTRAINT [FK_Lopsv_lop1]
GO
//taobanggiaovien
CREATE TABLE [dbo].[Giaovien](
	[Magv] [nvarchar](10) NOT NULL,
	[Hoten] [nvarchar](50) NOT NULL,
	[Ngaysinh] [date] NOT NULL,
	[MaBM] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Giaovien] PRIMARY KEY 
([Magv] ASC)
GO
//taokhoangoai
ALTER TABLE [dbo].[Giaovien]  WITH CHECK ADD  CONSTRAINT [FK_Giaovien_Bomon] FOREIGN KEY([MaBM])
REFERENCES [dbo].[Bomon] ([MaBM])
GO

ALTER TABLE [dbo].[Giaovien] CHECK CONSTRAINT [FK_Giaovien_Bomon]
GO
//taobangbomon
CREATE TABLE [dbo].[Bomon](
	[MaBM] [nvarchar](10) NOT NULL,
	[TenBM] [nvarchar](20) NOT NULL,
	[Makhoa] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Bomon] PRIMARY KEY 
([MaBM] ASC)
GO
//taokhoangoai
ALTER TABLE [dbo].[Bomon]  WITH CHECK ADD  CONSTRAINT [FK_Bomon_Khoa] FOREIGN KEY([Makhoa])
REFERENCES [dbo].[Khoa] ([Makhoa])
GO

ALTER TABLE [dbo].[Bomon] CHECK CONSTRAINT [FK_Bomon_Khoa]
GO
//taobangkhoa
CREATE TABLE [dbo].[Khoa](
	[Makhoa] [nvarchar](10) NOT NULL,
	[Tenkhoa] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY 
([Makhoa] ASC)
GO
//taobangmonhoc
CREATE TABLE [dbo].[Monhoc](
	[Mamon] [nvarchar](10) NOT NULL,
	[Tenmon] [nvarchar](50) NOT NULL,
	[Stc] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Monhoc] PRIMARY KEY  
([Mamon] ASC)
GO

//taobanglophocphan
CREATE TABLE [dbo].[Lophp](
	[Malophp] [nvarchar](10) NOT NULL,
	[Tenlophp] [nvarchar](20) NOT NULL,
	[HK] [nchar](10) NOT NULL,
	[Mamon] [nvarchar](10) NOT NULL,
	[Magv] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Lophp] PRIMARY KEY 
([Malophp] ASC) 
GO
//taokhoangoai
ALTER TABLE [dbo].[Lophp]  WITH CHECK ADD  CONSTRAINT [FK_Lophp_Giaovien] FOREIGN KEY([Mamon])
REFERENCES [dbo].[Monhoc] ([Mamon])
GO

ALTER TABLE [dbo].[Lophp] CHECK CONSTRAINT [FK_Lophp_Giaovien]
GO

ALTER TABLE [dbo].[Lophp]  WITH CHECK ADD  CONSTRAINT [FK_Lophp_Monhoc] FOREIGN KEY([Mamon])
REFERENCES [dbo].[Monhoc] ([Mamon])
GO
ALTER TABLE [dbo].[Lophp] CHECK CONSTRAINT [FK_Lophp_Monhoc]

//taobangDKMH
CREATE TABLE [dbo].[DKMH](
	[Malophp] [nvarchar](10) NOT NULL,
	[Masv] [nvarchar](50) NOT NULL,
	[Diemtp] [nvarchar](10) NOT NULL,
	[Diemthi] [nvarchar](10) NOT NULL,
	[Phantramthi] [nvarchar](10) NOT NULL
) 
GO
//taokhoangoai
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_Lophp] FOREIGN KEY([Malophp])
REFERENCES [dbo].[Lophp] ([Malophp])
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_Lophp]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_Sinhvien] FOREIGN KEY([Masv])
REFERENCES [dbo].[Sinhvien] ([Masv])
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_Sinhvien]
GO


