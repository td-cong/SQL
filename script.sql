USE [GiaPha]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 22/09/2023 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AnhDongHo] [nvarchar](50) NULL,
	[AnhThanhVien] [nvarchar](50) NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTinTuc]    Script Date: 22/09/2023 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTinTuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTinTuc] [nvarchar](50) NULL,
	[GhiChu] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiTinTuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhaKy]    Script Date: 22/09/2023 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhaKy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PhaKy] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhaKy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 22/09/2023 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NamSinh] [int] NULL,
	[NamMat] [int] NULL,
	[GioiTinh] [bit] NULL,
	[VoChong] [int] NULL,
	[DiaPhuong] [nvarchar](500) NULL,
	[LyLich] [nvarchar](max) NULL,
	[Avt] [nvarchar](500) NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 22/09/2023 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TinTuc] [nvarchar](50) NULL,
	[IdLoaiTinTuc] [int] NULL,
	[TieuDe] [nvarchar](500) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[TacGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TocUoc]    Script Date: 22/09/2023 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TocUoc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TocUoc] [nvarchar](max) NULL,
 CONSTRAINT [PK_TocUoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoChong]    Script Date: 22/09/2023 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoChong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
 CONSTRAINT [PK_VoChong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (1, NULL, N'Trần B', 1880, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (2, 1, N'Trần Ph', 1923, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (3, 2, N'Trần Ng', 1933, 2009, 0, NULL, NULL, N'Lão thành cách mạng', NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (4, 3, N'Trần Quốc B', 1949, 2013, 0, NULL, NULL, N'Công nhân', NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (5, 3, N'Trần Thị L', 1956, NULL, 0, NULL, NULL, N'Nông dân', NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (6, 0, N'Trần Thị M', 1936, NULL, 0, 2, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (7, 2, N'Trần Quốc Tr', 1956, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (8, 3, N'Trần Thái H', 1952, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (9, 3, N'Trần văn A', 1990, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (10, 9, N'Trần Văn B', 2001, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (11, 2, N'Trần C', 2000, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThanhVien] ([ID], [PID], [HoTen], [NamSinh], [NamMat], [GioiTinh], [VoChong], [DiaPhuong], [LyLich], [Avt]) VALUES (12, 0, N'Trần Thị T', NULL, NULL, NULL, 3, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([ID], [TinTuc], [IdLoaiTinTuc], [TieuDe], [NoiDung], [TacGia]) VALUES (2, NULL, NULL, NULL, N'đóng góp', NULL)
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
ALTER TABLE [dbo].[ThanhVien]  WITH NOCHECK ADD  CONSTRAINT [FK_ThanhVien_ThanhVien] FOREIGN KEY([VoChong])
REFERENCES [dbo].[VoChong] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ThanhVien] NOCHECK CONSTRAINT [FK_ThanhVien_ThanhVien]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_TinTuc] FOREIGN KEY([IdLoaiTinTuc])
REFERENCES [dbo].[LoaiTinTuc] ([ID])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_TinTuc]
GO
