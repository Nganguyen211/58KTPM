USE [QLSVDb]
GO
INSERT [dbo].[Sinhvien] ([Masv], [Tensv], [Ngaysinh]) VALUES (N'SV01', N'Lê Văn Cường', CAST(N'2003-09-23' AS Date))
INSERT [dbo].[Sinhvien] ([Masv], [Tensv], [Ngaysinh]) VALUES (N'SV02', N'Phạm Thị Dung', CAST(N'2003-12-25' AS Date))
INSERT [dbo].[Sinhvien] ([Masv], [Tensv], [Ngaysinh]) VALUES (N'SV03', N'Nguyễn Văn Hà', CAST(N'2004-05-15' AS Date))
INSERT [dbo].[Sinhvien] ([Masv], [Tensv], [Ngaysinh]) VALUES (N'SV04', N'Bùi Thị Lý', CAST(N'2004-07-07' AS Date))
INSERT [dbo].[Sinhvien] ([Masv], [Tensv], [Ngaysinh]) VALUES (N'SV05', N'Trần Văn Đạt', CAST(N'2003-11-11' AS Date))
GO
INSERT [dbo].[Monhoc] ([Mamon], [Tenmon], [Stc]) VALUES (N'MH01', N'CSDL', N'3         ')
INSERT [dbo].[Monhoc] ([Mamon], [Tenmon], [Stc]) VALUES (N'MH02', N'Kinh te vi mo', N'3         ')
INSERT [dbo].[Monhoc] ([Mamon], [Tenmon], [Stc]) VALUES (N'MH03', N'Toan cao cap', N'4         ')
INSERT [dbo].[Monhoc] ([Mamon], [Tenmon], [Stc]) VALUES (N'MH04', N'Tieng Anh 1', N'2         ')
INSERT [dbo].[Monhoc] ([Mamon], [Tenmon], [Stc]) VALUES (N'MH05', N'Sinh hoc dai cuong', N'3         ')
GO
INSERT [dbo].[Lophp] ([Malophp], [Tenlophp], [HK], [Mamon], [Magv]) VALUES (N'HP01', N'LHP_CSDL', N'HK1       ', N'MH01', N'GV01')
INSERT [dbo].[Lophp] ([Malophp], [Tenlophp], [HK], [Mamon], [Magv]) VALUES (N'HP02', N'LHP_KTVM', N'HK2       ', N'MH02', N'GV02')
INSERT [dbo].[Lophp] ([Malophp], [Tenlophp], [HK], [Mamon], [Magv]) VALUES (N'HP03', N'LHP_TOAN', N'HK3       ', N'MH03', N'GV03')
INSERT [dbo].[Lophp] ([Malophp], [Tenlophp], [HK], [Mamon], [Magv]) VALUES (N'HP04', N'LHP_TA1', N'HK4       ', N'MH04', N'GV04')
INSERT [dbo].[Lophp] ([Malophp], [Tenlophp], [HK], [Mamon], [Magv]) VALUES (N'HP05', N'LHP_SINH', N'HK5       ', N'MH05', N'GV05')
GO
INSERT [dbo].[DKMH] ([Malophp], [Masv], [Diemthi], [Phantramthi], [Id_dk]) VALUES (N'HP01', N'SV01', 7, CAST(0.600 AS Decimal(8, 3)), N'A01       ')
INSERT [dbo].[DKMH] ([Malophp], [Masv], [Diemthi], [Phantramthi], [Id_dk]) VALUES (N'HP01', N'SV02', 8, CAST(0.700 AS Decimal(8, 3)), N'B01       ')
INSERT [dbo].[DKMH] ([Malophp], [Masv], [Diemthi], [Phantramthi], [Id_dk]) VALUES (N'HP02', N'SV03', 7, CAST(0.600 AS Decimal(8, 3)), N'C01       ')
INSERT [dbo].[DKMH] ([Malophp], [Masv], [Diemthi], [Phantramthi], [Id_dk]) VALUES (N'HP03', N'SV04', 6, CAST(65.000 AS Decimal(8, 3)), N'D01       ')
GO
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'KH01', N'CNTT')
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'KH02', N'KinhTe')
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'KH03', N'SP')
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'KH04', N'NgoaiNgu')
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'KH05', N'YDuoc')
INSERT [dbo].[Khoa] ([Makhoa], [Tenkhoa]) VALUES (N'Makhoa', N'Tenkhoa')
GO
INSERT [dbo].[Bomon] ([MaBM], [TenBM], [Makhoa]) VALUES (N'BM01', N'HTTT', N'KH01')
INSERT [dbo].[Bomon] ([MaBM], [TenBM], [Makhoa]) VALUES (N'BM02', N'QTKD', N'KH02')
INSERT [dbo].[Bomon] ([MaBM], [TenBM], [Makhoa]) VALUES (N'BM03', N'Toan', N'KH03')
INSERT [dbo].[Bomon] ([MaBM], [TenBM], [Makhoa]) VALUES (N'BM04', N'Anh', N'KH04')
INSERT [dbo].[Bomon] ([MaBM], [TenBM], [Makhoa]) VALUES (N'BM05', N'Sinh', N'KH05')
INSERT [dbo].[Bomon] ([MaBM], [TenBM], [Makhoa]) VALUES (N'MaBM', N'TenBM', N'Makhoa')
GO
INSERT [dbo].[Giaovien] ([Magv], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV01', N'Nguyễn Vân Anh', CAST(N'1990-10-22' AS Date), N'BM01')
INSERT [dbo].[Giaovien] ([Magv], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV02', N'Trần Văn Bình', CAST(N'1993-02-20' AS Date), N'BM02')
INSERT [dbo].[Giaovien] ([Magv], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV03', N'Lê Văn Linh', CAST(N'1975-03-10' AS Date), N'BM03')
INSERT [dbo].[Giaovien] ([Magv], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV04', N'Phạm Văn Đức', CAST(N'1999-09-12' AS Date), N'BM04')
INSERT [dbo].[Giaovien] ([Magv], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV05', N'Đỗ Thị Giang', CAST(N'2004-05-02' AS Date), N'BM05')
GO
INSERT [dbo].[lop1] ([Malop], [Tenlop]) VALUES (N'L01', N'CNTT01')
INSERT [dbo].[lop1] ([Malop], [Tenlop]) VALUES (N'L02', N'QTKD01')
INSERT [dbo].[lop1] ([Malop], [Tenlop]) VALUES (N'L03', N'TOAN01')
INSERT [dbo].[lop1] ([Malop], [Tenlop]) VALUES (N'L04', N'ANH01')
INSERT [dbo].[lop1] ([Malop], [Tenlop]) VALUES (N'L05', N'SINH01')
INSERT [dbo].[lop1] ([Malop], [Tenlop]) VALUES (N'Malop', N'Tenlop')
GO
INSERT [dbo].[Gvcn.] ([Malop], [Magv], [HK]) VALUES (N'L01', N'GV01', N'HK1')
INSERT [dbo].[Gvcn.] ([Malop], [Magv], [HK]) VALUES (N'L02', N'GV02', N'HK2')
INSERT [dbo].[Gvcn.] ([Malop], [Magv], [HK]) VALUES (N'L03', N'GV03', N'HK3')
INSERT [dbo].[Gvcn.] ([Malop], [Magv], [HK]) VALUES (N'L04', N'GV04', N'HK4')
INSERT [dbo].[Gvcn.] ([Malop], [Magv], [HK]) VALUES (N'L05', N'GV05', N'HK5')
GO
INSERT [dbo].[Lopsv] ([Malop], [Masv], [Chucvu]) VALUES (N'L02', N'SV03', N'BT')
INSERT [dbo].[Lopsv] ([Malop], [Masv], [Chucvu]) VALUES (N'L01', N'SV01', N'Lop truong')
INSERT [dbo].[Lopsv] ([Malop], [Masv], [Chucvu]) VALUES (N'L01', N'SV02', N'Pho lop')
INSERT [dbo].[Lopsv] ([Malop], [Masv], [Chucvu]) VALUES (N'L03', N'SV04', N'BT')
INSERT [dbo].[Lopsv] ([Malop], [Masv], [Chucvu]) VALUES (N'L05', N'SV05', N'Pho lop')
GO
INSERT [dbo].[Diem] ([id], [Id_dk], [diem]) VALUES (N'01', N'A01       ', 7)
INSERT [dbo].[Diem] ([id], [Id_dk], [diem]) VALUES (N'02', N'B01       ', 8)
INSERT [dbo].[Diem] ([id], [Id_dk], [diem]) VALUES (N'03', N'C01       ', 7)
INSERT [dbo].[Diem] ([id], [Id_dk], [diem]) VALUES (N'04', N'D01       ', 6)
GO
