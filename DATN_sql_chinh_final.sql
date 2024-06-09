create database [DuAnTN_final]
Go
USE [DuAnTN_final]
GO

select *from SanPham
delete from SanPhamCT
delete from HinhAnhGiays

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,

 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[NhanVien]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[IdChucVu] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar] (20)NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [int] NULL,
	[Sdt] [varchar] (20)NULL,
	[Email] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,

 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HoaDon]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKhachHang] [uniqueidentifier] NULL,
	[IdPhieuGiamGia] [uniqueidentifier] NULL,
	[IdNhanVien] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[NgayMua] [date] NULL,
	[NgayNhan] [date] NULL,
	[NgayGiao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[TongTienThanhToan] [float] NULL,
	[TienVanChuyen] [float] NULL,
	[TongTienGiamGia] [float] NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [varchar](20) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[HinhThucTT] [nvarchar](20) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HoaDonCt]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonCT](
	[Id] [uniqueidentifier] NOT NULL,
	[IdHoaDon] [uniqueidentifier] NULL,
	[IdSanPhamCT] [uniqueidentifier] NULL,
	[MaHoaDonCT] [varchar](20) NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,

 CONSTRAINT [PK_HoaDonCT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKhachHang] [uniqueidentifier]  NULL,
	[Ma] [varchar](20) NULL,
	[TenDiaChi] [nvarchar](50) NULL,
	[MoTaCT] [nvarchar](50) NULL,
	[TinhThanhPho] [nvarchar](50) NULL,
	[QuanHuyen] [nvarchar](50) NULL,
	[PhuongXa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,

 CONSTRAINT [PK_DiaChi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKhachHang] [uniqueidentifier] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
	
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[GioHangCT]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHangCT](
	[Id] [uniqueidentifier] NOT NULL,
	[IdGioHang] [uniqueidentifier] NULL,
	[IdSanPhamCT] [uniqueidentifier] NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
	
 CONSTRAINT [PK_GioHangCT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[HoTen] [nvarchar](50) NULL,
    [TaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar](20) NULL,
	[GioiTinh] [int] NULL,	
	[SoDT] [varchar](20) NULL,
	[Email] [nvarchar](50) NULL,
    [NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Voucher]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiamGia](
	-- TenVoucher, giá trị giảm, hình thức giảm, điều kiện giảm, tiền hóa đơn, NgayBatDau, NgayKetThuc
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[TenPhieu] [nvarchar](100) NULL,
	[GiaTriGiam] [float] NULL,   -- giam 10% / 20k / 25k
	[HinhThucGiam] [nvarchar](100) NULL, -- %/tien mat
	[DieuKienGiam] [nvarchar](50) NULL,  -- max,min
	[GiaTienXetDieuKien] [float] NULL,   -- max 100k, min 200k
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
    [NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_PhieuGiamGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[KhuyenMai]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DotKhuyenMai](
-- ( mã khuyến mãi, tên khuyến mãi, giá trị giảm,trạng thái, ngày bắt đầu, ngày kết thúc )
-- chi la giam gia truc tiep tren san pham

	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[tenDotKhuyenMai] [nvarchar](50) NULL,
	[GiaTriGiam] [float] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
    [NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_DotKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]     ******/
SET ANSI_NULLS ON
GO	
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
	
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeGiay]     ******/
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeGiay](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_DeGiay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]		
GO
/****** Object:  Table [dbo].[LotGiay]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotGiay](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_LotGiay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chatlieu]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KieuDang]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KieuDang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_KieuDang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MuiGiay]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuiGiay](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_MuiGiay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DayGiay]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DayGiay](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_DayGiay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MauSac]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[KichThuoc]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichThuoc](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_KichThuoc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SanPhamCT]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamCT](
	[Id] [uniqueidentifier] NOT NULL,
	[IdDotKhuyenMai] [uniqueidentifier] NULL,
	[IdSanPham] [uniqueidentifier] NULL,
	[IdDanhMuc] [uniqueidentifier] NULL,
	[IdKieuDang] [uniqueidentifier] NULL,
	[IdThuongHieu] [uniqueidentifier] NULL,
	[IdMuiGiay] [uniqueidentifier] NULL,
	[IdDeGiay] [uniqueidentifier] NULL,
	[IdLotGiay] [uniqueidentifier] NULL,
	[IdDayGiay] [uniqueidentifier] NULL,
	[IdKichThuoc] [uniqueidentifier] NULL,
	[IdChatLieu] [uniqueidentifier] NULL,
	[IdMauSac] [uniqueidentifier] NULL,
	[GiaTriSanPham] [nvarchar](30) NULL,
	[GiaTriGiam] [nvarchar](20) NULL,
	[KhoiLuong] [float] NULL,
	[NgayHetGiamGia][date] NULL,
	[MoTa] [nvarchar](50) NULL,
	[SoLuong][int] NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_SanPhamCT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[ChucVu]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,

 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LoaiSanPham] ADD  CONSTRAINT [DF_LoaiSanPham_Id]  DEFAULT (newid()) FOR [Id]
GO


ALTER TABLE [dbo].[ChucVu] ADD  CONSTRAINT [DF_ChucVu_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDonCT] ADD  CONSTRAINT [DF_HoaDonCT_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[DiaChi] ADD  CONSTRAINT [DF_DiaChi_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[GioHangCT] ADD  CONSTRAINT [DF_GioHangCT_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PhieuGiamGia] ADD  CONSTRAINT [DF_PhieuGiamGia_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[DotKhuyenMai] ADD  CONSTRAINT [DF_DotKhuyenMai_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[DeGiay] ADD  CONSTRAINT [DF_DeGiay_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  CONSTRAINT [DF_ChatLieu_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[LotGiay] ADD  CONSTRAINT [DF_LotGiay_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  CONSTRAINT [DF_ThuongHieu_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KieuDang] ADD  CONSTRAINT [DF_KieuDang_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[DayGiay] ADD  CONSTRAINT [DF_DayGiay_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[MuiGiay] ADD  CONSTRAINT [DF_MuiGiay_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[MauSac] ADD  CONSTRAINT [DF_MauSac_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KichThuoc] ADD  CONSTRAINT [DF_KichThuoc_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[DanhMuc] ADD  CONSTRAINT [DF_DanhMuc_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SanPhamCT] ADD  CONSTRAINT [DF_SanPhamCT_Id]  DEFAULT (newid()) FOR [Id]
GO
/**SanPhamCT**/
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_DotKhuyenMai] FOREIGN KEY([IdDotKhuyenMai])
REFERENCES [dbo].[DotKhuyenMai] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT[FK_SanPhamCT_DotKhuyenMai]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_SanPham]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_DeGiay] FOREIGN KEY([IdDeGiay])
REFERENCES [dbo].[DeGiay] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT[FK_SanPhamCT_DeGiay]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_ChatLieu] FOREIGN KEY([IdChatLieu])
REFERENCES [dbo].[ChatLieu] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_ChatLieu]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_LotGiay] FOREIGN KEY([IdLotGiay])
REFERENCES [dbo].[LotGiay] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_LotGiay]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_ThuongHieu] FOREIGN KEY([IdThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_ThuongHieu]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_KieuDang] FOREIGN KEY([IdKieuDang])
REFERENCES [dbo].[KieuDang] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_KieuDang]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_DayGiay] FOREIGN KEY([IdDayGiay])
REFERENCES [dbo].[DayGiay] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_DayGiay]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_MuiGiay] FOREIGN KEY([IdMuiGiay])
REFERENCES [dbo].[MuiGiay] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_MuiGiay]
GO

ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_MauSac] FOREIGN KEY([IdMauSac])
REFERENCES [dbo].[MauSac] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_MauSac]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_KichThuoc] FOREIGN KEY([IdKichThuoc])
REFERENCES [dbo].[KichThuoc] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_KichThuoc]
GO
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_DanhMuc] FOREIGN KEY([IdDanhMuc])
REFERENCES [dbo].[DanhMuc] ([Id])
GO
ALTER TABLE [dbo].[SanPhamCT] CHECK CONSTRAINT [FK_SanPhamCT_DanhMuc]
GO
/**DiaChi=**/
ALTER TABLE [dbo].[DiaChi]  WITH CHECK ADD  CONSTRAINT [FK_DiaChi_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[DiaChi] CHECK CONSTRAINT [FK_DiaChi_KhachHang]
GO

/**GioHang**/
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang]
GO
/**GioHangCT**/
ALTER TABLE [dbo].[GioHangCT]  WITH CHECK ADD  CONSTRAINT [FK_GioHangCT_GioHang] FOREIGN KEY([IdGioHang])
REFERENCES [dbo].[GioHang] ([Id])
GO
ALTER TABLE [dbo].[GioHangCT] CHECK CONSTRAINT [FK_GioHangCT_GioHang]
GO
ALTER TABLE [dbo].[GioHangCT]  WITH CHECK ADD  CONSTRAINT [FK_GioHangCT_SanPhamCT] FOREIGN KEY([IdSanPhamCT])
REFERENCES [dbo].[SanPhamCT] ([Id])
GO
ALTER TABLE [dbo].[GioHangCT] CHECK CONSTRAINT [FK_GioHangCT_SanPhamCT]
GO
/**NhanVien**/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([IdChucVu])
REFERENCES [dbo].[ChucVu] ([Id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO

/**HoaDonCT**/
ALTER TABLE [dbo].[HoaDonCT]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonCT_HoaDon] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonCT] CHECK CONSTRAINT [FK_HoaDonCT_HoaDon]
GO
ALTER TABLE [dbo].[HoaDonCT]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonCT_SanPhamCT] FOREIGN KEY([IdSanPhamCT])
REFERENCES [dbo].[SanPhamCT] ([Id])
GO
ALTER TABLE [dbo].[HoaDonCT] CHECK CONSTRAINT [FK_HoaDonCT_SanPhamCT]
GO
/**HoaDon**/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhieuGiamGia] FOREIGN KEY([IdPhieuGiamGia])
REFERENCES [dbo].[PhieuGiamGia] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_PhieuGiamGia]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO




-------------------------------------------------------------------------------------------------
-- Hoan them
ALTER TABLE [dbo].[NhanVien]
ADD DiaChi NVARCHAR(250);

ALTER TABLE [dbo].[SanPhamCT]
ADD Ten NVARCHAR(250);

ALTER TABLE [dbo].[SanPhamCT]
ADD Ma NVARCHAR(25);

ALTER TABLE [dbo].[SanPhamCT]
ALTER COLUMN giaTriSanPham float;

ALTER TABLE [dbo].[SanPhamCT]
ALTER COLUMN GiaTriGiam  float;

ALTER TABLE [dbo].[SanPhamCT]
ALTER COLUMN HinhAnh  varchar(255);

ALTER TABLE [dbo].[SanPhamCT]
ADD ID_loaiSP uniqueidentifier;


ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_LoaiSP] FOREIGN KEY([ID_loaiSP])
REFERENCES [dbo].[LoaiSanPham] ([Id])

-- / hoan them 

-- Thay đổi của Mr Quân

ALTER TABLE GioHang
ADD Ma  varchar(50);

ALTER TABLE GioHang
ADD Ten  varchar(50);

ALTER TABLE GioHangCT
ADD Ma  varchar(50);

ALTER TABLE GioHangCT
ADD Ten  varchar(50);

-- 1 san pham chi tiet co 1 hoac nhieu anh 
-- lay idSanPhamChiTiet => them vao bang anh

-- suy ra sẽ có khóa ngoại SPCT ở images 
--  buoc 1: Them IdSanPham vao bang DotKhuyenMai
ALTER TABLE DotKhuyenMai
ADD IdSanPham  uniqueidentifier;


-- Buoc 2: Them Khoa Ngoai Cho Bang DotKhuyenMai
ALTER TABLE DotKhuyenMai
ADD CONSTRAINT FK_DotKhuyenMai FOREIGN KEY (IdSanPham) REFERENCES SanPham(Id);

-- quan sua 
ALTER TABLE DotKhuyenMai
ALTER COLUMN NgayBatDau datetime;
ALTER TABLE DotKhuyenMai
ALTER COLUMN NgayKetThuc datetime;

-- / quan them 

-- hoan thems

create table HinhAnhGiays 
(
	[Id] [uniqueidentifier] DEFAULT (newid()) NOT NULL ,
	[IdSanPhamCT] [uniqueidentifier] NULL,
	duongDanAnh varchar(255) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
	CONSTRAINT FK_SanPhamCT_HinhAnhGiays FOREIGN KEY (IdSanPhamCT)
    REFERENCES SanPhamCT(Id)
)


insert into KhachHang
(Ma, HoTen, TaiKhoan, MatKhau, GioiTinh, SoDT, Email, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
values
('KH00',N'Khách lẻ','0','0',0,'0000000000','null@gmail.com','2024-01-25','2024-01-25','1','1','0')



/****** Object:  Table [dbo].[DanhMuc]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- khoa chinh
ALTER TABLE [dbo].[NhaSanXuat] ADD  CONSTRAINT [DF_NhaSanXuat_Id]  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE SanPhamCT
ADD Id_NSX  [uniqueidentifier] NULL

-- khoa ngoai
ALTER TABLE [dbo].[SanPhamCT]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamCT_NhaSanXuat] FOREIGN KEY([Id_NSX])
REFERENCES [dbo].[NhaSanXuat] ([Id])



alter table PhieuGiamGia
drop column DieuKienGiam

alter table PhieuGiamGia
add  soLuong int

alter table HoaDonCT
drop column MaHoaDonCT



--------------------------------------------------------------------------------------------


-- / hoan them du lieu 
ALTER TABLE [dbo].[HoaDon]
ADD  email  varchar(50);

ALTER TABLE HoaDon
ADD tinh_thanhPho nvarchar(50);

ALTER TABLE HoaDon
ADD quan_huyen nvarchar(50);

ALTER TABLE HoaDon
ADD phuong_xa nvarchar(50);

ALTER TABLE HoaDon
ALTER COLUMN HinhThucTT  nvarchar(150);

ALTER TABLE HoaDon
ADD LoaiHoaDon  nvarchar(150);

alter table HoaDon
drop column TongTienGiamGia

alter table HoaDon
add  TongTienDuocGiamGia float 

alter table HoaDon
add NgayTao date

alter table HoaDon
add NgaySua date

alter table HoaDon
add NguoiTao [nvarchar] (50)

alter table HoaDon
add NguoiSua [nvarchar] (50)

alter table HoaDon
drop column Ma

alter table HoaDon
add Ma varchar(50)

-- / hoan them


-- duc anh them 

ALTER TABLE HoaDon
ADD LYDOHUY NVARCHAR(120);


DROP PROCEDURE IF EXISTS ADTKDoanhThu
GO
CREATE PROCEDURE ADTKDoanhThu
    @DieuKien VARCHAR(50) 
AS
BEGIN
    DECLARE @i INT = 0
    
    IF(@DieuKien LIKE '-7DAY' OR @DieuKien LIKE '-30DAY')
    BEGIN
        -- Lấy ra 7 hoặc 30 ngày trước đó kể từ ngày hiện tại
        DECLARE @DateTable TABLE (
            [Date] DATE
        )
        WHILE @i < IIF(@DieuKien LIKE '-7DAY', 7, 30)
        BEGIN
            INSERT INTO @DateTable ([Date])
            VALUES (DATEADD(DAY, -@i, GETDATE()))
            SET @i = @i + 1
        END

        DECLARE @EndDate DATE = GETDATE() -- Ngày hiện tại
        DECLARE @StartDate DATE = DATEADD(DAY, CASE WHEN @DieuKien LIKE '-7DAY' THEN -7 ELSE -30 END, @EndDate) -- Ngày 7 hoặc 30 ngày trước
        
        -- Truy vấn để lấy tổng doanh thu từ 24 mốc thời gian trong ngày hiện tại
        SELECT
            CONVERT(VARCHAR, ht.[Date], 103) AS [Labels],
            ISNULL(SUM([Amount]), 0) AS [TotalRevenue]
        FROM @DateTable ht
        LEFT JOIN (
            SELECT CAST([NgayMua] AS DATE) AS [Date], SUM([DonGia] * SoLuong) AS [Amount]
            FROM HoaDon i
           
            WHERE CAST([NgayMua] AS DATE) >= @StartDate AND CAST([NgayMua] AS DATE) <= @EndDate
            GROUP BY CAST([NgayMua] AS DATE)
        ) subquery ON ht.[Date] = subquery.[Date]
        GROUP BY ht.[Date]
    END
    
	IF(@DieuKien LIKE '-12MONTH')
	BEGIN
		-- Lấy ra 12 tháng trước đó kể từ tháng hiện tại
		DECLARE @DateTable2 TABLE (
			[StartDate] DATE,
			[EndDate] DATE
		)
		WHILE @i < 12
		BEGIN
			INSERT INTO @DateTable2 ([StartDate], [EndDate])
			VALUES (DATEADD(MONTH, -(@i + 1), DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0)),
					DATEADD(MONTH, -@i, DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0)))
			SET @i = @i + 1
		END

		-- Lấy thêm tháng hiện tại
		INSERT INTO @DateTable2 ([StartDate], [EndDate])
		VALUES (DATEADD(MONTH, 0, DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0)),
				DATEADD(DAY, -1, DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) + 1, 0)))

		-- Truy vấn để lấy tổng doanh thu từ 12 tháng trước đến tháng hiện tại
		SELECT
			CONVERT(VARCHAR(7), dt.[StartDate], 120) AS [Labels],
			ISNULL(SUM([Amount]), 0) AS [TotalRevenue]
		FROM @DateTable2 dt
		LEFT JOIN (
			SELECT CAST([NgayMua] AS DATE) AS [Date], SUM([DonGia] * SoLuong) AS [Amount]
			FROM HoaDon i
			
			GROUP BY CAST([NgayMua] AS DATE)
		) subquery ON subquery.[Date] >= dt.[StartDate] AND subquery.[Date] < DATEADD(DAY, 1, dt.[EndDate])
		GROUP BY dt.[StartDate]
	END
END

EXEC ADTKDoanhThu '-12MONTH'
EXEC ADTKDoanhThu '-30DAY'



DROP PROCEDURE IF EXISTS ADTKDoanhThu
GO

---- / duc anh
ALTER TABLE SanPham_DotKhuyenMai
ADD CONSTRAINT fk_SanPham
FOREIGN KEY (IdSanPham) 
REFERENCES SanPham(Id);

ALTER TABLE SanPham_DotKhuyenMai
ADD CONSTRAINT fk_DotKhuyenMai
FOREIGN KEY (IdDotKhuyenMai) 
REFERENCES DotKhuyenMai(Id);



