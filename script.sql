USE [Item]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2019/6/14 下午 11:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2019/6/14 下午 11:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[RecieverName] [nvarchar](max) NOT NULL,
	[RecieverPhone] [nvarchar](max) NOT NULL,
	[RecieverAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCommets]    Script Date: 2019/6/14 下午 11:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCommets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductCommets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2019/6/14 下午 11:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[PublishDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[DefaultImageId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[DefaultImageName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [Name], [Price], [Quantity], [OrderId]) VALUES (1, N'架乃ゆら', CAST(850 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[OrderDetails] ([Id], [Name], [Price], [Quantity], [OrderId]) VALUES (2, N'戸田真琴', CAST(950 AS Decimal(18, 0)), 1, 2)
INSERT [dbo].[OrderDetails] ([Id], [Name], [Price], [Quantity], [OrderId]) VALUES (3, N'架乃ゆら', CAST(850 AS Decimal(18, 0)), 1, 3)
INSERT [dbo].[OrderDetails] ([Id], [Name], [Price], [Quantity], [OrderId]) VALUES (4, N'桜空もも', CAST(1500 AS Decimal(18, 0)), 3, 3)
INSERT [dbo].[OrderDetails] ([Id], [Name], [Price], [Quantity], [OrderId]) VALUES (5, N'戸田真琴', CAST(950 AS Decimal(18, 0)), 1, 3)
INSERT [dbo].[OrderDetails] ([Id], [Name], [Price], [Quantity], [OrderId]) VALUES (6, N'架乃ゆら', CAST(850 AS Decimal(18, 0)), 1, 4)
INSERT [dbo].[OrderDetails] ([Id], [Name], [Price], [Quantity], [OrderId]) VALUES (7, N'戸田真琴', CAST(950 AS Decimal(18, 0)), 2, 5)
INSERT [dbo].[OrderDetails] ([Id], [Name], [Price], [Quantity], [OrderId]) VALUES (8, N'桜空もも', CAST(1500 AS Decimal(18, 0)), 1, 5)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [RecieverName], [RecieverPhone], [RecieverAddress]) VALUES (1, N'6a3f6a08-4659-4e56-abde-a8fadbcda6e1', N'陳冠友', N'0988888888', N'中原大學資訊工程學系')
INSERT [dbo].[Orders] ([Id], [UserId], [RecieverName], [RecieverPhone], [RecieverAddress]) VALUES (2, N'6a3f6a08-4659-4e56-abde-a8fadbcda6e1', N'侯昱宏', N'0988888888', N'中原中原中原中原')
INSERT [dbo].[Orders] ([Id], [UserId], [RecieverName], [RecieverPhone], [RecieverAddress]) VALUES (3, N'6a3f6a08-4659-4e56-abde-a8fadbcda6e1', N'阿布啦', N'0977874851', N'中壢市弘揚路64號')
INSERT [dbo].[Orders] ([Id], [UserId], [RecieverName], [RecieverPhone], [RecieverAddress]) VALUES (4, N'c1760e7a-6c5d-451c-8eed-b05a848f597a', N'何處男', N'0988789789', N'中壢區弘揚路64號')
INSERT [dbo].[Orders] ([Id], [UserId], [RecieverName], [RecieverPhone], [RecieverAddress]) VALUES (5, N'fd8cf820-ffad-4597-8b8c-565582dc221d', N'鍾武君', N'0988888888', N'中原大學資工系311')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[ProductCommets] ON 

INSERT [dbo].[ProductCommets] ([Id], [UserId], [Content], [CreateDate], [ProductId], [UserName]) VALUES (1, N'f4808277-0073-46bc-88dd-560fa6678ac5', N'硬啦!', CAST(N'2019-06-11T00:50:56.927' AS DateTime), 1, N'侯昱宏')
SET IDENTITY_INSERT [dbo].[ProductCommets] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageName]) VALUES (1, N'架乃ゆら', N'SSNI-086', 1, CAST(850 AS Decimal(18, 0)), CAST(N'2019-06-11T00:00:00.000' AS DateTime), 1, 0, 172, N'av1.png')
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageName]) VALUES (2, N'戸田真琴', N'STAR-857', 1, CAST(950 AS Decimal(18, 0)), CAST(N'2019-06-10T00:00:00.000' AS DateTime), 1, 0, 30, N'av2.png')
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageName]) VALUES (3, N'桜空もも', N'IPX-181', 1, CAST(1500 AS Decimal(18, 0)), CAST(N'2019-06-11T00:00:00.000' AS DateTime), 1, 1, 10, N'av3.png')
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageName]) VALUES (4, N'夢乃あいか', N'SSNI-283', 1, CAST(2600 AS Decimal(18, 0)), CAST(N'2019-06-12T00:00:00.000' AS DateTime), 1, 0, 4, N'av4.png')
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageName]) VALUES (5, N'水卜櫻', N'SNIS-983', 1, CAST(5000 AS Decimal(18, 0)), CAST(N'2019-06-12T00:00:00.000' AS DateTime), 1, 0, 20, N'av5.png')
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageName]) VALUES (6, N'山岸逢花', N'PRED-099]', 1, CAST(4000 AS Decimal(18, 0)), CAST(N'2019-06-12T00:00:00.000' AS DateTime), 1, 1, 23, N'av7.png')
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderOrderDetail] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderOrderDetail]
GO
