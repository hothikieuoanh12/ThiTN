

/****** Object:  Database [QL_ThiTracNghiem]    Script Date: 12/12/2023 7:27:36 AM ******/
CREATE DATABASE [QL_ThiTracNghiem]
go
USE [QL_ThiTracNghiem]
GO
/****** Object:  Table [dbo].[CAUHOI]    Script Date: 12/12/2023 7:27:36 AM ******/


CREATE TABLE [dbo].[CAUHOI](
	[MACAUHOI] [int] IDENTITY(1,1) NOT NULL,
	[CAUHOI] [nvarchar](max) NOT NULL,
	[A] [nvarchar](255) NULL,
	[B] [nvarchar](255) NULL,
	[C] [nvarchar](255) NULL,
	[D] [nvarchar](255) NULL,
	[DAPAN] [char](1) NULL,
	[MUCDO] [nvarchar](20) NULL,
	[MAMH] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MACAUHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DE]    Script Date: 12/12/2023 7:27:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DE](
	[MADE] [varchar](20) NOT NULL,
	[TENDETHI] [nvarchar](255) NULL,
	[THOIGIAN] [int] NULL,
	[THOIGIANBATDAU] [datetime] NULL,
	[SOCAUDE] [int] NULL,
	[SOCAUTB] [int] NULL,
	[SOCAUKHO] [int] NULL,
	[MAMH] [char](10) NULL,
	[MAGV] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MADE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 12/12/2023 7:27:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGV] [char](10) NOT NULL,
	[TENGV] [nvarchar](255) NULL,
	[NGAYSINH] [date] NULL,
	[MATKHAU] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KETQUA]    Script Date: 12/12/2023 7:27:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KETQUA](
	[MASV] [char](10) NOT NULL,
	[MAMH] [char](10) NOT NULL,
	[MADE] [varchar](20) NOT NULL,
	[DIEM] [float] NULL,
 CONSTRAINT [PK_KETQUA] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC,
	[MAMH] ASC,
	[MADE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOPHOCPHAN]    Script Date: 12/12/2023 7:27:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOPHOCPHAN](
	[MALOP] [char](10) NOT NULL,
	[MAMH] [char](10) NOT NULL,
	[MASV] [char](10) NOT NULL,
	[MADE] [varchar](20) NULL,
 CONSTRAINT [PK_LOPHOCPHAN] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC,
	[MAMH] ASC,
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 12/12/2023 7:27:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMH] [char](10) NOT NULL,
	[TENMH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 12/12/2023 7:27:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [char](10) NOT NULL,
	[TENSV] [nvarchar](255) NULL,
	[NGAYSINH] [date] NULL,
	[MATKHAU] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CAUHOI] ON 

INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (3, N'2 nhân 5 bằng bao nhiêu?', N'7', N'9', N'10', N'11', N'C', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (4, N'Bao nhiêu bánh mì trong 1 cái bánh mì?', N'2', N'1', N'3', N'4', N'B', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (5, N'Tìm giá trị của x trong phương trình 3x - 6 = 9.', N'3', N'4', N'5', N'6', N'A', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (6, N'Một hình vuông có bao nhiêu cạnh?', N'2', N'3', N'4', N'5', N'D', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (7, N'10 cộng với 20 bằng bao nhiêu?', N'25', N'30', N'15', N'35', N'B', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (8, N'Một tam giác có bao nhiêu cạnh?', N'2', N'3', N'4', N'5', N'B', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (9, N'Chó và mèo là gì?', N'Con vật', N'Động vật', N'Người', N'Thực phẩm', N'B', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (10, N'Bao nhiêu ngày trong một tuần?', N'5', N'6', N'7', N'8', N'C', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (11, N'Câu hỏi Toán trung bình số 1: Tích của 6 và 7 là bao nhiêu?', N'40', N'35', N'42', N'45', N'C', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (12, N'Bao nhiêu phép tính cộng có thể được tạo ra bằng cách sử dụng số 1 đến 9 một lần?', N'36', N'72', N'45', N'18', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (13, N'7 trừ đi 3 bằng bao nhiêu?', N'2', N'3', N'4', N'5', N'B', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (14, N'Có bao nhiêu phép tính trừ có thể được tạo ra bằng cách sử dụng số 1 đến 9 một lần?', N'36', N'72', N'45', N'18', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (15, N'Tìm giá trị của x trong phương trình 2x + 3 = 9.', N'2', N'3', N'4', N'5', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (16, N'Câu hỏi Toán khó số 1: Tìm diện tích hình tròn với bán kính 5.', N'15π', N'20π', N'10π', N'25π', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (17, N'Tìm giá trị của x trong phương trình 4x - 6 = 18.', N'6', N'5', N'7', N'8', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (18, N'Một hình trụ có bao nhiêu mặt?', N'1', N'2', N'3', N'4', N'B', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (19, N'Tìm chu vi hình vuông có cạnh 6 đơn vị.', N'18', N'20', N'22', N'24', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (20, N'Giải phương trình 2x + 5 = 15 để tìm giá trị của x.', N'5', N'7', N'6', N'8', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (21, N'Tính 4 + 5?', N'8', N'9', N'10', N'11', N'B', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (22, N'Tích của 2 và 3 là bao nhiêu?', N'4', N'5', N'6', N'7', N'C', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (23, N'Bao nhiêu ngón tay ở một bàn tay?', N'3', N'4', N'5', N'10', N'D', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (24, N'Tìm diện tích hình vuông có cạnh 6.', N'12', N'18', N'24', N'36', N'D', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (25, N'Tìm giá trị của x trong phương trình 3x + 2 = 11.', N'1', N'2', N'3', N'4', N'A', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (26, N'Có bao nhiêu phép tính trừ có thể được tạo ra bằng cách sử dụng số 1 đến 9 một lần?', N'36', N'72', N'45', N'18', N'A', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (27, N'Chọn số lẻ từ 1 đến 10.', N'2', N'4', N'6', N'5', N'D', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (28, N'Bao nhiêu chữ cái trong từ "BANANA"?', N'3', N'4', N'5', N'6', N'B', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (29, N'Tính tổng của 3 + 4?', N'6', N'7', N'8', N'9', N'C', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (30, N'Bình thường, một tuần có bao nhiêu ngày?', N'5', N'6', N'7', N'8', N'C', N'Dễ', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (31, N'Giải phương trình 2x - 4 = 12 để tìm giá trị của x.', N'8', N'9', N'10', N'11', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (32, N'Có bao nhiêu phép tính cộng có thể được tạo ra bằng cách sử dụng số 1 đến 9 một lần?', N'36', N'72', N'45', N'18', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (33, N'Tích của 5 và 6 là bao nhiêu?', N'24', N'30', N'35', N'40', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (34, N'3 chia 6 bằng bao nhiêu?', N'0.5', N'1', N'2', N'3', N'B', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (35, N'Giải phương trình 4x - 6 = 18 để tìm giá trị của x.', N'6', N'5', N'7', N'8', N'C', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (36, N'Tìm giá trị của x trong phương trình 3x - 5 = 10.', N'5', N'7', N'6', N'8', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (37, N'Bao nhiêu ngày trong một tuần?', N'5', N'6', N'7', N'8', N'C', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (38, N'Chọn số chẵn từ 1 đến 10.', N'1', N'2', N'3', N'4', N'B', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (39, N'Giải phương trình 2x + 3 = 9 để tìm giá trị của x.', N'3', N'4', N'5', N'6', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (40, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (41, N'Tìm chu vi hình tròn với bán kính 7.', N'22π', N'14π', N'44π', N'11π', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (42, N'Tích của 7 và 8 là bao nhiêu?', N'56', N'63', N'64', N'72', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (43, N'Bao nhiêu nguyên tố từ 1 đến 10?', N'2', N'3', N'4', N'5', N'B', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (44, N'Giải phương trình 5x - 3 = 22 để tìm giá trị của x.', N'5', N'6', N'7', N'8', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (45, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (46, N'Tìm diện tích hình tròn với bán kính 8.', N'64π', N'48π', N'32π', N'16π', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (47, N'Tích của 6 và 9 là bao nhiêu?', N'42', N'54', N'48', N'72', N'B', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (48, N'Tìm giá trị của x trong phương trình 4x - 7 = 29.', N'5', N'6', N'7', N'8', N'B', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (49, N'Giải phương trình 3x + 2 = 16 để tìm giá trị của x.', N'4', N'5', N'6', N'7', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (50, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (51, N'Tìm chu vi hình tròn với bán kính 10.', N'20π', N'30π', N'40π', N'50π', N'B', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (52, N'Tích của 8 và 7 là bao nhiêu?', N'54', N'56', N'64', N'72', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (53, N'Tìm giá trị của x trong phương trình 2x + 5 = 21.', N'6', N'7', N'8', N'9', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (54, N'Giải phương trình 5x - 2 = 33 để tìm giá trị của x.', N'7', N'8', N'9', N'10', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (55, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (56, N'Tính tổng của 6 + 8?', N'14', N'15', N'16', N'17', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (57, N'Tích của 9 và 9 là bao nhiêu?', N'81', N'82', N'83', N'84', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (58, N'Bao nhiêu ngày trong một tuần?', N'5', N'6', N'7', N'8', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (59, N'Chọn số lẻ từ 1 đến 10.', N'2', N'4', N'6', N'5', N'D', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (60, N'Giải phương trình 4x - 6 = 18 để tìm giá trị của x.', N'6', N'5', N'7', N'8', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (61, N'Tìm giá trị của x trong phương trình 3x - 5 = 10.', N'5', N'7', N'6', N'8', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (62, N'Bao nhiêu ngày trong một tuần?', N'5', N'6', N'7', N'8', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (63, N'Tìm chu vi hình tròn với bán kính 12.', N'24π', N'36π', N'48π', N'72π', N'B', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (64, N'Tích của 10 và 11 là bao nhiêu?', N'100', N'110', N'120', N'130', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (65, N'Tìm giá trị của x trong phương trình 2x + 5 = 21.', N'8', N'7', N'9', N'10', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (66, N'Giải phương trình 5x - 2 = 33 để tìm giá trị của x.', N'7', N'8', N'9', N'10', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (67, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (68, N'Tính tổng của 6 + 8?', N'14', N'15', N'16', N'17', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (69, N'Tích của 9 và 9 là bao nhiêu?', N'81', N'82', N'83', N'84', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (70, N'Bao nhiêu nguyên tố từ 1 đến 10?', N'2', N'3', N'4', N'5', N'B', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (71, N'Giải phương trình 5x - 3 = 22 để tìm giá trị của x.', N'5', N'6', N'7', N'8', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (72, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (73, N'Tính tổng của 6 + 8?', N'14', N'15', N'16', N'17', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (74, N'Tích của 9 và 9 là bao nhiêu?', N'81', N'82', N'83', N'84', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (75, N'Bao nhiêu nguyên tố từ 1 đến 10?', N'2', N'3', N'4', N'5', N'B', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (76, N'Giải phương trình 5x - 3 = 22 để tìm giá trị của x.', N'5', N'6', N'7', N'8', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (77, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (78, N'Tính tổng của 6 + 8?', N'14', N'15', N'16', N'17', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (79, N'Tích của 9 và 9 là bao nhiêu?', N'81', N'82', N'83', N'84', N'A', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (80, N'Bao nhiêu nguyên tố từ 1 đến 10?', N'2', N'3', N'4', N'5', N'B', N'Khó', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (81, N'Tìch của 7 và 9 là bao nhiêu?', N'54', N'63', N'72', N'81', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (82, N'Giải phương trình 4x - 2 = 14 để tìm giá trị của x.', N'4', N'5', N'6', N'7', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (83, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (84, N'Tính tổng của 7 + 9?', N'14', N'15', N'16', N'17', N'D', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (85, N'Tích của 10 và 10 là bao nhiêu?', N'100', N'110', N'120', N'130', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (86, N'Bao nhiêu nguyên tố từ 1 đến 10?', N'2', N'3', N'4', N'5', N'B', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (87, N'Giải phương trình 5x - 3 = 22 để tìm giá trị của x.', N'5', N'6', N'7', N'8', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (88, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (89, N'Tính tổng của 7 + 9?', N'14', N'15', N'16', N'17', N'D', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (90, N'Tích của 10 và 10 là bao nhiêu?', N'100', N'110', N'120', N'130', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (91, N'Bao nhiêu nguyên tố từ 1 đến 10?', N'2', N'3', N'4', N'5', N'B', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (92, N'Giải phương trình 5x - 3 = 22 để tìm giá trị của x.', N'5', N'6', N'7', N'8', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (93, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (94, N'Tính tổng của 7 + 9?', N'14', N'15', N'16', N'17', N'D', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (95, N'Tích của 10 và 10 là bao nhiêu?', N'100', N'110', N'120', N'130', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (96, N'Bao nhiêu nguyên tố từ 1 đến 10?', N'2', N'3', N'4', N'5', N'B', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (97, N'Giải phương trình 5x - 3 = 22 để tìm giá trị của x.', N'5', N'6', N'7', N'8', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (98, N'Bao nhiêu giây trong một phút?', N'30', N'45', N'60', N'90', N'C', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (99, N'Tính tổng của 7 + 9?', N'14', N'15', N'16', N'17', N'D', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (100, N'Tích của 10 và 10 là bao nhiêu?', N'100', N'110', N'120', N'130', N'A', N'Trung bình', N'TOAN      ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (101, N'What is the opposite of "happy"?', N'sad', N'angry', N'excited', N'tired', N'A', N'Dễ', N'TIENGANH  ')
GO
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (102, N'Choose the correct spelling: "neccessary" or "necessary"?', N'neccessary', N'necessary', N'necesary', N'nessesary', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (103, N'Which sentence is in the past tense: "She sings" or "She sang"?', N'She sings', N'She sang', N'Both are in the past tense', N'Neither are in the past tense', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (104, N'What is the plural of "child"?', N'childs', N'children', N'childes', N'childen', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (105, N'Which word is a synonym for "happy"?', N'sad', N'joyful', N'angry', N'sleepy', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (106, N'Which of these words is a pronoun: "book" or "he"?', N'book', N'he', N'Both are pronouns', N'Neither is a pronoun', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (107, N'What is the past tense of "sing"?', N'sings', N'sang', N'sung', N'singe', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (108, N'Choose the correct form of the verb: "They ____ to the park yesterday."', N'go', N'goes', N'went', N'gone', N'C', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (109, N'Which of these words is a synonym for "big"?', N'small', N'tiny', N'large', N'little', N'C', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (110, N'What is the opposite of "win"?', N'lose', N'earn', N'compete', N'victory', N'A', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (111, N'Which sentence is correct: "She is read a book" or "She is reading a book"?', N'She is read a book', N'She is reading a book', N'Both are correct', N'Neither is correct', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (112, N'What is the plural of "mouse"?', N'mouses', N'mice', N'mouse', N'mousen', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (113, N'Which word is a synonym for "beautiful"?', N'ugly', N'pretty', N'sad', N'funny', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (114, N'What is the past tense of "take"?', N'takes', N'took', N'taken', N'tookes', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (115, N'Choose the correct form of the verb: "She _____ to the store every day."', N'go', N'goes', N'went', N'gone', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (116, N'Which of these words is a synonym for "fast"?', N'slow', N'quick', N'long', N'short', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (117, N'What is the opposite of "forget"?', N'remember', N'erase', N'remind', N'ignore', N'A', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (118, N'Which sentence is correct: "He enjoy soccer" or "He enjoys soccer"?', N'He enjoy soccer', N'He enjoys soccer', N'Both are correct', N'Neither is correct', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (119, N'What is the plural of "child"?', N'childs', N'children', N'childes', N'childen', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (120, N'Which word is a synonym for "happy"?', N'sad', N'joyful', N'angry', N'sleepy', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (121, N'What is the past tense of "eat"?', N'eats', N'ate', N'eat', N'eated', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (122, N'Choose the correct form of the verb: "They _____ to the movies last night."', N'go', N'goes', N'went', N'gone', N'C', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (123, N'Which of these words is a synonym for "hard"?', N'easy', N'difficult', N'gentle', N'soft', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (124, N'What is the opposite of "arrive"?', N'depart', N'leave', N'enter', N'stay', N'A', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (125, N'Which sentence is correct: "She enjoy playing music" or "She enjoys playing music"?', N'She enjoy playing music', N'She enjoys playing music', N'Both are correct', N'Neither is correct', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (126, N'What is the plural of "tooth"?', N'tooths', N'teeth', N'tothes', N'teethes', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (127, N'Which word is a synonym for "angry"?', N'sad', N'mad', N'happy', N'upset', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (128, N'What is the past tense of "run"?', N'runs', N'ran', N'run', N'running', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (129, N'Choose the correct form of the verb: "They _____ to the beach last summer."', N'go', N'goes', N'went', N'gone', N'C', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (130, N'Which of these words is a synonym for "happy"?', N'sad', N'joyful', N'angry', N'sleepy', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (131, N'What is the past tense of "drink"?', N'drinks', N'drank', N'drink', N'drunk', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (132, N'Choose the correct form of the verb: "She _____ a cake for her birthday."', N'buy', N'buys', N'bought', N'buying', N'C', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (133, N'Which of these words is a synonym for "friendly"?', N'hostile', N'kind', N'cruel', N'angry', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (134, N'What is the opposite of "close"?', N'open', N'shut', N'near', N'far', N'A', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (135, N'Which sentence is correct: "They are went to the beach" or "They went to the beach"?', N'They are went to the beach', N'They went to the beach', N'Both are correct', N'Neither is correct', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (136, N'What is the plural of "leaf"?', N'leafs', N'leaves', N'leafes', N'leafen', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (137, N'Which word is a synonym for "excited"?', N'bored', N'enthusiastic', N'scared', N'nervous', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (138, N'What is the past tense of "swim"?', N'swims', N'swam', N'swum', N'swimming', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (139, N'Choose the correct form of the verb: "He _____ his homework yesterday."', N'finish', N'finishes', N'finished', N'finishing', N'C', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (140, N'Which of these words is a synonym for "clever"?', N'stupid', N'intelligent', N'foolish', N'dumb', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (141, N'What is the opposite of "find"?', N'lose', N'seek', N'obtain', N'discover', N'A', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (142, N'Which sentence is correct: "She do her homework" or "She does her homework"?', N'She do her homework', N'She does her homework', N'Both are correct', N'Neither is correct', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (143, N'What is the plural of "wolf"?', N'wolfs', N'wolves', N'wolven', N'wolfer', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (144, N'Which word is a synonym for "honest"?', N'dishonest', N'truthful', N'lying', N'cheating', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (145, N'What is the past tense of "sing"?', N'sings', N'sang', N'sung', N'singe', N'B', N'Trung bình', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (146, N'What is the color of the sky on a clear day?', N'Green', N'Blue', N'Yellow', N'Red', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (147, N'How many days are there in a week?', N'5', N'6', N'7', N'8', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (148, N'What do you use to write with?', N'Spoon', N'Fork', N'Knife', N'Pen', N'D', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (149, N'Which is the smallest planet in our solar system?', N'Earth', N'Jupiter', N'Mercury', N'Venus', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (150, N'What comes after the number 9?', N'8', N'10', N'11', N'12', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (151, N'Which animal is known as "the king of the jungle"?', N'Elephant', N'Tiger', N'Lion', N'Giraffe', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (152, N'What do you call the lights in the night sky that twinkle?', N'Stars', N'Planets', N'Satellites', N'Moon', N'A', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (153, N'Which season comes after winter?', N'Spring', N'Summer', N'Fall', N'Winter again', N'A', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (154, N'What is the opposite of "empty"?', N'Full', N'Half', N'Almost', N'None', N'A', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (155, N'What do you call a baby dog?', N'Puppy', N'Kitten', N'Foal', N'Calf', N'A', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (156, N'How many continents are there in the world?', N'2', N'5', N'7', N'9', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (157, N'What is the largest planet in our solar system?', N'Earth', N'Jupiter', N'Mercury', N'Venus', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (158, N'What do you use to tell the time?', N'Phone', N'TV', N'Clock', N'Computer', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (159, N'What is the largest mammal in the world?', N'Dolphin', N'Blue Whale', N'Shark', N'Seal', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (160, N'How many days are there in a year?', N'30', N'365', N'500', N'1000', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (161, N'What is the opposite of "fast"?', N'slow', N'quick', N'long', N'short', N'A', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (162, N'Which animal can fly and is known for carrying letters?', N'Dolphin', N'Eagle', N'Snake', N'Rabbit', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (163, N'What do you call a place where books are kept for borrowing?', N'Beach', N'Library', N'Park', N'Store', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (164, N'Which is the warmest season of the year?', N'Spring', N'Summer', N'Fall', N'Winter', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (165, N'What do you call a place where animals are kept for visitors to see?', N'Cinema', N'School', N'Zoo', N'Stadium', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (166, N'What is the smallest planet in our solar system?', N'Earth', N'Jupiter', N'Mercury', N'Venus', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (167, N'How many fingers do most people have on one hand?', N'2', N'4', N'5', N'10', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (168, N'What is the opposite of "hot"?', N'Cold', N'Warm', N'Cool', N'Icy', N'A', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (169, N'What do you call a person who flies an airplane?', N'Captain', N'Driver', N'Cook', N'Teacher', N'A', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (170, N'Which is the heaviest metal?', N'Gold', N'Iron', N'Copper', N'Silver', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (171, N'What do you call the place where you can see a movie?', N'Library', N'Stadium', N'Cinema', N'Zoo', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (172, N'What is the smallest prime number?', N'1', N'2', N'3', N'4', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (173, N'What is the largest mammal in the world?', N'Dolphin', N'Blue Whale', N'Shark', N'Seal', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (174, N'What is the opposite of "slow"?', N'Quick', N'Fast', N'Steady', N'Lively', N'B', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (175, N'What do you call the line in the middle of a circle?', N'Side', N'Edge', N'Center', N'Corner', N'C', N'Dễ', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (176, N'What is the chemical symbol for gold?', N'Go', N'Gl', N'Gd', N'Au', N'D', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (177, N'What is the capital of Australia?', N'Sydney', N'Canberra', N'Melbourne', N'Brisbane', N'B', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (178, N'Who is the author of "Romeo and Juliet"?', N'George Orwell', N'Charles Dickens', N'William Shakespeare', N'Jane Austen', N'C', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (179, N'Which gas do plants absorb from the atmosphere?', N'Oxygen', N'Carbon Dioxide', N'Hydrogen', N'Nitrogen', N'B', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (180, N'Who was the first person to walk on the moon?', N'Yuri Gagarin', N'Neil Armstrong', N'John Glenn', N'Buzz Aldrin', N'B', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (181, N'What is the capital of Canada?', N'Toronto', N'Montreal', N'Vancouver', N'Ottawa', N'D', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (182, N'Which country is known as the "Land of the Rising Sun"?', N'China', N'India', N'Japan', N'Korea', N'C', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (183, N'What is the world''s largest ocean?', N'Atlantic Ocean', N'Indian Ocean', N'Arctic Ocean', N'Pacific Ocean', N'D', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (184, N'Which planet is known as the "Red Planet"?', N'Earth', N'Jupiter', N'Mars', N'Venus', N'C', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (185, N'Who wrote "The Theory of Relativity"?', N'Isaac Newton', N'Galileo Galilei', N'Albert Einstein', N'Stephen Hawking', N'C', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (186, N'What is the largest bird in the world?', N'Pigeon', N'Eagle', N'Ostrich', N'Falcon', N'C', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (187, N'What is the deepest point in the world''s oceans?', N'Mariana Trench', N'Puerto Rico Trench', N'Sunda Trench', N'Hawaiian Trench', N'A', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (188, N'Who painted the "Mona Lisa"?', N'Pablo Picasso', N'Vincent van Gogh', N'Leonardo da Vinci', N'Michelangelo', N'C', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (189, N'Which gas do humans need to breathe?', N'Oxygen', N'Carbon Dioxide', N'Hydrogen', N'Nitrogen', N'A', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (190, N'What is the currency of Japan?', N'Yen', N'Won', N'Dollar', N'Euro', N'A', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (191, N'Who is the author of "The Great Gatsby"?', N'F. Scott Fitzgerald', N'Ernest Hemingway', N'William Faulkner', N'John Steinbeck', N'A', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (192, N'What is the boiling point of water in Fahrenheit?', N'100°F', N'212°F', N'273°F', N'0°F', N'B', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (193, N'What is the capital of Brazil?', N'Buenos Aires', N'Sao Paulo', N'Rio de Janeiro', N'Brasília', N'D', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (194, N'What is the chemical symbol for silver?', N'Ag', N'Si', N'Au', N'Hg', N'A', N'Khó', N'TIENGANH  ')
INSERT [dbo].[CAUHOI] ([MACAUHOI], [CAUHOI], [A], [B], [C], [D], [DAPAN], [MUCDO], [MAMH]) VALUES (195, N'What is the largest desert in the world?', N'Gobi Desert', N'Atacama Desert', N'Sahara Desert', N'Arabian Desert', N'C', N'Khó', N'TIENGANH  ')
SET IDENTITY_INSERT [dbo].[CAUHOI] OFF
GO
INSERT [dbo].[DE] ([MADE], [TENDETHI], [THOIGIAN], [THOIGIANBATDAU], [SOCAUDE], [SOCAUTB], [SOCAUKHO], [MAMH], [MAGV]) VALUES (N'DTTIENGANH1212232', N'AV2', 5, CAST(N'2023-12-12T07:00:00.000' AS DateTime), 3, 3, 3, N'TIENGANH  ', N'GV001     ')
GO
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [NGAYSINH], [MATKHAU]) VALUES (N'GV001     ', N'Giao vien A', CAST(N'1989-01-01' AS Date), N'1         ')
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [NGAYSINH], [MATKHAU]) VALUES (N'GV002     ', N'Giao Vien B', CAST(N'1972-01-01' AS Date), N'1         ')
GO
INSERT [dbo].[KETQUA] ([MASV], [MAMH], [MADE], [DIEM]) VALUES (N'SV001     ', N'TIENGANH  ', N'DTTIENGANH1212232', 5.555556)
GO
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'AV001     ', N'TIENGANH  ', N'SV001     ', N'DTTIENGANH1212232')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'AV001     ', N'TIENGANH  ', N'SV002     ', N'DTTIENGANH1212232')
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'AV002     ', N'TIENGANH  ', N'SV001     ', NULL)
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'AV003     ', N'TIENGANH  ', N'SV001     ', NULL)
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'AV003     ', N'TIENGANH  ', N'SV003     ', NULL)
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'AV003     ', N'TIENGANH  ', N'SV004     ', NULL)
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'TOAN001   ', N'TOAN      ', N'SV001     ', NULL)
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'TOAN001   ', N'TOAN      ', N'SV002     ', NULL)
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'TOAN002   ', N'TOAN      ', N'SV001     ', NULL)
INSERT [dbo].[LOPHOCPHAN] ([MALOP], [MAMH], [MASV], [MADE]) VALUES (N'TOAN003   ', N'TOAN      ', N'SV001     ', NULL)
GO
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'TIENGANH  ', N'Tiếng Anh')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH]) VALUES (N'TOAN      ', N'TOÁN')
GO
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [NGAYSINH], [MATKHAU]) VALUES (N'SV001     ', N'Nguyễn Văn A', CAST(N'2003-01-01' AS Date), N'1         ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [NGAYSINH], [MATKHAU]) VALUES (N'SV002     ', N'Trần Thị B', CAST(N'2004-03-09' AS Date), N'1         ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [NGAYSINH], [MATKHAU]) VALUES (N'SV003     ', N'Nguyễn Văn A', CAST(N'2003-01-01' AS Date), N'1         ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [NGAYSINH], [MATKHAU]) VALUES (N'SV004     ', N'Trần Thị C', CAST(N'2004-09-03' AS Date), N'1         ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [NGAYSINH], [MATKHAU]) VALUES (N'SV005     ', N'Nguyễn Văn D', CAST(N'2003-01-01' AS Date), N'1         ')
INSERT [dbo].[SINHVIEN] ([MASV], [TENSV], [NGAYSINH], [MATKHAU]) VALUES (N'SV006     ', N'Trần Thị E', CAST(N'2004-09-03' AS Date), N'1         ')
GO
ALTER TABLE [dbo].[CAUHOI]  WITH CHECK ADD FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[DE]  WITH CHECK ADD  CONSTRAINT [FK_DETHI_GV] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[DE] CHECK CONSTRAINT [FK_DETHI_GV]
GO
ALTER TABLE [dbo].[DE]  WITH CHECK ADD  CONSTRAINT [FK_DETHI_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[DE] CHECK CONSTRAINT [FK_DETHI_MONHOC]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_KETQUA_DETHI] FOREIGN KEY([MADE])
REFERENCES [dbo].[DE] ([MADE])
GO
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK_KETQUA_DETHI]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_KETQUA_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK_KETQUA_MONHOC]
GO
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_KETQUA_SINHVIEN] FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
GO
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK_KETQUA_SINHVIEN]
GO
ALTER TABLE [dbo].[LOPHOCPHAN]  WITH CHECK ADD  CONSTRAINT [FK_LOPHOCPHAN_DE] FOREIGN KEY([MADE])
REFERENCES [dbo].[DE] ([MADE])
GO
ALTER TABLE [dbo].[LOPHOCPHAN] CHECK CONSTRAINT [FK_LOPHOCPHAN_DE]
GO
ALTER TABLE [dbo].[LOPHOCPHAN]  WITH CHECK ADD  CONSTRAINT [FK_LOPHOCPHAN_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[LOPHOCPHAN] CHECK CONSTRAINT [FK_LOPHOCPHAN_MONHOC]
GO
ALTER TABLE [dbo].[LOPHOCPHAN]  WITH CHECK ADD  CONSTRAINT [FK_LOPHOCPHAN_SINHVIEN] FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
GO
ALTER TABLE [dbo].[LOPHOCPHAN] CHECK CONSTRAINT [FK_LOPHOCPHAN_SINHVIEN]
GO
USE [master]
GO
ALTER DATABASE [QL_ThiTracNghiem] SET  READ_WRITE 
GO
