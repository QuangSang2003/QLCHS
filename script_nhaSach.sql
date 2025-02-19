CREATE DATABASE QL_NHASACH;
USE [QL_NHASACH]
GO
/****** Object:  Table [dbo].[CT_HoaDon]    Script Date: 12/31/2022 12:39:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HoaDon](
	[SoHD] [nvarchar](50) NOT NULL,
	[MaSach] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_CT_HoaDon] PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 12/31/2022 12:39:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/31/2022 12:39:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[SoHD] [nvarchar](50) NOT NULL,
	[NgayLapHD] [date] NULL,
	[Tong] [int] NULL,
	[MaNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/31/2022 12:39:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/31/2022 12:39:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 12/31/2022 12:39:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNhaXuatBan] [nvarchar](50) NOT NULL,
	[TenNhaXuatBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/31/2022 12:39:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[MaTacGia] [nvarchar](50) NULL,
	[MaNhaSanXuat] [nvarchar](50) NULL,
	[TheLoai] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 12/31/2022 12:39:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [nvarchar](50) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'08', N'SA01', 1, 40000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'08', N'SA02', 2, 50000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'08', N'SA03', 3, 50000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD01', N'SA01', 1, 40000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD01', N'SA03', 5, 50000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD02', N'SA01', 10, 40000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD02', N'SA03', 2, 50000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD03', N'SA01', 4, 40000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD03', N'SA02', 4, 50000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD03', N'SA04', 4, 60000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD04', N'SA01', 12, 40000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD05', N'SA01', 1, 40000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD05', N'SA02', 1, 50000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD05', N'SA03', 1, 50000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD06', N'SA01', 1, 40000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD06', N'SA02', 2, 50000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD07', N'SA01', 1, 40000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD07', N'SA02', 43, 50000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD09', N'SA01', 10, 40000)
INSERT [dbo].[CT_HoaDon] ([SoHD], [MaSach], [SoLuong], [DonGia]) VALUES (N'HD09', N'SA05', 10, 5000)
INSERT [dbo].[DangNhap] ([username], [password]) VALUES (N'admin', N'admin')
INSERT [dbo].[DangNhap] ([username], [password]) VALUES (N'nv01', N'nv01')
INSERT [dbo].[DangNhap] ([username], [password]) VALUES (N'nv02', N'nv02')
INSERT [dbo].[DangNhap] ([username], [password]) VALUES (N'nv03', N'nv03')
INSERT [dbo].[HoaDon] ([SoHD], [NgayLapHD], [Tong], [MaNV]) VALUES (N'08', CAST(N'2022-12-10' AS Date), 4630000, N'nv01')
INSERT [dbo].[HoaDon] ([SoHD], [NgayLapHD], [Tong], [MaNV]) VALUES (N'HD01', CAST(N'2022-12-11' AS Date), 290000, N'nv01')
INSERT [dbo].[HoaDon] ([SoHD], [NgayLapHD], [Tong], [MaNV]) VALUES (N'HD02', CAST(N'2022-12-11' AS Date), 790000, N'nv01')
INSERT [dbo].[HoaDon] ([SoHD], [NgayLapHD], [Tong], [MaNV]) VALUES (N'HD03', CAST(N'2022-12-12' AS Date), 1390000, N'nv01')
INSERT [dbo].[HoaDon] ([SoHD], [NgayLapHD], [Tong], [MaNV]) VALUES (N'HD04', CAST(N'2022-12-12' AS Date), 1870000, N'nv01')
INSERT [dbo].[HoaDon] ([SoHD], [NgayLapHD], [Tong], [MaNV]) VALUES (N'HD05', CAST(N'2022-12-14' AS Date), 2010000, N'nv01')
INSERT [dbo].[HoaDon] ([SoHD], [NgayLapHD], [Tong], [MaNV]) VALUES (N'HD06', CAST(N'2022-12-11' AS Date), 2150000, N'nv01')
INSERT [dbo].[HoaDon] ([SoHD], [NgayLapHD], [Tong], [MaNV]) VALUES (N'HD07', CAST(N'2022-12-16' AS Date), 4340000, N'nv02')
INSERT [dbo].[HoaDon] ([SoHD], [NgayLapHD], [Tong], [MaNV]) VALUES (N'HD09', CAST(N'2022-12-19' AS Date), 5080000, N'nv01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [DiaChi], [GioiTinh], [SDT]) VALUES (N'NV01', N'Nguyen Van A', N'Thu Ngan', N'Dia Chi 01', N'Nu', 363112112)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [DiaChi], [GioiTinh], [SDT]) VALUES (N'NV02', N'Nguyen Van B', N'Thu Ngan', N'Dia Chi 02', N'Nam', 363112112)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ChucVu], [DiaChi], [GioiTinh], [SDT]) VALUES (N'NV03', N'Nguyen Van C', N'Quan Ly', N'Dia Chi 03', N'Nam', 363998940)
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB01', N'Nha Xuat Ban 01')
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB02', N'Nha Xuat Ban 02')
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB03', N'Nha Xuat Ban 03')
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB04', N'Nha Xuat Ban 04')
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB05', N'Nha Xuat Ban 05')
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB06', N'Nha Xuat Ban 06 moi')
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB07', N'Nha Xuat Ban 07 moi')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaNhaSanXuat], [TheLoai], [SoLuong], [DonGia]) VALUES (N'SA01', N'Sach 01', N'TG01', N'NXB01', N'Kinh Di', 10, 40000)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaNhaSanXuat], [TheLoai], [SoLuong], [DonGia]) VALUES (N'SA02', N'Sach 02', N'TG02', N'NXB02', N'Kinh di', 10, 50000)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaNhaSanXuat], [TheLoai], [SoLuong], [DonGia]) VALUES (N'SA03', N'Sach 03', N'TG01', N'NXB01', N'Phieu Luu', 12, 50000)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaNhaSanXuat], [TheLoai], [SoLuong], [DonGia]) VALUES (N'SA04', N'Sach 04', N'TG03', N'NXB03', N'Hai huoc', 15, 60000)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaNhaSanXuat], [TheLoai], [SoLuong], [DonGia]) VALUES (N'SA05', N'Sách 05', N'TG01', N'NXB01', N'Kinh dị', 5, 5000)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (N'TG01', N'Tac Gia 01')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (N'TG02', N'Tac Gia 02')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (N'TG03', N'Tac Gia 03')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (N'TG04', N'Tac Gia 04')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (N'TG05', N'Tac Gia 05')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (N'TG06', N'Nguyen Anh Tuan')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (N'TG07', N'Nguyễn Minh Mẫn')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (N'TG08', N'Tac Gia 08 mới')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia]) VALUES (N'TG09', N'Tac Gia 09 moi')
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CT_HoaDon_HoaDon] FOREIGN KEY([SoHD])
REFERENCES [dbo].[HoaDon] ([SoHD])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CT_HoaDon_HoaDon]
GO
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CT_HoaDon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CT_HoaDon_Sach]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaXuatBan] ([MaNhaXuatBan])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
