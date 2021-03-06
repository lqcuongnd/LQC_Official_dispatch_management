USE [master]
GO
/****** Object:  Database [QLCV]    Script Date: 3/2/2019 10:20:23 AM ******/
CREATE DATABASE [QLCV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLCV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLCV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLCV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLCV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLCV] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCV] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLCV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLCV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLCV] SET  MULTI_USER 
GO
ALTER DATABASE [QLCV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLCV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLCV] SET QUERY_STORE = OFF
GO
USE [QLCV]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QLCV]
GO
/****** Object:  Table [dbo].[ACC]    Script Date: 3/2/2019 10:20:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACC](
	[USERNAME] [nvarchar](50) NOT NULL,
	[PASS] [nvarchar](50) NULL,
	[UNAME] [nvarchar](50) NULL,
	[SEX] [nvarchar](3) NULL,
	[UTYPE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQSOANTHAO]    Script Date: 3/2/2019 10:20:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQSOANTHAO](
	[TENCQ] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TENCQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOP]    Script Date: 3/2/2019 10:20:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOP](
	[SO] [int] IDENTITY(1,1) NOT NULL,
	[LOAI] [nvarchar](400) NULL,
	[SOVB] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUKIEN]    Script Date: 3/2/2019 10:20:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUKIEN](
	[MAHOP] [int] NOT NULL,
	[THOIGIAN] [date] NULL,
	[TENSK] [nvarchar](max) NULL,
	[DIADIEM] [nvarchar](max) NULL,
	[NGUOIDU] [nvarchar](max) NULL,
	[PHUONGTIEN] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAIVBDEN]    Script Date: 3/2/2019 10:20:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAIVBDEN](
	[NAM] [int] NULL,
	[MATL] [nvarchar](10) NOT NULL,
	[TENTL] [nvarchar](60) NULL,
	[SO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MATL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAIVBDI]    Script Date: 3/2/2019 10:20:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAIVBDI](
	[NAM] [int] NULL,
	[MATL] [nvarchar](20) NOT NULL,
	[TENTL] [nvarchar](100) NULL,
	[SO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MATL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VANBANDEN]    Script Date: 3/2/2019 10:20:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VANBANDEN](
	[NAM] [int] NOT NULL,
	[MATL] [nvarchar](10) NOT NULL,
	[SODEN] [int] NOT NULL,
	[CQBANHANH] [nvarchar](150) NULL,
	[SOVB] [nvarchar](20) NULL,
	[NGAYDEN] [date] NULL,
	[NGAYPH] [date] NULL,
	[DOMAT] [nvarchar](20) NULL,
	[DOKHAN] [nvarchar](20) NULL,
	[TRICHYEU] [nvarchar](max) NULL,
	[PHEDUYET] [nvarchar](max) NULL,
	[NGUOIKY] [nvarchar](60) NULL,
	[SOBAN] [int] NULL,
	[SOTO] [int] NULL,
	[NOINHAN] [nvarchar](max) NULL,
	[YKIENCD] [nvarchar](max) NULL,
	[HIENDANGO] [nvarchar](max) NULL,
	[SOHOP] [int] NULL,
	[STTHOP] [int] NULL,
	[GHICHU] [nvarchar](max) NULL,
	[NGUOINHAP] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[NAM] ASC,
	[MATL] ASC,
	[SODEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VANBANDI]    Script Date: 3/2/2019 10:20:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VANBANDI](
	[NAM] [int] NOT NULL,
	[MATL] [nvarchar](20) NOT NULL,
	[SOVB] [int] NOT NULL,
	[MAVB] [nvarchar](20) NULL,
	[NGAYPH] [date] NULL,
	[DOMAT] [nvarchar](20) NULL,
	[DOKHAN] [nvarchar](20) NULL,
	[TRICHYEU] [nvarchar](max) NULL,
	[PHEDUYET] [nvarchar](max) NULL,
	[NGUOIKY] [nvarchar](40) NULL,
	[SOBAN] [int] NULL,
	[SOTO] [int] NULL,
	[NOINHAN] [nvarchar](max) NULL,
	[CQSOANTHAO] [nvarchar](250) NULL,
	[YKIENCD] [nvarchar](max) NULL,
	[SOHOP] [int] NULL,
	[STTHOP] [int] NULL,
	[GHICHU] [nvarchar](max) NULL,
	[NGUOINHAP] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[NAM] ASC,
	[MATL] ASC,
	[SOVB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ACC] ([USERNAME], [PASS], [UNAME], [SEX], [UTYPE]) VALUES (N'admin', N'admin', N'Lương Quang Cương', N'Nam', 1)
INSERT [dbo].[ACC] ([USERNAME], [PASS], [UNAME], [SEX], [UTYPE]) VALUES (N'cuongdao', N'normal', N'Nguyễn Chí Cường', N'Nam', 2)
INSERT [dbo].[ACC] ([USERNAME], [PASS], [UNAME], [SEX], [UTYPE]) VALUES (N'dat09', N'normal', N'Nguyễn Thành Đạt', N'Nam', 2)
INSERT [dbo].[ACC] ([USERNAME], [PASS], [UNAME], [SEX], [UTYPE]) VALUES (N'hieucho', N'normal', N'Lê Trung Hiếu', N'Nam', 2)
INSERT [dbo].[ACC] ([USERNAME], [PASS], [UNAME], [SEX], [UTYPE]) VALUES (N'hungga', N'normal', N'Trần Minh Hưng', N'Nam', 2)
INSERT [dbo].[ACC] ([USERNAME], [PASS], [UNAME], [SEX], [UTYPE]) VALUES (N'nhulun', N'normal', N'Trần Thị Huỳnh Như', N'Nữ', 2)
INSERT [dbo].[ACC] ([USERNAME], [PASS], [UNAME], [SEX], [UTYPE]) VALUES (N'tcuong', N'normal', N'Trần Tiến Cường', N'Nam', 2)
INSERT [dbo].[ACC] ([USERNAME], [PASS], [UNAME], [SEX], [UTYPE]) VALUES (N'thuytrang', N'normal', N'Trần Thị Thùy Trang', N'Nữ', 2)
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Bảo vệ an ninh/PCT')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Cán bộ/PCT')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Cơ yếu/PTM')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Công binh/PTM')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Dân vận/PCT')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Doanh trại/PHC')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Hành chính/PTM')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Pháo binh/PTM')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Phòng không/PTM')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Quân khí/PKT')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Quân nhu/PHC')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Quân y/PHC')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Tác huấn/PTM')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Tài chính/PHC')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Tham mưu kế hoạch/PHC')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Thông tin/PTM')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Tổ chức/PCT')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Tuyên huấn/PCT')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Xăng dầu/PHC')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ban Xe - máy/PKT')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Phòng Chính trị')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Phòng Hậu cần')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Phòng Kỹ thuật')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Phòng Tham mưu')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Sư đoàn BB5')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'TL.Chính trị/PKT')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'TL.Chính trị/PTM')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'TL.Kế hoạch tổng hợp/PCT')
INSERT [dbo].[CQSOANTHAO] ([TENCQ]) VALUES (N'Ủy ban kiểm tra/f')
SET IDENTITY_INSERT [dbo].[HOP] ON 

INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (1, N'Văn bản đến Hành chính quân sự 2010 - 2016', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (2, N'Văn bản đến Chính trị 2010 - 2016', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (3, N'Văn bản đi Hành chính quân sự 2010 - 2016', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (4, N'Văn bản đi Ban Tác huấn 2010 - 2016', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (5, N'Các Quyết định bổ nhiệm của Quân khu 2010 - 2018', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (6, N'Nghị quyết từ Quân khu 2010 - 2016', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (7, N'Văn bản Hành chính quân sự tuyệt mật 2010 - 2018', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (8, N'Các tờ trình xây dựng của Ban Doanh trại 2010 - 2018', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (9, N'Báo cáo tài chính của Sư đoàn từ 2013 - 2016', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (10, N'Văn bản đến tối mật từ 2013 - 2018', 0)
INSERT [dbo].[HOP] ([SO], [LOAI], [SOVB]) VALUES (11, N'Văn bản đến tuyệt mật từ 2013 - 2018', 0)
SET IDENTITY_INSERT [dbo].[HOP] OFF
INSERT [dbo].[THELOAIVBDEN] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'CT', N'Phòng Chính trị', 0)
INSERT [dbo].[THELOAIVBDEN] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'D', N'Đảng', 0)
INSERT [dbo].[THELOAIVBDEN] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'H', N'Hành chính quân sự', 0)
INSERT [dbo].[THELOAIVBDEN] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'HC', N'Phòng Hậu cần', 0)
INSERT [dbo].[THELOAIVBDEN] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'KT', N'Phòng Kỹ thuật', 0)
INSERT [dbo].[THELOAIVBDEN] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'Q', N'Quy phạm pháp luật', 0)
INSERT [dbo].[THELOAIVBDEN] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'TM', N'Phòng Tham mưu', 0)
INSERT [dbo].[THELOAIVBDEN] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'TMo', N'Thư mời', 0)
INSERT [dbo].[THELOAIVBDEN] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'XH', N'Các tổ chức chính trị xã hội', 0)
INSERT [dbo].[THELOAIVBDI] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'BCH', N'Bộ chỉ huy Sư đoàn BB5', 5)
INSERT [dbo].[THELOAIVBDI] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'D', N'Đảng', 4)
INSERT [dbo].[THELOAIVBDI] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'PCT', N'Phòng Chính trị', 8)
INSERT [dbo].[THELOAIVBDI] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'PD', N'Văn bản phê duyệt', 2)
INSERT [dbo].[THELOAIVBDI] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'PHC', N'Phòng Hậu cần', 5)
INSERT [dbo].[THELOAIVBDI] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'PKT', N'Phòng Kỹ thuật', 5)
INSERT [dbo].[THELOAIVBDI] ([NAM], [MATL], [TENTL], [SO]) VALUES (2018, N'PTM', N'Phòng Tham mưu', 9)
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'CT', 1, N'Cục Chính trị Quân khu 7', N'12/CCT-TH', CAST(N'2018-01-22' AS Date), CAST(N'2018-01-13' AS Date), N'Thường', N'Thường', N'Công văn - V/v chuẩn bị cho công tác tuyên huấn năm 2018', N'', N'1/// - Phạm Toàn - p.CnCT/QK7', 2, 2, N'PCT/f5;
Các d trực thuộc;
Lưu: TH, BM;', N'Ban Tuyên huấn chuẩn bị - Chú Xựng', N'', NULL, NULL, N'Chú Khoa giữ 1 bản gốc', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'H', 1, N'Phòng Tác chiến -  Bộ Tham mưu Quân khu 7', N'05/PTC - TH', CAST(N'2018-01-05' AS Date), CAST(N'2018-01-02' AS Date), N'Tối mật', N'Hỏa tốc', N'Công văn - V/v Một số thay đổi trong kế hoạch tăng cường bảo đảm an ninh đầu năm 2018', N'', N'1/// - Võ Văn Cổ - p.TMT/QK7', 1, 4, N'Các e trực thuộc, 4f;
…', N'Chuyển BTH/PTM Sao y gửi cho chỉ huy/f và 4CQ
- Chú Rậm', N'', 8, 1, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'H', 2, N'Bộ Chỉ huy Bộ Tư lệnh Quân khu 7', N'43/CL-BTL', CAST(N'2018-03-25' AS Date), CAST(N'2018-03-24' AS Date), N'Mật', N'Hỏa tốc', N'Chỉ lệnh - Về chỉ đạo mới của Bộ trưởng BQP', N'', N'2/// - Trần Đơn - Tl.QK', 1, 4, N'BTLQK;
Các e, f trực thuộc;
…;
Lưu: CTH, BM;', N'Giao Ban Tác huấn xây dựng kế hoạch chi tiết chỉ đạo các đơn vị.
- Chú Thuận', N'Bảo Mật/f', 1, 2, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'H', 3, N'Bộ Tham mưu Quân khu 7', N'25/BTM-TH', CAST(N'2018-02-12' AS Date), CAST(N'2018-02-09' AS Date), N'Thường', N'Hỏa tốc', N'Công văn - V/v trùng tu trường bắn Sư đoàn 5 phục vụ hội thao', N'', N'1/// - Võ Văn Cổ - p.TMT/QK7', 1, 6, N'PKT/f5;
Lưu: TH, BM;', N'Chuyển BTH/PTM kết hợp BDT/PHC xử lý - Chú Thuận', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'HC', 1, N'Cục Hậu cần Quân khu', N'05/CHC-TC', CAST(N'2018-01-21' AS Date), CAST(N'2018-01-17' AS Date), N'Tuyệt mật', N'Khẩn', N'Công văn - V/v Phân bổ thêm nguồn tài chính cho Sư đoàn BB5', N'', N'4// - Lê Văn Sang - p.cnHCQK', 2, 1, N'Phòng Tài chính QK7;
f5;
Lưu: BM;', N'giao đ/c Nam - BTC/f hoàn thành', N'', 7, 1, N'Chú Phong giữ 1 bản gốc ', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'KT', 1, N'Cục Kỹ thuật Quân khu 7', N'02/TB-CKT', CAST(N'2018-03-25' AS Date), CAST(N'2018-03-20' AS Date), N'Mật', N'Thường', N'Thông báo - Về việc kiểm tra quân khí ', N'', N'4// - Nguyễn Xuân Hợp - cnKT/QK7', 1, 3, N'PKT/f5;
Các d trực thuộc;
Lưu: QK, BM;', N'Chuyển PKT - Chú Ngạn', N'Phòng Kỹ thuật/f', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'Q', 1, N'Bộ Quốc phòng', N'197/2014/TT-BQP', CAST(N'2018-01-05' AS Date), CAST(N'2017-12-29' AS Date), N'Thường', N'Thường', N'Thông tư - Quy định việc thực hiện công tác quốc phòng, quân sự ở bộ, ngành và địa phương', N'', N'3/// - Đỗ Bá Tỵ', 1, 4, N'Các đơn vị, quân khu cả nước;
Các trường Quân đội;
', N'Photo BHC, 4 CQ - Chú Thuận', N'Bảo Mật/f', 1, 1, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'TM', 1, N'Ban Tham mưu Trung đoàn BB271', N'08/BC-TH', CAST(N'2018-01-20' AS Date), CAST(N'2018-01-15' AS Date), N'Thường', N'Thượng khẩn', N'Báo cáo - Công tác chuẩn bị hợp luyện ĐLĐN', N'', N'2// - Huỳnh Việt Lê Kha - et', 1, 3, N'PTM/f5;
Các d trực thuộc;
Lưu: TH, BM;', N'Chuyển PTM - Chú Rậm', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'TM', 2, N'Phòng Cơ yếu - Bộ Tham mưu Quân khu 7', N'15/HD-PCY', CAST(N'2018-02-02' AS Date), CAST(N'2018-01-30' AS Date), N'Mật', N'Thường', N'Hướng dẫn - Công tác Cơ yếu năm 2018', N'', N'4// - Phạm Hào Nam - cnCY/QK', 1, 3, N'PTM/f5;
Lưu: PCY, BM;', N'Chuyển Ban Cơ yếu - Chú Rậm', N'', 1, 3, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'TMo', 1, N'UBND Huyện Dương Minh Châu', N'10/TM', CAST(N'2018-01-08' AS Date), CAST(N'2018-01-06' AS Date), N'Thường', N'Thường', N'Thư mời
Họp mặt đầu xuân các cơ quan đoàn thể địa phương
10:00 ngày 11/01/2018, Nhà khách huyện DMC, 225/23B Nguyễn Lê.', N'', N'Nguyễn Thị Loan - P.CT', 1, 1, N'', N'Chú Rậm dự', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'TMo', 2, N'Giáo xứ Vinh Sơn', N'20/TM', CAST(N'2018-03-29' AS Date), CAST(N'2018-03-20' AS Date), N'Thường', N'Thường', N'Thư mời
Tham dự lễ hiệp dâng
08:00 ngày 01/04/2018, Giáo xứ Vinh Sơn', N'', N'', 1, 1, N'', N'đ/c Phong dự - Chú Thuận', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDEN] ([NAM], [MATL], [SODEN], [CQBANHANH], [SOVB], [NGAYDEN], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [YKIENCD], [HIENDANGO], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'XH', 1, N'UBND Huyện Dương Minh Châu', N'12/UBND-DV', CAST(N'2018-03-27' AS Date), CAST(N'2018-03-25' AS Date), N'Thường', N'Thường', N'Công văn - V/v phối hợp trong công tác dân vận với Sư đoàn BB5', N'', N'Nguyễn Thị Loan - P.CT', 1, 3, N'f5;
Các cơ quan đoàn thể;
BDV, BM;', N'Ban Dân vận phối hợp địa phương thực hiện
- Chú Xựng', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'BCH', 1, N'TB-SĐ5', CAST(N'2018-01-02' AS Date), N'Mật', N'Thường', N'Thông báo - V/v triển khai kế hoạch huấn luyện năm 2018', N'', N'4// - Phạm Văn Thuận - f.t', 23, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH,BM;', N'Ban Tác Huấn/PTM', N'', 3, 1, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'BCH', 2, N'BC-SĐ5', CAST(N'2018-02-05' AS Date), N'Thường', N'Thường', N'Báo cáo - Tiến độ xây dựng công trình Nhà khách 55', N'2/// - Trần Đơn - TL.QK7', N'4// - Phạm Văn Thuận - f.t', 18, 6, N'BTLQK7;
BCH Sưđoàn(7);
Lưu: NDT,BM;', N'Ban Doanh trại/PHC', N'', NULL, NULL, N'Chú Hùng xin giữ 1 bản', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'BCH', 3, N'TB-SĐ5', CAST(N'2018-02-06' AS Date), N'Thường', N'Thường', N'Thông báo - V/v Kiểm tra, bảo dưỡng vũ khí', N'', N'3// - Phạm Văn Rậm - p.TMT/f', 23, 7, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH,BM', N'Ban Tác Huấn/PTM', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'BCH', 4, N'TB-SĐ5', CAST(N'2018-02-07' AS Date), N'Mật', N'Thường', N'Thông báo - Tình hình địch tuần(28/12/2017 - 04/01/2018)', N'', N'3// - Trần Minh Phong - p.ft', 23, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BCY, BM;', N'Ban Cơ yếu/PTM', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'BCH', 5, N'TTr-SĐ5', CAST(N'2018-02-08' AS Date), N'Thường', N'Thường', N'Tờ trình - V/v Xin kinh phí nâng cấp, cải tạo khu nhà ở chiến sỹ e5', N'1/// - Võ Văn Cổ - TMT/QK7', N'4// - Phạm Văn Thuận - f.t', 15, 3, N'BTLQK7, Phòng Tài chính QK7;
BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BDT, BM;', N'Ban Doanh trại/PHC', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'D', 1, N'BC-ĐU', CAST(N'2018-01-05' AS Date), N'Mật', N'Thường', N'Báo cáo - Tình hình đảng viên 2017', N'', N'4// - Phan Văn Xựng - CU/f', 15, 2, N'ĐU/f;
Các ĐU cấp cơ sở;
UBKT/f, BM;', N'Ủy Ban Kiểm tra Sư đoàn', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'D', 2, N'TB-ĐU', CAST(N'2018-01-25' AS Date), N'Mật', N'Thường', N'Thông báo - V/v Rà soát lý lịch đảng viên Sư đoàn 2018', N'', N'4// - Nguyễn Quốc Khoa - p.CU/f', 13, 3, N'ĐU/f;
Các ĐU cấp cơ sở;
UBKT/f, BM;', N'Ủy Ban Kiểm tra Sư đoàn', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'D', 3, N'TB-ĐU', CAST(N'2018-02-01' AS Date), N'Thường', N'Thường', N'Thông báo - V/v Kiện toàn UBKT', N'', N'4// - Nguyễn Quốc Khoa - p.CU/f', 12, 2, N'ĐU/f;
Các ĐU cấp cơ sở;
BTC/PCT, BM;', N'Ban Tổ chức/f', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'D', 4, N'BC-ĐU', CAST(N'2018-02-20' AS Date), N'Tuyệt mật', N'Thường', N'Báo cáo - Kết quả cuộc họp ngày 19/02/2018', N'', N'4// - Phan Văn Xựng - CU/f', 10, 3, N'ĐU/f;
Các ĐU cấp cơ sở;
UBKT/f, BM;', N'Ủy Ban Kiểm tra Sư đoàn', N'', 4, 2, N'Chú Xựng giữ 1 bản', N'Lương Quang Cương')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PCT', 1, N'TB-PCT', CAST(N'2018-01-08' AS Date), N'Thường', N'Thường', N'Thông báo - V/v Chuẩn bị tổ chức chương trình chào đón tân niên cho tân binh nhập ngũ tháng 2/2018', N'4// - Phan Văn Xựng - p.CU/f', N'4// - Lê Văn Nhân - cnCT/f', 23, 3, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH, BM;', N'Ban Tuyên huấn/PCT', N'', NULL, NULL, N'', N'Trần Thị Huỳnh Như')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PCT', 2, N'TB-PCT', CAST(N'2018-02-09' AS Date), N'Thường', N'Thường', N'Thông báo - Triển khai cuộc thi viết tìm hiểu luật tố tụng', N'', N'4// - Lê Văn Nhân - cnCT/f', 23, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH, BM;', N'Ban Tuyên huấn/PCT', N'', NULL, NULL, N'', N'Trần Thị Huỳnh Như')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PCT', 3, N'TTr-PCT', CAST(N'2018-02-10' AS Date), N'Thường', N'Thường', N'Tờ trình - V/v Xin kinh phí Tổ chức chương trình chào đón tân niên cho tân binh nhập ngũ tháng 2/2018', N'4// - Phạm Văn Thuận - f.t', N'4// - Nguyễn Doãn Nam - p.cnCT/f', 12, 2, N'BCH Sư đoàn(7);
ban Tài chính/f;
Lưu: BTH, BM;', N'Ban Tuyên huấn/PCT', N'', NULL, NULL, N'', N'Trần Thị Huỳnh Như')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PCT', 4, N'TB-PCT', CAST(N'2018-02-15' AS Date), N'Thường', N'Thường', N'Thông báo - V/v Phổ biến Chỉ thị 443 của Quân khu', N'', N'4// - Nguyễn Doãn Nam - p.cnCT/f', 23, 3, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH, BM;', N'Ban Tuyên huấn/PCT', N'', NULL, NULL, N'Kèm 6 tờ phụ lục', N'Trần Thị Huỳnh Như')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PCT', 5, N'PCT-BVAN', CAST(N'2018-03-15' AS Date), N'Tối mật', N'Thường', N'Công văn - V/v Triển khai công tác Bảo vệ An ninh trong Sư đoàn đầu năm 2018', N'', N'4// - Lê Văn Nhân - cnCT/f', 12, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BVAN, BM;', N'Ban Bảo vệ An ninh/PCT', N'', 5, 3, N'', N'Lê Trung Hiếu')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PCT', 6, N'PCT-DV', CAST(N'2018-03-18' AS Date), N'Thường', N'Thường', N'Công văn - V/v Kế hoạch công tác dân vận quý I/2018', N'', N'4// - Nguyễn Doãn Nam - p.cnCT/f', 23, 6, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BDV, BM;', N'Ban Dân vận/PCT', N'', NULL, NULL, N'', N'Lê Trung Hiếu')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PCT', 7, N'BC-PCT', CAST(N'2018-03-21' AS Date), N'Thường', N'Thường', N'Báo cáo - Kết quả cuộc thi nấu ăn Sư đoàn', N'', N'4// - Nguyễn Doãn Nam - p.cnCT/f', 15, 3, N'BCH Sư đoàn(7);
Các đơn vị đoạt giải;
Lưu: KHTH, BM;', N'Tl. Kế hoạch Tổng hợp/PCT', N'', NULL, NULL, N'', N'Lê Trung Hiếu')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PCT', 8, N'HD-PCT', CAST(N'2018-03-26' AS Date), N'Mật', N'Thường', N'Hướng dẫn - Công tác tổ chức năm 2018', N'', N'4// - Nguyễn Doãn Nam - p.cnCT/f', 20, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTC, BM;', N'Ban Tổ chức/PCT', N'', NULL, NULL, N'', N'Lê Trung Hiếu')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PD', 1, N'10/BC-TĐ271', CAST(N'2018-02-20' AS Date), N'Thường', N'Thường', N'Báo cáo - Công tác chuẩn bị hợp luyện của eBB271', N'', N'1// - Huỳnh Việt Lê Kha - et', 10, 4, N'f5;
Các cơ quan đơn vị;', N'eBB271', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PD', 2, N'20/TTr-TĐ4', CAST(N'2018-02-15' AS Date), N'Thường', N'Thường', N'Tờ trình - Xin kinh phí tu bổ doanh trại', N'', N'1// - Nguyễn Lê Danh - e.t', 15, 3, N'f5;
Các cơ quan đơn vị;', N'eBB4', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PHC', 1, N'TMKH-PHC', CAST(N'2018-01-05' AS Date), N'Thường', N'Thường', N'Công văn - V/v Xin ý kiến về việc chuẩn bị cho tiệc mừng xuân Sư đoàn 2018', N'', N'2// - Nguyễn Văn Dũng - p.cnHC/f', 13, 2, N'BCH Sư đoàn(7);
Lưu: Ban TMKH/PHC, BM;', N'Ban Tham mưu kế hoạch/PHC', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PHC', 2, N'BC-PHC', CAST(N'2018-01-23' AS Date), N'Thường', N'Thường', N'Báo cáo - Dự tính nhu cầu xăng dầu quý I/2018', N'', N'2// - Nguyễn Văn Dũng - p.cnHC/f', 13, 2, N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: BXD, BM;', N'Ban Xăng dầu/PHC', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PHC', 3, N'TTr-PHC', CAST(N'2018-01-25' AS Date), N'Thường', N'Thường', N'Tờ trình - V/v cung cấp tài chính mua văn phòng phẩm', N'', N'2// - Nguyễn Văn Dũng - p.cnHC/f', 12, 2, N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: Ban BDT, BM;', N'Ban Doanh trại/PHC', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PHC', 4, N'TTr-PHC', CAST(N'2018-01-25' AS Date), N'Thường', N'Thường', N'Tờ trình - V/v phê duyệt công trình doanh trại e5', N'3// - Trần Minh Phong - p.ft', N'2// - Nguyễn Văn Dũng - p.cnHC/f', 12, 6, N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: Ban BDT, BM;', N'Ban Doanh trại/PHC', N'', NULL, NULL, N'', N'Lương Quang Cương')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PHC', 5, N'BC-PHC', CAST(N'2018-01-25' AS Date), N'Mật', N'Thường', N'Báo cáo - Tài chính đầu năm 2018', N'3// - Trần Minh Phong - p.ft', N'2// - Nguyễn Văn Dũng - p.cnHC/f', 12, 6, N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: Ban BTC, BM;', N'Ban Tài chính/PHC', N'', 6, 2, N'Chú Phong giữ 1 bản', N'Lương Quang Cương')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PKT', 1, N'BC-PKT', CAST(N'2018-01-05' AS Date), N'Thường', N'Thường', N'Báo cáo - Chất lượng kiểm định tăng thiết giáp', N'4// - Phạm Văn Thuận - f.t', N'2// - Lê Xuân Nhật - cnKT.f', 12, 7, N'BCH Sư đoàn(7);
Lưu: Ban BXM, BM;', N'Ban Xe - Máy/PHC', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PKT', 2, N'PKT-TB', CAST(N'2018-01-13' AS Date), N'Thường', N'Thường', N'Thông báo - Công tác đảm bảo an toàn trang thiết bị quân sự 2018', N'', N'2// - Lê Xuân Nhật - cnKT.f', 12, 4, N'BCH Sư đoàn(7);
Lưu: Ban TMKH, BM;', N'Ban Tham mưu kế hoạch/PKT', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PKT', 3, N'TTr-PKT', CAST(N'2018-02-10' AS Date), N'Thường', N'Thường', N'Tờ trình - Xin kinh phí mua văn phòng phẩm ', N'3// - Trần Minh Phong - p.ft', N'2// - Lê Xuân Nhật - cnKT.f', 12, 2, N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: BQK, BM;', N'Ban Quân khí/PKT', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PKT', 4, N'HD-PKT', CAST(N'2018-03-10' AS Date), N'Thường', N'Thường', N'Hướng dẫn - Công tác Xe - máy năm 2018', N'', N'2// - Lê Xuân Nhật - cnKT.f', 23, 4, N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: BXM, BM;', N'Ban Xe - Máy/PHC', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PKT', 5, N'PKT-CT', CAST(N'2018-03-26' AS Date), N'Thường', N'Thường', N'Công văn - V/v Tổ chức họp đầu năm', N'', N'2// - Lê Xuân Nhật - cnKT.f', 16, 3, N'BCH Sư đoàn(7);
Lưu: tl.CT/PKT, BM;', N'trợ lý Chính trị/PKT', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PTM', 1, N'PTM-CY', CAST(N'2018-01-05' AS Date), N'Tối mật', N'Thường', N'Công văn - Về công tác Cơ yếu năm 2018', N'', N'3// - Đặng Văn Hảo - p.TMT/f', 23, 3, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BCY,BM;', N'Ban Cơ yếu/PTM', N'', 5, 1, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PTM', 2, N'TB-PTM', CAST(N'2018-01-09' AS Date), N'Tối mật', N'Thường', N'Thông báo - V/v Công tác chuẩn bị cho đợt diễn tập Mây Tàu', N'', N'3// - Đặng Văn Hảo - p.TMT/f', 23, 6, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH,BM;', N'Ban Tác huấn/PTM', N'', 5, 2, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PTM', 3, N'PTM-TH', CAST(N'2018-02-13' AS Date), N'Thường', N'Thường', N'Công văn - V/v Hợp luyện Điều lệnh đội ngũ chuẩn bị chào mừng Tân xuân 2018', N'', N'3// - Phạm Văn Rậm - p.TMT/f', 23, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH, BM;', N'Ban Tác huấn/PTM', N'', 3, 3, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PTM', 4, N'BC-PTM', CAST(N'2018-02-15' AS Date), N'Thường', N'Thường', N'Báo cáo - V/v Công tác chuẩn bị nhập ngũ cho tân binh 2018', N'', N'3// - Phạm Văn Rậm - p.TMT/f', 23, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BQL, BM;', N'Ban Quân lực/PTM', N'', NULL, NULL, N'', N'Nguyễn Chí Cường')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PTM', 5, N'TB-PTM', CAST(N'2018-03-16' AS Date), N'Mật', N'Thường', N'Thông báo - V/v bảo dưỡng các loại vũ khí pháo binh ', N'', N'3// - Đặng Văn Hảo - p.TMT/f', 17, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BQL, BM;', N'Ban Pháo binh/PTM', N'', 3, 4, N'', N'Nguyễn Thành Đạt')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PTM', 6, N'TTr-PTM', CAST(N'2018-04-12' AS Date), N'Thường', N'Thường', N'Tờ trình - V/v cung cấp tài chính mua sắm trang thiết bị, văn phòng phẩm', N'4// - Phạm Văn Thuận - ft', N'3// - Đặng Văn Hảo - p.TMT/f', 12, 3, N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: BTH, BM;', N'Ban Tác huấn/PTM', N'', NULL, NULL, N'', N'Nguyễn Thành Đạt')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PTM', 7, N'PTM-QL', CAST(N'2018-04-19' AS Date), N'Tuyệt mật', N'Thường', N'Công văn - V/v giải trình nguyên nhân tử vong của đ/c binh nhì NCK', N'', N'3// - Phạm Văn Rậm - p.TMT/f', 7, 2, N'BCH Sư đoàn(7);
Lưu: BQL, BM;', N'Ban Quân lực/PTM', N'', 4, 1, N'', N'Nguyễn Thành Đạt')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PTM', 8, N'HD-PTM', CAST(N'2018-04-22' AS Date), N'Thường', N'Thường', N'Hướng dẫn - Công tác tác chiến phòng không năm 2018', N'', N'3// - Đặng Văn Hảo - p.TMT/f', 23, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BPK, BM;', N'Ban Phòng không/PTM', N'', NULL, NULL, N'', N'Nguyễn Thành Đạt')
INSERT [dbo].[VANBANDI] ([NAM], [MATL], [SOVB], [MAVB], [NGAYPH], [DOMAT], [DOKHAN], [TRICHYEU], [PHEDUYET], [NGUOIKY], [SOBAN], [SOTO], [NOINHAN], [CQSOANTHAO], [YKIENCD], [SOHOP], [STTHOP], [GHICHU], [NGUOINHAP]) VALUES (2018, N'PTM', 9, N'BC-PTM', CAST(N'2018-04-22' AS Date), N'Mật', N'Thường', N'Báo cáo - Tình hình địch tuần', N'', N'3// - Đặng Văn Hảo - p.TMT/f', 23, 4, N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH,BM;', N'Ban Tác huấn/PTM', N'', 6, 1, N'', N'Nguyễn Thành Đạt')
ALTER TABLE [dbo].[HOP] ADD  DEFAULT ((0)) FOR [SOVB]
GO
ALTER TABLE [dbo].[THELOAIVBDEN] ADD  DEFAULT ((0)) FOR [SO]
GO
ALTER TABLE [dbo].[THELOAIVBDI] ADD  DEFAULT ((0)) FOR [SO]
GO
ALTER TABLE [dbo].[VANBANDEN]  WITH CHECK ADD FOREIGN KEY([MATL])
REFERENCES [dbo].[THELOAIVBDEN] ([MATL])
GO
ALTER TABLE [dbo].[VANBANDEN]  WITH CHECK ADD FOREIGN KEY([SOHOP])
REFERENCES [dbo].[HOP] ([SO])
GO
ALTER TABLE [dbo].[VANBANDI]  WITH CHECK ADD FOREIGN KEY([MATL])
REFERENCES [dbo].[THELOAIVBDI] ([MATL])
GO
ALTER TABLE [dbo].[VANBANDI]  WITH CHECK ADD FOREIGN KEY([SOHOP])
REFERENCES [dbo].[HOP] ([SO])
GO
USE [master]
GO
ALTER DATABASE [QLCV] SET  READ_WRITE 
GO
