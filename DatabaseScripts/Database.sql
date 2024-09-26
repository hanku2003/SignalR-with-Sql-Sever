CREATE DATABASE YOURDATABASE;
GO
USE YOURDATABASE;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[Mobile] [varchar](10) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Price] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [nvarchar](50) NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[PurchasedOn] [date] NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (1, N'Hưng', N'Male', N'0812668798')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (2, N'Huy', N'Male', N'0397470806')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (3, N'Triết Anh', N'Male', N'9875641230')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (4, N'Ý', N'Male', N'9874561220')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (5, N'Trọng', N'Male', N'9876541230')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (6, N'Hân', N'Female', N'9876541230')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (7, N'Hiền', N'Female', N'0847036468')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (8, N'Tài', N'Male', N'0367937821')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (9, N'Phong', N'Male', N'0795954093')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (10, N'Khoa', N'Male', N'9876541230')
GO
INSERT [dbo].[Customer] ([Id], [Name], [Gender], [Mobile]) VALUES (11, N'Nhi', N'Female', N'0936278477')
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (1, N'Potato', N'Groceries', 200.000)
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (2, N'Tomato', N'Groceries', 150.000)
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (3, N'Onion', N'Groceries', 70.000)
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (4, N'The Magic of Thinking Big', N'Books', 250.000)
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (5, N'Rich Dad Poor Dad', N'Books', 230.000)
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (6, N'The Secret', N'Books', 270.000)
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (7, N'Mobile', N'Electronics', '4.500.000')
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (8, N'Chair', N'Furniture', 500.000)
GO
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (9, N'Flowers', N'Decoration', 200.000)
GO
INSERT INTO [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (10, N'Table', N'Furniture', 500.000);
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Sale] ON
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (1, N'Huy', 450.000, CAST(N'2024-03-06' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (2, N'Tài', 900.000, CAST(N'2024-03-07' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (3, N'Hiền', 80.000, CAST(N'2023-03-08' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (4, N'Hưng', 2.000, CAST(N'2024-02-09' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (5, N'Trọng', 15.000, CAST(N'2023-02-10' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (6, N'Hân', 25.000, CAST(N'2022-02-11' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (7, N'Triết Anh', 35.000, CAST(N'2023-03-12' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (8, N'Phong', 500.000, CAST(N'2023-03-13' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (9, N'Nhi', 50.000, CAST(N'2022-03-13' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (10, N'Ý', 10.000, CAST(N'2022-03-11' AS Date))
GO
INSERT [dbo].[Sale] ([Id], [Customer], [Amount], [PurchasedOn]) VALUES (11, N'Khoa', 20.000, CAST(N'2024-03-10' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Sale] OFF
GO

SELECT IS_BROKER_ENABLED FROM SYS.DATABASES WHERE NAME = 'YOURDATABASE'

ALTER DATABASE YOURDATABASE SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE