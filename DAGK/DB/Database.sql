USE master
GO

CREATE DATABASE WEB2
 GO
USE WEB2
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[StatusID] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producer]    Script Date: 25/04/2017 7:08:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ProducerID] [int] IDENTITY(1,1) NOT NULL,
	[ProducerName] [nvarchar](255) NULL,
	[LoGo] [nvarchar](255) NULL,
	[Deleted] [bigint] NULL,
 CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[ProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 25/04/2017 7:08:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductTypeID] [int] NULL,
	[ProducerID] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Sold] [int] NULL,
	[Quantity] [int] NULL,
	[Viewed] [int] NULL,
	[Date] [date] NULL,
	[Description] [nvarchar](255) NULL,
	[ImageURL] [nvarchar](255) NULL,
	[Deleted] [bigint] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 25/04/2017 7:08:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ProductDetailedID] [nvarchar](50) NOT NULL,
	[ProductID] [nvarchar](50) NULL,
	[Screen] [nvarchar](50) NULL,
	[OperatingSystem] [nvarchar](50) NULL,
	[CPU] [nvarchar](50) NULL,
	[Ram] [nvarchar](50) NULL,
	[Pin] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[ProductDetailedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 25/04/2017 7:08:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeName] [nvarchar](255) NULL,
	[Deleted] [bigint] NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 25/04/2017 7:08:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 25/04/2017 7:08:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeID] [int] NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [nchar](11) NULL,
	[Birthday] [nvarchar](30) NULL,
	[Deleted] [bigint] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserType]    Script Date: 25/04/2017 7:08:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([ProducerID], [ProducerName], [LoGo], [Deleted]) VALUES (1, N'Apple', NULL, 0)
INSERT [dbo].[Producer] ([ProducerID], [ProducerName], [LoGo], [Deleted]) VALUES (2, N'Sony', NULL, 0)
INSERT [dbo].[Producer] ([ProducerID], [ProducerName], [LoGo], [Deleted]) VALUES (3, N'Opple', NULL, 0)
INSERT [dbo].[Producer] ([ProducerID], [ProducerName], [LoGo], [Deleted]) VALUES (4, N'Intel', NULL, 0)
INSERT [dbo].[Producer] ([ProducerID], [ProducerName], [LoGo], [Deleted]) VALUES (5, N'Asus', NULL, 0)
INSERT [dbo].[Producer] ([ProducerID], [ProducerName], [LoGo], [Deleted]) VALUES (6, N'Nokia', NULL, 0)
INSERT [dbo].[Producer] ([ProducerID], [ProducerName], [LoGo], [Deleted]) VALUES (8, N'Samsung', NULL, 0)
SET IDENTITY_INSERT [dbo].[Producer] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (1, N'Iphone 6 plus 16GB', 1, 1, CAST(11990000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x903C0B00 AS Date), N'Màn hình HD cực đẹp, trải nghiệm IOS mượt mà', N'Iphone 6 plus 16GB.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (2, N'Opple F1s 64GB', 1, 3, CAST(6990000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x903C0B00 AS Date), N'Lưu trữ thoải mái, camera selfie 16MP', N'oppo-f1s.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (3, N'Oppo-f3 psus', 2, 4, CAST(10590000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x903C0B00 AS Date), N'Window 10 bản quyền, mua office giá rẻ', N'Oppo-f3 psus.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (4, N'Samsung Galaxy A7', 1, 8, CAST(10990000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x903C0B00 AS Date), N'Chống nước, bụi, cấu hình khủng', N'Samsung Galaxy A7.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (5, N'Asus Zenphone 3 Max 5.5', 1, 5, CAST(4990000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x903C0B00 AS Date), N'Cảm ứng vân tay, cấu hình mạnh mẽ', N'Asus Zenphone 3 Max 5.5.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (6, N'Asus Zenfone 3 ', 2, 5, CAST(6290000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x903C0B00 AS Date), N'Tặng balo, trúng xe máy dễ dàng', N'Asus Zenfone 3 max 5.5 inch ZC553KL.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (7, N'Samsung Galaxy S7', 2, 1, CAST(31990000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x903C0B00 AS Date), N'Giá rẻ online', N'Samsung Galaxy S7.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (8, N'iPhone 7 Plus 256GB', 2, 1, CAST(56900000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x903C0B00 AS Date), N'Cảm ứng vân tay', N'iPhone 7 Plus 256GB.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (9, N'Sony Xperia XA', 1, 2, CAST(4490000 AS Decimal(18, 0)), 0, 5, 0, CAST(0xDB360B00 AS Date), N'Màn hình 5in, selfie dễ dàng', N'Sony Xperia XA.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (10, N'Iphone 6s 128GB', 1, 1, CAST(18990000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x903C0B00 AS Date), N'Cơ hội trúng xe, tặng phiếu mua quà trị giá 2.5 triệu đồng', N'Iphone 6s 128GB.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (11, N'Nokia Lumia 930', 1, 6, CAST(12000000 AS Decimal(18, 0)), 0, 5, 0, CAST(0xAE370B00 AS Date), N'Tặng SH ', N'Nokia Lumia 930.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (12, N'Microsoft Lumia 640', 2, 6, CAST(3700000 AS Decimal(18, 0)), 0, 5, 0, CAST(0x01380B00 AS Date), N'Tặng túi xách ', N'Microsoft Lumia 640.png', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductTypeID], [ProducerID], [Price], [Sold], [Quantity], [Viewed], [Date], [Description], [ImageURL], [Deleted]) VALUES (13, N'1', 1, 1, CAST(1 AS Decimal(18, 0)), NULL, NULL, NULL, CAST(0x47220B00 AS Date), N'1', N'7c73485c-6250-4f44-81a8-653a2cef5db0.jpg', 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'1', N'1', N'5.5", Retina HD', N'IOS 9', N'Apple A8 2 nhân 64 bit', N'1GB', N'2915mAh')
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'10', N'10', N'5.5", Retina HD', N'IOS 9.0', N'Apple A9 2 nhân', N'2GB', N'2350mAh')
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'2', N'2', N'5.5", HD', N'Android 5.1 (Lollipop)', N'Mediatek MT6750 8 nhân', N'4GB', N'3075mAh')
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'3', N'3', N'15.6", Full HD', N'Window 10 Home', N'Intel core i3, 2.0GHz', N'4GB', N'4 cell')
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'4', N'4', N'5.7", Full HD', N'Android 6.0 (Marshmallow)', N'Exynos 7880', N'3GB', N'3600mAh')
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'5', N'5', N'5.5", Full HD', N'Android 6.0', N'Qualcomm 430 8 nhân', N'3GB', N'4100mAh')
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'6', N'6', N'14"', N'Window 10 Home', N'Intel Celeron 1.6GHz', N'2GB', N'2 cell')
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'7', N'7', N'13.3"', N'Mac OS X', N'Intel core i5', N'8GB', N'10 tiếng')
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'8', N'8', N'Công nghệ IPS, Led 13.3"', N'Mac OS X', N'Intel Iris Graphics 550', N'8GB', N'10 tiếng')
INSERT [dbo].[ProductDetail] ([ProductDetailedID], [ProductID], [Screen], [OperatingSystem], [CPU], [Ram], [Pin]) VALUES (N'9', N'9', N'5", HD', N'Android 6.0', N'Helio P10 8 nhân', N'2GB', N'2300mAh')
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ProductTypeID], [ProductTypeName], [Deleted]) VALUES (1, N'Điện thoại', 0)
INSERT [dbo].[ProductType] ([ProductTypeID], [ProductTypeName], [Deleted]) VALUES (2, N'Laptop', 0)
INSERT [dbo].[ProductType] ([ProductTypeID], [ProductTypeName], [Deleted]) VALUES (3, N'Phụ kiện', 0)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([UserTypeID], [UserTypeName]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([UserTypeID], [UserTypeName]) VALUES (2, N'Member')
SET IDENTITY_INSERT [dbo].[UserType] OFF
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[ProductType] ADD  CONSTRAINT [DF_ProductType_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[DetailedInvoice]  WITH CHECK ADD  CONSTRAINT [FK_DetailedInvoice_Invoice] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Invoice] ([InvoiceID])
GO
ALTER TABLE [dbo].[DetailedInvoice] CHECK CONSTRAINT [FK_DetailedInvoice_Invoice]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Status]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Producer] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producer] ([ProducerID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Producer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ProductTypeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([UserTypeID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
USE [master]
GO
ALTER DATABASE [WEB2] SET  READ_WRITE 
GO
