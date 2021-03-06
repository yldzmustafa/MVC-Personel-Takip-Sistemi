USE [PersonelMVC]
GO
/****** Object:  Table [dbo].[Departman]    Script Date: 12.04.2022 15:17:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departman](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Departman] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 12.04.2022 15:17:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmanID] [int] NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Maas] [smallint] NULL,
	[DogumTarihi] [smalldatetime] NULL,
	[Cinsiyet] [bit] NOT NULL,
	[Evlimi] [bit] NOT NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departman] ON 

INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (1, N'bilgi işlemm')
INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (2, N'ik')
INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (3, N'reklam')
INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (4, N'tahsilat')
INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (5, N'oglen sinifi')
INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (6, N'x')
INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (7, N'y')
INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (8, N'z')
INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (9, N'yazılım')
INSERT [dbo].[Departman] ([ID], [Ad]) VALUES (10, N'şş')
SET IDENTITY_INSERT [dbo].[Departman] OFF
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([ID], [DepartmanID], [Ad], [Soyad], [Maas], [DogumTarihi], [Cinsiyet], [Evlimi]) VALUES (5, 1, N'Mustafa', N'Yıldız', 5000, CAST(N'1998-12-19T00:00:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[Personel] ([ID], [DepartmanID], [Ad], [Soyad], [Maas], [DogumTarihi], [Cinsiyet], [Evlimi]) VALUES (7, 2, N'Fatih', N'Koca', 5000, CAST(N'1950-01-01T00:00:00' AS SmallDateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Departman] FOREIGN KEY([DepartmanID])
REFERENCES [dbo].[Departman] ([ID])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Departman]
GO
