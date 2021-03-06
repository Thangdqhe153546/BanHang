USE [QLBanHang1]
GO
/****** Object:  Table [dbo].[account]    Script Date: 22/03/2022 2:17:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[uID] [int] IDENTITY(2,1) NOT NULL,
	[user] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 22/03/2022 2:17:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NULL,
	[MaKH] [int] NULL,
	[NgayLapHD] [smalldatetime] NULL,
	[Tien] [int] NULL,
	[Thue] [real] NULL,
	[TongSoTien] [money] NULL,
 CONSTRAINT [PK__HoaDon__2725A6E052C87880] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 22/03/2022 2:17:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[MaHD] [int] NULL,
	[maSP] [int] NULL,
	[donGia] [int] NULL,
	[soLuong] [smallint] NULL,
	[GiamGia] [real] NULL,
	[ThanhTien] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 22/03/2022 2:17:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,3) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[phone] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK__KhachHan__2725CF1EF6C188D7] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 22/03/2022 2:17:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [nvarchar](20) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
	[MoTa] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 22/03/2022 2:17:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[phone] [nvarchar](50) NULL,
	[photo] [varchar](max) NULL,
 CONSTRAINT [PK__NhanVien__2725D70A3E19B07B] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 22/03/2022 2:17:52 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSP] [int] IDENTITY(29,1) NOT NULL,
	[tenSP] [nvarchar](100) NULL,
	[maLoaiSP] [nvarchar](20) NULL,
	[donViTinh] [nvarchar](20) NULL,
	[donGia] [int] NULL,
	[soLuong] [smallint] NULL,
	[img] [varchar](max) NULL,
	[Discontinued] [bit] NULL,
	[moTa] [nvarchar](200) NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK__SanPham__2725081C2F61198B] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'admin', N'123', 1, 1)
INSERT [dbo].[account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'seller', N'123', 1, 0)
INSERT [dbo].[account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'ngocAnh', N'123', 0, 0)
INSERT [dbo].[account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'abc', N'123', 0, 0)
INSERT [dbo].[account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'customer', N'123', 0, 0)
INSERT [dbo].[account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'seller2', N'123', 1, 0)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLapHD], [Tien], [Thue], [TongSoTien]) VALUES (1, 1, 1, CAST(N'2022-06-03T00:00:00' AS SmallDateTime), 100000, 0, 100000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLapHD], [Tien], [Thue], [TongSoTien]) VALUES (2, 1, 1, CAST(N'2022-03-17T00:00:00' AS SmallDateTime), 643444, 0, 643444.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [NgayLapHD], [Tien], [Thue], [TongSoTien]) VALUES (3, 1, 1, CAST(N'2022-03-17T00:00:00' AS SmallDateTime), 663444, 0, 663444.0000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [maSP], [donGia], [soLuong], [GiamGia], [ThanhTien]) VALUES (1, 1, 299000, 2, 0.95, 284050)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [phone], [Email]) VALUES (1, N'sa', N'Ha Noi', N'0384280301', N'thangdqhe153546@fpt.edu.vn')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [phone], [Email]) VALUES (2, N'Hai', N'Ha Noi', N'0134453244', N'vtvwin2103@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MoTa]) VALUES (N'1', N'Dresses', N'vay')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MoTa]) VALUES (N'2', N'T-Shirts', N'Ao phong')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MoTa]) VALUES (N'3', N'Jeans', N'Quan jean')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MoTa]) VALUES (N'4', N'Sleepwear', N'Do ngu')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MoTa]) VALUES (N'5', N'Sportwear', N'Do the thao')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [phone], [photo]) VALUES (1, N'Đỗ Quyết Thắng', N'28/03/2001', N'HN', N'0384280301', N'https://i1.sndcdn.com/artworks-j7JsAzycDsxELIXC-epO2sg-t500x500.jpg')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (1, N'Bộ ngủ nữ dài tay cổ vuông họa tiết trái tym siêu điệu SN14', N'4', N'Bo', 198000, 1, N'https://cf.shopee.vn/file/f0549b84cbe443a9f30384c1c1dbb479', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (3, N'Bộ ngủ dài tay tiểu thư cực xinh và cực đẹp SN07', N'4', N'Bo', 444444, 1, N'https://cf.shopee.vn/file/157c9b8c18b19e1162e10be149148d46_tn', 1, N'Rất đẹp', 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (4, N'Bộ đồ ngủ style Ulzzang phối ren tiểu thư siêu xinh SN27', N'4', N'Bo', 219000, 1, N'https://cf.shopee.vn/file/093ce6296bad2dd41c0b84ad6b8f20e9_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (5, N'Bộ đồ ngủ/ Pijama in hình đơn giản thanh lịch vải lụa cao cấp SN18', N'4', N'Bo', 199000, 1, N'https://cf.shopee.vn/file/6ec63cd59248d3e59b0eb509d8266c14_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (6, N'Bộ ngủ nữ kẻ caro bo chun vàng bánh bèo tiểu thư SN11', N'4', N'Bo', 239000, 1, N'https://cf.shopee.vn/file/86fbe3c0c466c43ff774804f633dde17_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (7, N'Bộ ngủ kẻ caro đỏ cao cấp SN08', N'4', N'Bo', 309000, 1, N'https://cf.shopee.vn/file/be45c6923b7b7beab030bfc131696536_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (8, N'Bộ ngủ nữ dài tay chấm bi cực ngọt ngào SN12', N'4', N'Bo', 239000, 1, N'https://cf.shopee.vn/file/06c673383f47d9e6c30bfc7cb8f365ae_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (9, N'Bộ đồ ngủ tiểu thư họa tiết trái tym cực xinh yêu SN25', N'4', N'Bo', 239000, 1, N'https://cf.shopee.vn/file/53ed98d09b71b687d14459dff758fe13_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (10, N'Bộ ngủ dài tay style thủy thủ cực xinh SN09', N'4', N'Bo', 312000, 1, N'https://cf.shopee.vn/file/2f2e14bfade2069425f23245f6383959_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (11, N'Bộ đồ ngủ dài tay ngủ họa tiết con thỏ cực xinh SN10 ', N'4', N'Bo', 175000, 1, N'https://cf.shopee.vn/file/5348cf682f43eedf8ec88bf051246b54_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (12, N'Bộ đồ ngủ tiểu thư style Ulzzang xinh xắn SN29', N'4', N'Bo', 210000, 1, N'https://cf.shopee.vn/file/e2f32f235f4f1d0641bf5c0590f64a7f_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (13, N'Bộ đồ ngủ bo chun tay chân style Ulzzang cực xinh SN99', N'4', N'Bo', 309000, 1, N'https://cf.shopee.vn/file/01c4ab7d01467a47dc9f869b3df53a36_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (14, N'Bộ đồ ngủ style Ulzzang phối ren tiểu thư siêu xinh SN98', N'4', N'Bo', 299000, 1, N'https://cf.shopee.vn/file/39e0b0c11e73de400edf1e67c8704ac8_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (15, N'Bộ đồ ngủ style Ulzzang phối ren tiểu thư siêu xinh SN97', N'4', N'Bo', 299000, 1, N'https://cf.shopee.vn/file/d99fe389f4c706d598ce7d3c0520c1e3_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (16, N'Bộ đồ ngủ style Ulzzang phối ren tiểu thư siêu xinh SN96', N'4', N'Bo', 299000, 1, N'https://cf.shopee.vn/file/c330cdf1b8d11a166a4224a58c40d1f5_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (17, N'Bộ đồ ngủ style Ulzzang phối ren tiểu thư siêu xinh SN95', N'4', N'Bo', 299000, 1, N'https://cf.shopee.vn/file/d2cd6cc7d94ff41466eafd210f8d1bf7_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (18, N'Bộ đồ ngủ style Ulzzang phối ren tiểu thư siêu xinh SN94', N'4', N'Bo', 299000, 1, N'https://cf.shopee.vn/file/c25d777634bbe3eba05917021f71a8f9_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (19, N'Bộ đồ ngủ style Ulzzang phối ren tiểu thư siêu xinh SN93', N'4', N'Bo', 299000, 1, N'https://cf.shopee.vn/file/917360b6db79779d96e1bb8a42ee611e_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (20, N'Bộ đồ ngủ style Ulzzang phối ren tiểu thư siêu xinh SN92', N'4', N'Bo', 299000, 1, N'https://cf.shopee.vn/file/6a64d426f1277f8e9cf67db027ddc08f_tn', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (21, N'Áo phông Marvel', N'2', N'Chiec', 199000, 1, N'https://cf.shopee.vn/file/41eca16ba7a1d84c41bb27e46b99eddc', 1, NULL, 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (22, N'Quần Thể Thao giữ nhiệt ', N'5', N'Chiec', 199000, 1, N'https://salt.tikicdn.com/cache/w1200/ts/product/10/00/5a/f1bc8d06b79a4fd2f2e158f11831e1de.jpg', 1, N'Khong co gi', 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (23, N'Quan dui', N'3', N'Chiec', 20000, 1, N'https://cdn.goodies.vn/uploads/2020/11/19/11/1/84d9b0ebb94ea7c0128cabebbed12628.png', 1, N'van khong co gi', 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (24, N'Váy Hoa Nhí', N'1', N'Chiec', 190000, 1, N'https://cf.shopee.vn/file/5546181f98c00566829efa1c42a4b9c3', 1, NULL, 3)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (25, N'Ao giu nhiet', N'5', N'chiec', 299000, 1, N'https://afamilycdn.com/2019/12/7/top-ao-giu-nhiet-8-15756983338891483553291.jpg', 1, NULL, 3)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (27, N'Ao cach nhiet', N'5', N'chiec', 199000, 1, N'http://hinlet.vn/wp-content/uploads/2018/12/ao-giu-nhiet-uniqlo-6.jpg', 1, N'asdf ', 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (28, N'Quần bò khá bảnh', N'3', N'chiec', 99999, 1, N'https://ellcci.com/wp-content/uploads/2019/03/6238-removebg-preview.png', 1, N'rất đẹp trai', 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (29, N'Áo phông khá bảnh đẹp trai', N'2', N'chiếc', 99000, 1, N'https://cf.shopee.vn/file/4d2ab082672aa12b87fda4bdf65482b3', 1, N'áo đẹp trai +999', 2)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (89, N'Áo tank top gym', N'5', N'Chi?c', 150000, 1, N'https://cf.shopee.vn/file/bba9c8f5198ec342272a3b794284680a', 1, N'', 7)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (90, N'Áo  gym', N'5', N'Chi?c', 150000, 1, N'https://static.dosi-in.com/images/detailed/46/LIKA11042018-%C4%903__no_text__bhmh-7m.jpg', 1, N'', 7)
INSERT [dbo].[SanPham] ([maSP], [tenSP], [maLoaiSP], [donViTinh], [donGia], [soLuong], [img], [Discontinued], [moTa], [sell_ID]) VALUES (91, N'Ao chay bo', N'5', N'chiếc', 99999, 1, N'https://cdn.under.vn/wp-content/uploads/2021/07/ao-phong-ha-noi-36-pho-phuong-den-1.jpg', 1, N'rất thoáng mát', 2)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__MaKH__29572725] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__MaKH__29572725]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__MaNV__286302EC] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__MaNV__286302EC]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonChiT__MaHD__300424B4] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK__HoaDonChiT__MaHD__300424B4]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonChiT__MaSP__30F848ED] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([maSP])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK__HoaDonChiT__MaSP__30F848ED]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaLoaiS__2E1BDC42] FOREIGN KEY([maLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaLoaiS__2E1BDC42]
GO
