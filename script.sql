USE [School]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 14.01.2018 23:39:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [Name]) VALUES (2, N'Cihan Baş')
INSERT [dbo].[Student] ([Id], [Name]) VALUES (3, N'Yıldırım Tam')
INSERT [dbo].[Student] ([Id], [Name]) VALUES (4, N'Rozeri Dilar')
INSERT [dbo].[Student] ([Id], [Name]) VALUES (5, N'Diljin DağTekin')
INSERT [dbo].[Student] ([Id], [Name]) VALUES (6, N'Zelal Gezici')
INSERT [dbo].[Student] ([Id], [Name]) VALUES (7, N'Mesut Kaya')
INSERT [dbo].[Student] ([Id], [Name]) VALUES (10, N'Meral Canan')
SET IDENTITY_INSERT [dbo].[Student] OFF
