
USE [CoiThiTuyenSinhDaiHoc]
GO
/****** Object:  Table [dbo].[CanBo]    Script Date: 10/10/2020 10:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanBo](
	[MaCanBo] [varchar](10) NOT NULL,
	[TenCanBo] [varchar](50) NOT NULL,
	[ChucVu] [varchar](50) NULL,
	[MaDiemThi] [varchar](10) NULL,
	[MaDonVi] [varchar](10) NULL,
 CONSTRAINT [PK_CanBo] PRIMARY KEY CLUSTERED 
(
	[MaCanBo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiemThi]    Script Date: 10/10/2020 10:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiemThi](
	[MaDiemThi] [varchar](10) NOT NULL,
	[DiaChiDiemThi] [varchar](50) NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
 CONSTRAINT [PK_DiaDiemThi] PRIMARY KEY CLUSTERED 
(
	[MaDiemThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 10/10/2020 10:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDonVi] [varchar](10) NOT NULL,
	[TenDonVi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonThi]    Script Date: 10/10/2020 10:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonThi](
	[MaMonThi] [varchar](10) NOT NULL,
	[TenMonThi] [varchar](50) NULL,
	[NgayThi] [date] NULL,
	[BuoiThi] [varchar](30) NULL,
	[ThoiGianThi] [varchar](30) NULL,
 CONSTRAINT [PK_MonThi] PRIMARY KEY CLUSTERED 
(
	[MaMonThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 10/10/2020 10:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[MaNganh] [varchar](10) NOT NULL,
	[TenNganh] [varchar](50) NULL,
 CONSTRAINT [PK_Nganh] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThiSinh]    Script Date: 10/10/2020 10:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThiSinh](
	[SoBaoDanh] [varchar](10) NOT NULL,
	[HoTen] [varchar](30) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [varchar](10) NOT NULL,
	[HoKhau] [varchar](50) NOT NULL,
	[DoiTuong] [varchar](10) NULL,
	[KhuVuc] [varchar](50) NULL,
	[MaDiemThi] [varchar](10) NULL,
	[MaNganh] [varchar](10) NULL,
	[MaMonThi] [varchar](10) NULL,
 CONSTRAINT [PK_ThiSinh] PRIMARY KEY CLUSTERED 
(
	[SoBaoDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH01', N'NGO THANH LONG', N'CHU NHIEM KHOA', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH02', N'TRAN NGUYEN NGOC', N'PHO CHU NHIEM KHOA', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH03', N'TONG MINH DUC', N'PHO CHU NHIEM KHOA', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH11', N'NGUYEN VIET HUNG', N'CHU NHIEM BO MON', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH12', N'CAO VAN LOI', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH13', N'DANG LE DINH TRANG', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH14', N'HOANG TUAN HAO', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH15', N'KHUAT VAN THANH', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH16', N'PHAN VIET ANH', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH17', N'TRAN HONG QUANG', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH21', N'HOA TAT THANG', N'CHU NHIEM BO MON', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH22', N'NGUYEN VAN GIANG', N'PHO CHU NHIEM BO MON', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH23', N'CHU THI HUONG', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH24', N'NGUYEN MAU UYEN', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH25', N'TANG VAN HA', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH26', N'TRAN VAN AN', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH27', N'DAO THANH TINH', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH28', N'NGUYEN THANH HAI', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH31', N'NGO HUU PHUC', N'CHU NHIEM BO MON', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH32', N'HA CHI TRUNG', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH33', N'NGUYEN TRONG TIN', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH41', N'PHAN NGUYEN HAI', N'CHU NHIEM BO MON', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH42', N'NGUYEN QUOC KHANH', N'PHO CHU NHIEM BO MON', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH43', N'NGUYEN MANH HUNG', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH44', N'NGUYEN THI HIEN', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH45', N'PHAM VAN VIET', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH46', N'BUI THU LAM', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH47', N'NGUYEN HOANG SINH', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH51', N'TA MINH THANH', N'CHU NHIEM BO MON', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH52', N'LUU HONG DUNG', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH53', N'NGUYEN QUANG UY', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH61', N'TA NGOC ANH', N'CHU NHIEM BO MON', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH62', N'HY DUC MANH', N'PHO CHU NHIEM BO MON', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH63', N'BUI QUOC HUNG', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH64', N'BUI VAN DINH', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH65', N'DO ANH TUAN', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH66', N'NGUYEN THI THU HUONG', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH67', N'PHAM THE ANH', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH68', N'PHAM TIEN DUNG', N'GIAO VIEN', NULL, NULL)
INSERT [dbo].[CanBo] ([MaCanBo], [TenCanBo], [ChucVu], [MaDiemThi], [MaDonVi]) VALUES (N'KQH69', N'VU ANH MY', N'GIAO VIEN', NULL, NULL)
GO
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'1', N'HVKTQS KHU A ', N'H9_201')
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'10', N'HVKTQS KHU B', N'S1_205')
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'2', N'HVKTQS KHU A', N'H5_303')
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'3', N'HVKTQS KHU A', N'H2_505')
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'4', N'KVKTQS KHU A', N'H3_503')
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'5', N'HVKTQS KHU A', N'S1_202')
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'6', N'HVKTQS KHU B', N'S1_107')
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'7', N'HVKTQS KHU B', N'S1_108')
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'8', N'HVKTQS KHU B', N'S1_105')
INSERT [dbo].[DiaDiemThi] ([MaDiemThi], [DiaChiDiemThi], [MaPhong]) VALUES (N'9', N'HVKTQS KHU B', N'S1_207')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'0', N'BAN CHU NHIEM KHOA')
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'1', N'AN TOAN THONG TIN')
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'2', N'HE THONG THONG TIN')
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'3', N'KHOA HOC MAY TINH')
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'4', N'CONG NGHE PHAN MEM')
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'5', N'CONG NGHE MANG')
GO
INSERT [dbo].[MonThi] ([MaMonThi], [TenMonThi], [NgayThi], [BuoiThi], [ThoiGianThi]) VALUES (N'1', N'toan', CAST(N'2020-12-01' AS Date), N'sang', N'120')
INSERT [dbo].[MonThi] ([MaMonThi], [TenMonThi], [NgayThi], [BuoiThi], [ThoiGianThi]) VALUES (N'2', N'li', CAST(N'2020-12-01' AS Date), N'sang', N'45')
GO
INSERT [dbo].[ThiSinh] ([SoBaoDanh], [HoTen], [NgaySinh], [GioiTinh], [HoKhau], [DoiTuong], [KhuVuc], [MaDiemThi], [MaNganh], [MaMonThi]) VALUES (N'18150049', N'BUI DUC ANH', CAST(N'2000-12-26' AS Date), N'NAM', N'THAI BINH', NULL, N'KV2-NT', NULL, NULL, NULL)
INSERT [dbo].[ThiSinh] ([SoBaoDanh], [HoTen], [NgaySinh], [GioiTinh], [HoKhau], [DoiTuong], [KhuVuc], [MaDiemThi], [MaNganh], [MaMonThi]) VALUES (N'18150050', N'DAO DUC ANH', CAST(N'2000-11-19' AS Date), N'NAM', N'NAM DINH', NULL, N'KV2-NT', NULL, NULL, NULL)
INSERT [dbo].[ThiSinh] ([SoBaoDanh], [HoTen], [NgaySinh], [GioiTinh], [HoKhau], [DoiTuong], [KhuVuc], [MaDiemThi], [MaNganh], [MaMonThi]) VALUES (N'18150051', N'NGUYEN DUC ANH', CAST(N'2000-11-01' AS Date), N'NAM', N'THANH HOA', NULL, N'KV2-NT', NULL, NULL, NULL)
INSERT [dbo].[ThiSinh] ([SoBaoDanh], [HoTen], [NgaySinh], [GioiTinh], [HoKhau], [DoiTuong], [KhuVuc], [MaDiemThi], [MaNganh], [MaMonThi]) VALUES (N'18150076', N'NGUYEN THI HIEN', CAST(N'2000-08-05' AS Date), N'NU', N'HA NOI', NULL, N'KV2', NULL, NULL, NULL)
INSERT [dbo].[ThiSinh] ([SoBaoDanh], [HoTen], [NgaySinh], [GioiTinh], [HoKhau], [DoiTuong], [KhuVuc], [MaDiemThi], [MaNganh], [MaMonThi]) VALUES (N'18150080', N'NGUYEN QUANG HUY', CAST(N'2000-09-11' AS Date), N'NAM', N'HA NOI', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThiSinh] ([SoBaoDanh], [HoTen], [NgaySinh], [GioiTinh], [HoKhau], [DoiTuong], [KhuVuc], [MaDiemThi], [MaNganh], [MaMonThi]) VALUES (N'18150088', N'LUU NGOC LAN', CAST(N'2000-09-11' AS Date), N'NU', N'HA NOI', NULL, N'KV2', NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[Nganh]  WITH CHECK ADD  CONSTRAINT [FK_Nganh_ThiSinh1] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[ThiSinh] ([SoBaoDanh])
GO
ALTER TABLE [dbo].[Nganh] CHECK CONSTRAINT [FK_Nganh_ThiSinh1]
GO
USE [master]
GO
ALTER DATABASE [CoiThiTuyenSinh] SET  READ_WRITE 
GO
