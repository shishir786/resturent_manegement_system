USE [Resturent]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 14-May-24 2:12:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bills](
	[BillingID] [int] IDENTITY(1,1) NOT NULL,
	[TotalBill] [float] NULL,
	[Seller] [varchar](80) NULL,
	[PaymentMathod] [varchar](50) NULL,
	[PurchaseTimeAndDate] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 14-May-24 2:12:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](70) NULL,
	[TotalPurchaseAmount] [float] NULL,
	[PaymentMathod] [varchar](50) NULL,
	[PurchaseTimeAndDate] [varchar](60) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14-May-24 2:12:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[UserID] [varchar](30) NOT NULL,
	[UserName] [varchar](70) NULL,
	[Password] [varchar](50) NULL,
	[EmpName] [varchar](80) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FoodItem]    Script Date: 14-May-24 2:12:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FoodItem](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [varchar](80) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_FoodItem] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 14-May-24 2:12:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] NOT NULL,
	[Role] [varchar](25) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Bills] ON 

INSERT [dbo].[Bills] ([BillingID], [TotalBill], [Seller], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (1, 512, N'ds', N'Cash', N'12-May-24 9:09:48 PM')
INSERT [dbo].[Bills] ([BillingID], [TotalBill], [Seller], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (2, 570, N'SA', N'Card', N'12-May-24 9:09:48 PM')
INSERT [dbo].[Bills] ([BillingID], [TotalBill], [Seller], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (3, 346, N'SA', N'Mobile Banking', N'12-May-24 9:09:48 PM')
INSERT [dbo].[Bills] ([BillingID], [TotalBill], [Seller], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (4, 496, N'SA', N'Card', N'12-May-24 9:09:48 AM')
INSERT [dbo].[Bills] ([BillingID], [TotalBill], [Seller], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (5, 300, N'SA', N'Card', N'12-May-24 9:09:48 PM')
INSERT [dbo].[Bills] ([BillingID], [TotalBill], [Seller], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (6, 346, N'SA', N'Mobile Banking', N'12-May-24 7:09:48 PM')
INSERT [dbo].[Bills] ([BillingID], [TotalBill], [Seller], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (7, 946, N'SA', N'Cash', N'13-May-24 9:09:48 PM')
SET IDENTITY_INSERT [dbo].[Bills] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TotalPurchaseAmount], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (1, N'RJ', 512, N'Cash', N'12-May-24 9:10:48 PM')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TotalPurchaseAmount], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (2, N'RJ', 300, N'Card', N'12-May-24 10:09:48 PM')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TotalPurchaseAmount], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (3, N'AA', 346, N'Mobile Banking', N'13-May-24 9:09:48 AM')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TotalPurchaseAmount], [PaymentMathod], [PurchaseTimeAndDate]) VALUES (4, N'Kuddus', 946, N'Cash', N'13-May-24 9:09:48 PM')
SET IDENTITY_INSERT [dbo].[Customer] OFF
INSERT [dbo].[Employee] ([UserID], [UserName], [Password], [EmpName], [RoleID]) VALUES (N's-001', N'ds', N'786', N'Abdullah Shishir', 1)
INSERT [dbo].[Employee] ([UserID], [UserName], [Password], [EmpName], [RoleID]) VALUES (N's-002', N'a', N'001', N'SA', 2)
SET IDENTITY_INSERT [dbo].[FoodItem] ON 

INSERT [dbo].[FoodItem] ([FoodID], [FoodName], [Price]) VALUES (1, N'Pizza', 480)
INSERT [dbo].[FoodItem] ([FoodID], [FoodName], [Price]) VALUES (2, N'Burger', 270)
INSERT [dbo].[FoodItem] ([FoodID], [FoodName], [Price]) VALUES (3, N'Sandwitch', 173)
INSERT [dbo].[FoodItem] ([FoodID], [FoodName], [Price]) VALUES (5, N'Nachos', 150)
SET IDENTITY_INSERT [dbo].[FoodItem] OFF
INSERT [dbo].[Roles] ([RoleID], [Role]) VALUES (1, N'Manager')
INSERT [dbo].[Roles] ([RoleID], [Role]) VALUES (2, N'Seller')
