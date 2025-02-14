USE [master]
GO
/****** Object:  Database [Database]    Script Date: 04/02/2021 11:59:54 AM ******/
CREATE DATABASE [Database] ON  PRIMARY 
( NAME = N'Database', FILENAME = N'D:\codefrominternet\salesandinventory\SalesAndInventory\Database.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Database_log', FILENAME = N'D:\codefrominternet\salesandinventory\SalesAndInventory\Database_log.ldf' , SIZE = 3840KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Database] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Database] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Database] SET RECOVERY FULL 
GO
ALTER DATABASE [Database] SET  MULTI_USER 
GO
ALTER DATABASE [Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Database] SET DB_CHAINING OFF 
GO
USE [Database]
GO
/****** Object:  Table [dbo].[InStore]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InStore](
	[ID] [varchar](50) NOT NULL,
	[IDStore] [varchar](50) NULL,
	[IDProduc] [varchar](50) NULL,
	[PriceA] [numeric](18, 0) NULL,
	[PriceS] [numeric](18, 0) NULL,
	[PriceR] [numeric](18, 0) NULL,
	[DateEXP] [date] NULL,
	[Stock] [numeric](18, 0) NULL,
	[Note] [nvarchar](150) NULL,
	[InsertDate] [date] NULL,
	[CreateDate] [date] NULL,
	[UpdateDate] [date] NULL,
	[UserID] [varchar](50) NULL,
 CONSTRAINT [PK_InStore] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAuditTrail](
	[Dater] [varchar](50) NULL,
	[Transactype] [varchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Authority] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCashierRecord]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCashierRecord](
	[Cashier] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalSum] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[DateTime] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConversion]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConversion](
	[ID] [varchar](50) NOT NULL,
	[fromCon] [nvarchar](50) NULL,
	[fromNum] [numeric](18, 0) NULL,
	[toCon] [nvarchar](50) NULL,
	[toNum] [numeric](18, 0) NULL,
	[spec] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblConversion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Phone] [varchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[email] [varchar](50) NULL,
	[dateCreate] [date] NULL,
	[dateUpdate] [date] NULL,
	[UserID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCustomer_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[ID] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogTrail]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogTrail](
	[Dater] [varchar](50) NULL,
	[Descrip] [nvarchar](50) NULL,
	[Authority] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblManufacturer]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblManufacturer](
	[ID] [varchar](50) NOT NULL,
	[MName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblManufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNewOrder]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNewOrder](
	[IDOrder] [varchar](50) NOT NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL,
	[CritLimit] [varchar](50) NULL,
 CONSTRAINT [PK_tblNewOrder] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderNote]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderNote](
	[OrderID] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL,
	[CritLimit] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderNote2]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderNote2](
	[OrderID] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ID] [varchar](50) NOT NULL,
	[Descrip] [nvarchar](50) NULL,
	[Price] [numeric](18, 0) NULL,
	[Type] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[Stock] [numeric](18, 0) NULL,
	[NetPrice] [varchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[CritLimit] [varchar](50) NULL,
	[weight] [varchar](50) NULL,
	[specification] [nvarchar](100) NULL,
	[PriceAgency] [numeric](18, 0) NULL,
	[PriceStore] [numeric](18, 0) NULL,
	[MFG] [date] NULL,
	[EXP] [date] NULL,
	[EXPMonth] [varchar](50) NULL,
	[Note] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRecord]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRecord](
	[ID] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalSum] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[DateTime] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRecordInventory]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRecordInventory](
	[OrderID] [varchar](50) NULL,
	[ID] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalSum] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[DateTime] [varchar](50) NULL,
	[OrderType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReorder]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReorder](
	[IDOrder] [varchar](50) NOT NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL,
 CONSTRAINT [PK_tblReorder] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSales]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSales](
	[ID] [varchar](50) NOT NULL,
	[IDProduct] [varchar](50) NULL,
	[numberSale] [numeric](18, 0) NULL,
	[priceSale] [numeric](18, 0) NULL,
	[dateSale] [date] NULL,
	[IDCustomer] [varchar](50) NULL,
	[note] [nvarchar](200) NULL,
	[discount] [numeric](18, 0) NULL,
	[tax] [numeric](18, 0) NULL,
	[totalsale] [numeric](18, 0) NULL,
	[IDBill] [varchar](50) NULL,
	[dateCreate] [date] NULL,
	[dateupdate] [date] NULL,
	[IDUser] [nvarchar](50) NULL,
	[kindofSale] [nchar](10) NULL,
 CONSTRAINT [PK_tblSales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStore]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStore](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Note] [nvarchar](100) NULL,
	[Location] [nvarchar](100) NULL,
	[CreateDate] [date] NULL,
	[UpdateDate] [date] NULL,
	[DeleteDate] [date] NULL,
	[UserID] [varchar](50) NULL,
 CONSTRAINT [PK_tblStore] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTempCart]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTempCart](
	[PID] [varchar](50) NOT NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[Total] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
 CONSTRAINT [PK_tblTempCart] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUnitConversion]    Script Date: 04/02/2021 11:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUnitConversion](
	[ID] [varchar](50) NOT NULL,
	[IDProduct] [varchar](50) NULL,
	[IDUnit] [varchar](50) NULL,
	[dateApply] [date] NULL,
	[dateCreate] [date] NULL,
	[dateUpdate] [date] NULL,
	[IDUser] [varchar](50) NULL,
	[keyexist] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblUnitConversion_1] PRIMARY KEY CLUSTERED 
(
	[keyexist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INS17XT0', N'STR498GE', N'GOD5DWCQ', CAST(62500 AS Numeric(18, 0)), CAST(68500 AS Numeric(18, 0)), CAST(88000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(10 AS Numeric(18, 0)), N'', CAST(N'2021-02-02' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INS1DCNV', N'STR498GE', N'GOD42RPM', CAST(67000 AS Numeric(18, 0)), CAST(74000 AS Numeric(18, 0)), CAST(96000 AS Numeric(18, 0)), CAST(N'2021-08-03' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INS74WG8', N'STR2XUJG', N'GOD0XK6E', CAST(40500 AS Numeric(18, 0)), CAST(44500 AS Numeric(18, 0)), CAST(58000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(100 AS Numeric(18, 0)), N'', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSDR9NB', N'STR2XUJG', N'GOD0XK6E', CAST(40500 AS Numeric(18, 0)), CAST(44500 AS Numeric(18, 0)), CAST(58000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(900 AS Numeric(18, 0)), N'', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSEFA3L', N'STR498GE', N'GOD08WVI', CAST(28000 AS Numeric(18, 0)), CAST(31000 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(150 AS Numeric(18, 0)), N'', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSFFF7P', N'STR498GE', N'GOD8Q046', CAST(26000 AS Numeric(18, 0)), CAST(29000 AS Numeric(18, 0)), CAST(38000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-02' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSJUKM8', N'STR498GE', N'GOD6US2E', CAST(64000 AS Numeric(18, 0)), CAST(70500 AS Numeric(18, 0)), CAST(91000 AS Numeric(18, 0)), CAST(N'2021-08-03' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSKKSAA', N'STR498GE', N'GOD8R5IA', CAST(30500 AS Numeric(18, 0)), CAST(33500 AS Numeric(18, 0)), CAST(43000 AS Numeric(18, 0)), CAST(N'2021-08-03' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSN7210', N'STR498GE', N'GOD08WVI', CAST(28000 AS Numeric(18, 0)), CAST(31000 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-08-03' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSQG0S1', N'STR498GE', N'GOD8Q046', CAST(26000 AS Numeric(18, 0)), CAST(29000 AS Numeric(18, 0)), CAST(38000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-02' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSR9B23', N'STRQD4M3', N'GOD08WVI', CAST(28000 AS Numeric(18, 0)), CAST(31000 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-09-10' AS Date), CAST(80 AS Numeric(18, 0)), N'dđ', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSRS8VB', N'STRQD4M3', N'GOD08WVI', CAST(28000 AS Numeric(18, 0)), CAST(31000 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-09-10' AS Date), CAST(90 AS Numeric(18, 0)), N'dđ', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSS5MR5', N'STR498GE', N'GOD42RPM', CAST(67000 AS Numeric(18, 0)), CAST(74000 AS Numeric(18, 0)), CAST(96000 AS Numeric(18, 0)), CAST(N'2021-08-03' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSSVS3A', N'STR498GE', N'GOD08WVI', CAST(28000 AS Numeric(18, 0)), CAST(31000 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(100 AS Numeric(18, 0)), N'', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSSWW3A', N'STR2XUJG', N'GOD0XK6E', CAST(40500 AS Numeric(18, 0)), CAST(44500 AS Numeric(18, 0)), CAST(58000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(900 AS Numeric(18, 0)), N'', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSUH7O5', N'STR498GE', N'GOD6US2E', CAST(64000 AS Numeric(18, 0)), CAST(70500 AS Numeric(18, 0)), CAST(91000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSW465V', N'STR2XUJG', N'GOD0XK6E', CAST(40500 AS Numeric(18, 0)), CAST(44500 AS Numeric(18, 0)), CAST(58000 AS Numeric(18, 0)), CAST(N'2021-08-01' AS Date), CAST(900 AS Numeric(18, 0)), N'', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSZ0BZ6', N'STR498GE', N'GOD8R5IA', CAST(30500 AS Numeric(18, 0)), CAST(33500 AS Numeric(18, 0)), CAST(43000 AS Numeric(18, 0)), CAST(N'2021-08-03' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), NULL, N'ly')
INSERT [dbo].[InStore] ([ID], [IDStore], [IDProduc], [PriceA], [PriceS], [PriceR], [DateEXP], [Stock], [Note], [InsertDate], [CreateDate], [UpdateDate], [UserID]) VALUES (N'INSZ2D46', N'STR498GE', N'GOD6US2E', CAST(64000 AS Numeric(18, 0)), CAST(70500 AS Numeric(18, 0)), CAST(91000 AS Numeric(18, 0)), CAST(N'2021-08-03' AS Date), CAST(0 AS Numeric(18, 0)), N'', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), NULL, N'ly')
GO
INSERT [dbo].[tblAdmin] ([Username], [Password]) VALUES (N'admin', N'123')
INSERT [dbo].[tblAdmin] ([Username], [Password]) VALUES (N'a', N'1')
GO
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:03:01 PM', N'Deletion', N'User #: USR:S312D has been DELETED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:03:03 PM', N'Deletion', N'User #: USR:E3DS3 has been DELETED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:03:06 PM', N'Deletion', N'User #: USR:DSES1 has been DELETED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:43:35 PM', N'Insertion', N'User:asd has been sent registered!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:43:42 PM', N'Deletion', N'User #: USR:EE9QS has been DELETED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:48:42 PM', N'Insertion', N'Order:OrID:F1KOK has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:50:59 PM', N'Insertion', N'Board Short has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:52:26 PM', N'Insertion', N'Board Short has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:52:57 PM', N'Insertion', N'REOrder: RoID:INO3I has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:53:36 PM', N'Insertion', N'Skinny Jeans was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:54:24 PM', N'Insertion', N'Board Short was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 9:02:13 PM', N'Insertion', N'User:xav has been sent registered!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/14/2015 11:20:41 AM', N'Insertion', N'Order:OrID:NPCP6 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/14/2015 11:21:20 AM', N'Insertion', N'Order:OrID:TMVQ0 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/14/2015 11:22:32 AM', N'Insertion', N'Short has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/14/2015 11:22:54 AM', N'Insertion', N'Short has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:18:11 AM', N'Insertion', N'REOrder: RoID:#M1RM has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:18:18 AM', N'Insertion', N'REOrder: RoID:MU3I# has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:18:23 AM', N'Insertion', N'REOrder: RoID:21AGO has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:18:28 AM', N'Insertion', N'REOrder: RoID:PIA3N has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:18:35 AM', N'Insertion', N'REOrder: RoID:MAKAR has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:18:40 AM', N'Insertion', N'REOrder: RoID:MN!KI has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 12:30:37 PM', N'Deletion', N'All data has been DELETED from Users Record!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10-15-2015', N'Deletion', N'All data has been DELETED from Sales Record!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 1:12:36 PM', N'Insertion', N'REOrder: RoID:LGIA3 has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 1:13:41 PM', N'Deletion', N'Item: ''Short'' was DELETED from inventory!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 4:42:36 PM', N'Deletion', N'Item: 123 has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 4:42:40 PM', N'Deletion', N'Item: jkl has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 5:05:03 PM', N'Deletion', N'Item: ''White Short'' was DELETED from inventory!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 5:08:08 PM', N'Insertion', N'White Short has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/17/2015 4:10:19 PM', N'Insertion', N'REOrder: RoID:A2GLG has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/17/2015 4:10:43 PM', N'Insertion', N'White Short was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/17/2015 4:32:41 PM', N'Insertion', N'White Short was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/17/2015 4:43:19 PM', N'Insertion', N'Order:OrID:G7KQQ has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/17/2015 4:43:58 PM', N'Insertion', N'T-Shirt has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 6:37:01 PM', N'Insertion', N'REOrder: RoID:G!PSO has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 6:57:32 PM', N'Insertion', N'T-Shirt was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 7:33:37 PM', N'Updation', N'Item: ''T-Shirt'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 7:39:17 PM', N'Insertion', N'Order:OrID:29QP9 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 7:40:23 PM', N'Insertion', N'Order:OrID:ZN4AY has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 7:40:46 PM', N'Insertion', N'T-Shirt was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 7:41:04 PM', N'Insertion', N'White Shirt has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 7:41:42 PM', N'Insertion', N'Black Short has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'26/01/2021 11:31:39 PM', N'Modification', N'User #:  has been UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'26/01/2021 11:37:40 PM', N'Insertion', N'User:ly has been sent registered!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'26/01/2021 11:41:12 PM', N'Insertion', N'Order:OrID:OHRR6 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 12:34:35 PM', N'Deletion', N'Item:  has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 1:12:12 PM', N'Insertion', N'Order:OrID:F8GH9 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 1:18:13 PM', N'Deletion', N'Item: 10 has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 1:18:17 PM', N'Deletion', N'Item: 33g has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 1:19:07 PM', N'Insertion', N'Order:OrID:1ODVJ has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 4:12:40 PM', N'Deletion', N'Item:  has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:50:36 PM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:50:40 PM', N'Deletion', N'Item:  has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:50:44 PM', N'Deletion', N'Item: 55g has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:51:53 PM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:52:50 PM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:52:55 PM', N'Deletion', N'Item:  has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:52:58 PM', N'Deletion', N'Item:  has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:53:02 PM', N'Deletion', N'Item:  has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:54:38 PM', N'Insertion', N'Order:OrID:TR37B has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:55:32 PM', N'Insertion', N'Order:OrID:M8LMJ has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:08:23 PM', N'Insertion', N'Order:OrID:9BIP1 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:11:02 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:11:17 PM', N'Deletion', N'Item: 500g has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:11:20 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:13:18 PM', N'Insertion', N'Order:OrID:HMS5R has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:16:05 PM', N'Insertion', N'Order:OrID:Y0HE5 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:26:33 PM', N'Insertion', N'Order:OrID:ZMZDF has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:34:45 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:34:58 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:37:33 PM', N'Insertion', N'Order:OrID:YBXD0 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:39:32 PM', N'Insertion', N'Order:OrID:97QPD has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:40:10 PM', N'Insertion', N'Order:OrID:Z8D3Z has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:40:21 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:40:52 PM', N'Insertion', N'Order:OrID:BCC4J has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:40:58 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:45:14 PM', N'Insertion', N'Order:OrID:7JP8U has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:48:16 PM', N'Insertion', N'Order:OrID:VCX6J has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:49:10 PM', N'Deletion', N'Item: dfdf has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:49:17 PM', N'Insertion', N'Order:OrID:XWP4A has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 9:49:28 PM', N'Insertion', N'Order:OrID:N3DY3 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/14/2015 11:23:14 AM', N'Insertion', N'Short has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 5:06:54 PM', N'Insertion', N'Order:OrID:X7IW3 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 1:18:09 PM', N'Deletion', N'Item: 4 has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 8:52:00 PM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:04:31 AM', N'Updation', N'Item: ''Pate'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:04:44 AM', N'Updation', N'Item: ''Pate'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:28:31 AM', N'Updation', N'Item: ''Giò l?a lá'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:31:54 AM', N'Updation', N'Item: ''Giò l?a lá'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:32:01 AM', N'Updation', N'Item: ''Giò l?a lá'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:32:10 AM', N'Updation', N'Item: ''Giò l?a lá'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:36:02 AM', N'Deletion', N'Item: ''Giò l?a lá'' was DELETED from inventory!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:36:13 AM', N'Deletion', N'Item: ''Giò l?a lá'' was DELETED from inventory!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 11:38:38 AM', N'Updation', N'Item: ''Pate'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 7:37:35 PM', N'Insertion', N'Order:OrID:ZWV9F has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:31:09 PM', N'Insertion', N'Order:OrXHCWVAQU has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:32:31 PM', N'Deletion', N'User #: USR:3011A has been DELETED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:32:40 PM', N'Deletion', N'User #: USR:EE123 has been DELETED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:35:10 AM', N'Insertion', N'Order:OrXHCISG0W has been sent to orders!', N'Admin')
GO
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:35:47 AM', N'Insertion', N'Order:OrXHCXUOBU has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:37:38 AM', N'Insertion', N'Order:OrXHCJS27S has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:47:43 AM', N'Insertion', N'Order:OrXHCZ39YS has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:48:06 AM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:49:02 AM', N'Deletion', N'Item: 500g has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:49:08 AM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:49:11 AM', N'Deletion', N'Item: 500g has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:49:18 AM', N'Deletion', N'Item: 500g has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 11:49:22 AM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:21:02 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:21:06 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:21:09 PM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:21:14 PM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:22:07 PM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:23:24 PM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:25:20 PM', N'Deletion', N'All Items from orders were REMOVED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:26:42 PM', N'Insertion', N'Order:OrXHC2WNL9 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:27:50 PM', N'Insertion', N'Order:OrXHCB96OC has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:28:33 PM', N'Insertion', N'Order:OrXHCNYFJ9 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:29:25 PM', N'Insertion', N'Order:OrXHC094DB has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:30:08 PM', N'Insertion', N'Order:OrXHCM5YQC has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:30:59 PM', N'Insertion', N'Order:OrXHCV4M3G has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:32:02 PM', N'Insertion', N'Order:OrXHCC8GBM has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:32:51 PM', N'Insertion', N'Order:OrXHCMCQJN has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:33:28 PM', N'Insertion', N'Order:OrXHCQYML9 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:34:14 PM', N'Insertion', N'Order:OrXHCBXEOV has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:34:40 PM', N'Insertion', N'Order:OrXHCI2R9U has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:35:16 PM', N'Insertion', N'Order:OrXHCJTGUY has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:36:30 PM', N'Insertion', N'Order:OrXHCYGQUW has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:37:24 PM', N'Insertion', N'Order:OrXHCQNAW5 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:38:02 PM', N'Insertion', N'Order:OrXHC2YU9L has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:38:55 PM', N'Insertion', N'Order:OrXHC00DO4 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:39:46 PM', N'Insertion', N'Order:OrXHC4A1JV has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:40:11 PM', N'Insertion', N'Order:OrXHCPILHC has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:40:50 PM', N'Insertion', N'Order:OrXHCF548S has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:43:59 PM', N'Insertion', N'Order:OrXHCL7JQV has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:44:32 PM', N'Insertion', N'Order:OrXHCML42G has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:45:16 PM', N'Insertion', N'Order:OrXHCZ43CW has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:46:03 PM', N'Insertion', N'Order:OrXHC4MPVJ has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:46:42 PM', N'Insertion', N'Order:OrXHCUSHFC has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:47:30 PM', N'Insertion', N'Order:OrXHC3FUA3 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:49:41 PM', N'Insertion', N'Order:OrXHC8BILV has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:51:16 PM', N'Insertion', N'Order:OrXHCLRJ0S has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'01/02/2021 10:37:41 PM', N'Deletion', N'Item: INSYPDZE dã b? xóa t? form nh?p hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'01/02/2021 10:37:46 PM', N'Deletion', N'Item: INSSY210 dã b? xóa t? form nh?p hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'01/02/2021 10:37:50 PM', N'Deletion', N'Item: INSPM4G3 dã b? xóa t? form nh?p hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'01/02/2021 10:37:54 PM', N'Deletion', N'Item: INSPM4G3 dã b? xóa t? form nh?p hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'01/02/2021 10:37:58 PM', N'Deletion', N'Item: INSPM4G3 dã b? xóa t? form nh?p hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021 10:16AM', N'Insertion', N'Conversion:CNV75BBG Ðã du?c thêm vào!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021 10:28AM', N'Deletion', N'Item: vcvcv dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021 10:29AM', N'Insertion', N'Conversion:CNVORW2R Ðã du?c thêm vào!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021 10:29AM', N'Deletion', N'Item: CNV75BBG dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  2:45PM', N'Insertion', N'Unite :UNPUCJZD dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  6:28PM', N'Deletion', N'Item: CNVBUZ2R dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  6:30PM', N'Deletion', N'Item: UNPVTK9C dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  6:30PM', N'Deletion', N'Item: UNPUCJZD dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:08PM', N'Insertion', N'Unite :UNPBVM7V dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:08PM', N'Insertion', N'Unite :UNP8NQWS dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:08PM', N'Insertion', N'Unite :UNPC1OTQ dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:10PM', N'Insertion', N'Unite :UNPFA4QX dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:10PM', N'Insertion', N'Unite :UNPNXD7Q dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:16PM', N'Insertion', N'Unite :UNPTM38N dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:16PM', N'Insertion', N'Unite :UNP8FTUG dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:16PM', N'Insertion', N'Unite :UNPGKT9D dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:17PM', N'Insertion', N'Unite :UNPB0M93 dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:17PM', N'Insertion', N'Unite :UNP4NFZQ dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:17PM', N'Insertion', N'Unite :UNPAVSUM dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:17PM', N'Deletion', N'Item: UNPB0M93 dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:21:11 PM', N'Insertion', N'Black T-Shirt has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:21:32 PM', N'Insertion', N'Black T-Shirt has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10-15-2015', N'Deletion', N'All data has been DELETED from Users Record!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 4:46:05 PM', N'Insertion', N'Order:OrID:MJH62 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 5:01:08 PM', N'Insertion', N'White Short has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 7:43:54 PM', N'Insertion', N'T-Shirt was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'26/01/2021 11:40:05 PM', N'Updation', N'Item: ''T-Shirt'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'26/01/2021 11:40:11 PM', N'Updation', N'Item: ''Black Short'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'26/01/2021 11:40:19 PM', N'Updation', N'Item: ''White Shirt'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:50:26 PM', N'Insertion', N'Order:OrXHC2N1L2 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:53:33 PM', N'Insertion', N'Order:OrXHC5UJSK has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:54:29 PM', N'Insertion', N'Order:OrXHC7L8F0 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:55:14 PM', N'Insertion', N'Order:OrXHCC5VJY has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:55:56 PM', N'Insertion', N'Order:OrXHCFYJQ1 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:56:39 PM', N'Insertion', N'Order:OrXHCJ0CSY has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:57:20 PM', N'Insertion', N'Order:OrXHCN2HYV has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:57:52 PM', N'Insertion', N'Order:OrXHC69SUK has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:58:25 PM', N'Insertion', N'Order:OrXHC9FD4N has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:59:10 PM', N'Insertion', N'Order:OrXHCGCNBN has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 12:59:57 PM', N'Insertion', N'Order:OrXHCZAAAS has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:00:34 PM', N'Insertion', N'Order:OrXHC88AF9 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:01:36 PM', N'Insertion', N'Order:OrXHCP1C4G has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:02:16 PM', N'Insertion', N'Order:OrXHCQV094 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:03:02 PM', N'Insertion', N'Order:OrXHC1Q0BB has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:03:43 PM', N'Insertion', N'Order:OrXHC56QM5 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:04:33 PM', N'Insertion', N'Order:OrXHCWKIS5 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:05:15 PM', N'Insertion', N'Order:OrXHCFMDA8 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:05:54 PM', N'Insertion', N'Order:OrXHCM0983 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:06:46 PM', N'Insertion', N'Order:OrXHC2O1KM has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:07:29 PM', N'Insertion', N'Order:OrXHCZAS8S has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:08:03 PM', N'Insertion', N'Order:OrXHCKYNX5 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:08:31 PM', N'Insertion', N'Order:OrXHC30ZHI has been sent to orders!', N'Admin')
GO
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:08:59 PM', N'Insertion', N'Order:OrXHCK0NQ5 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:09:55 PM', N'Insertion', N'Order:OrXHC8CQ83 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:10:32 PM', N'Insertion', N'Order:OrXHCU9HZ5 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:11:16 PM', N'Insertion', N'Order:OrXHCMKYEA has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:11:54 PM', N'Insertion', N'Order:OrXHCNUP0P has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:12:32 PM', N'Insertion', N'Order:OrXHCT3H9B has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:13:08 PM', N'Insertion', N'Order:OrXHCYHV91 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:13:48 PM', N'Insertion', N'Order:OrXHCL7W4U has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:14:19 PM', N'Insertion', N'Order:OrXHCBS5PO has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'29/01/2021 1:14:54 PM', N'Insertion', N'Order:OrXHCOJ7YL has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021 10:28AM', N'Insertion', N'Conversion:CNVLUQ86 Ðã du?c thêm vào!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  3:01PM', N'Insertion', N'Unite :UNPTDYOV dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:16PM', N'Deletion', N'Item: UNPNXD7Q dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:18:56 AM', N'Deletion', N'Item: Short has been removed from Receive Form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:19:31 AM', N'Insertion', N'Short was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:19:38 AM', N'Insertion', N'Skinny Jeans was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:19:46 AM', N'Insertion', N'Board Short was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:19:54 AM', N'Insertion', N'Black T-Shirt was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 11:20:01 AM', N'Insertion', N'White T-Shirt was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10-15-2015', N'Deletion', N'All data has been DELETED from Sales Record!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 1:06:47 PM', N'Insertion', N'Order:OrID:9269O has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 2:28:06 PM', N'Insertion', N'Order:OrID:460QH has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 2:28:35 PM', N'Insertion', N'Order:OrID:OP4KV has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 2:28:42 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 2:28:50 PM', N'Insertion', N'Order:OrID:1YK9Y has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 2:28:55 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  3:01PM', N'Insertion', N'Unite :UNPVTK9C dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:16PM', N'Deletion', N'Item: UNPFA4QX dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:04:50 PM', N'Insertion', N'User:wat has been sent registered!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:17:26 PM', N'Insertion', N'White T-Shirt has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:47:21 PM', N'Insertion', N'Skinny Jeans has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:47:32 PM', N'Insertion', N'Skinny Jeans has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/18/2015 7:43:22 PM', N'Insertion', N'REOrder: RoID:L3AIM has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/15/2015 1:12:59 PM', N'Insertion', N'Short was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 12:58:02 PM', N'Deletion', N'Item: 200g has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 12:58:37 PM', N'Insertion', N'Order:OrID:T1QG8 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 10:19:33 AM', N'Updation', N'Item: ''Giò l?a lá'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:16:24 PM', N'Insertion', N'Order:OrID:R7AWM has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:20:35 PM', N'Insertion', N'Order:OrID:EPJVZ has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:20:46 PM', N'Deletion', N'Item: White T-Shirt has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:46:33 PM', N'Insertion', N'Order:OrID:JG60T has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:53:10 PM', N'Insertion', N'REOrder: RoID:IARNU has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'26/01/2021 11:38:09 PM', N'Modification', N'User #: USR:S3UEE has been UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 8:00:24 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 8:00:28 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 8:00:36 PM', N'Insertion', N'Order:OrXHCGN773 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 8:00:39 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 8:00:43 PM', N'Insertion', N'Order:OrXHCP2W4M has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 8:00:47 PM', N'Deletion', N'Item: 500g has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 8:00:51 PM', N'Insertion', N'Order:OrXHCBJ9RD has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'28/01/2021 8:00:55 PM', N'Deletion', N'Item: 1Kg has been removed from orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'01/02/2021 10:38:59 PM', N'Deletion', N'Item: INSCZVG7 dã b? xóa t? form nh?p hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'01/02/2021 10:39:06 PM', N'Deletion', N'Item: INS10KR3 dã b? xóa t? form nh?p hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/13/2015 3:54:05 PM', N'Insertion', N'Board Short was RESTOCKED in the database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'10/17/2015 4:32:17 PM', N'Insertion', N'REOrder: RoID:AM2OG has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'27/01/2021 12:55:47 PM', N'Insertion', N'Order:OrID:LACM5 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'02/02/2021 10:33:26 AM', N'Deletion', N'T?t c? d? li?u Conversion dã b? xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021 10:33AM', N'Insertion', N'Conversion:CNVBUZ2R Ðã du?c thêm vào!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021 10:34AM', N'Insertion', N'Conversion:CNVX9XM0 Ðã du?c thêm vào!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021 10:34AM', N'Insertion', N'Conversion:CNVYBKLF Ðã du?c thêm vào!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:20PM', N'Insertion', N'Unite :UNP3TTTF dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:20PM', N'Insertion', N'Unite :UNPZIK64 dã du?c t?o ra!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:17PM', N'Deletion', N'Item: UNPAVSUM dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:17PM', N'Deletion', N'Item: UNPTM38N dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:17PM', N'Deletion', N'Item: UNP8FTUG dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  2 2021  9:18PM', N'Deletion', N'Item: UNPGKT9D dã du?c xóa!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:19PM', N'Deletion', N'Item: SALVQHLK đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:20PM', N'Deletion', N'Item: SALLIYZ1 đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:22PM', N'Deletion', N'Item: SALPIM20 đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:23PM', N'Deletion', N'Item:  đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:23PM', N'Deletion', N'Item: SALHUK27 đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:25PM', N'Deletion', N'Item: SALX06SK đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:25PM', N'Deletion', N'Item: SALK0AVE đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:25PM', N'Deletion', N'Item: SAL24N9E đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:25PM', N'Deletion', N'Item: SALYSH50 đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:25PM', N'Deletion', N'Item: SALUKUBW đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:26PM', N'Deletion', N'Item: SALBUZ0M đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:26PM', N'Deletion', N'Item:  đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:27PM', N'Deletion', N'Item: SALXY97D đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  2:27PM', N'Deletion', N'Item: SALBYTAV đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  8:37PM', N'Deletion', N'Item: SALXQRRV đã bị xóa từ form bán hàng!', N'ly')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'Feb  3 2021  8:37PM', N'Deletion', N'Item: SALLII4K đã bị xóa từ form bán hàng!', N'ly')
GO
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:XZMZF', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:TQFJ3', N'Skinny Jeans', N'450', N'1', N'450.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:PAUYU', N'Board Short', N'600', N'1', N'600.00', N'Male', N'Small', N'hasros', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'liela', N'ID:1GK6W', N'White T-Shirt', N'300', N'1', N'300.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'liela', N'ID:3W50J', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'liela', N'ID:OZT59', N'Black T-Shirt', N'250', N'1', N'250.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'xav', N'ID:1GK6W', N'White T-Shirt', N'300', N'1', N'300.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'xav', N'ID:3W50J', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'xav', N'ID:OZT59', N'Black T-Shirt', N'250', N'1', N'250.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:1GK6W', N'White T-Shirt', N'300', N'6', N'1,800.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:7GS6C', N'White Short', N'700', N'1', N'700.00', N'Male', N'Small', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:TQFJ3', N'Skinny Jeans', N'450', N'5', N'2,250.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:OZT59', N'Black T-Shirt', N'250', N'4', N'1,000.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'15', N'9,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'10', N'6,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-18' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'9', N'5,400.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-18' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'50', N'30,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:BI0ZI', N'Black Short', N'200', N'34', N'6,800.00', N'Male', N'Small', N'zat', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:9XDK8', N'White Shirt', N'300', N'35', N'10,500.00', N'Male', N'Medium', N'zaen', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'1', N'600.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
GO
INSERT [dbo].[tblConversion] ([ID], [fromCon], [fromNum], [toCon], [toNum], [spec], [note]) VALUES (N'CNVBUZ2R', N'Cái', CAST(1 AS Numeric(18, 0)), N'Túi', CAST(1 AS Numeric(18, 0)), N'100-100', N'xong')
INSERT [dbo].[tblConversion] ([ID], [fromCon], [fromNum], [toCon], [toNum], [spec], [note]) VALUES (N'CNVX9XM0', N'Kg', CAST(2 AS Numeric(18, 0)), N'Túi', CAST(100 AS Numeric(18, 0)), N'100-100', N'xong')
INSERT [dbo].[tblConversion] ([ID], [fromCon], [fromNum], [toCon], [toNum], [spec], [note]) VALUES (N'CNVYBKLF', N'Kg', CAST(2 AS Numeric(18, 0)), N'Túi', CAST(100 AS Numeric(18, 0)), N'100-200', N'xong')
GO
INSERT [dbo].[tblCustomer] ([ID], [Name], [Phone], [address], [email], [dateCreate], [dateUpdate], [UserID]) VALUES (N'a', N'ly', N'990', N'dfdf', N'gmail.com', NULL, NULL, NULL)
INSERT [dbo].[tblCustomer] ([ID], [Name], [Phone], [address], [email], [dateCreate], [dateUpdate], [UserID]) VALUES (N'b', N'truong', N'7777', N'ddd', N'yahoo.com', NULL, NULL, NULL)
INSERT [dbo].[tblCustomer] ([ID], [Name], [Phone], [address], [email], [dateCreate], [dateUpdate], [UserID]) VALUES (N'c', N'Khach le', N'3434', N'df', N'33', NULL, NULL, NULL)
INSERT [dbo].[tblCustomer] ([ID], [Name], [Phone], [address], [email], [dateCreate], [dateUpdate], [UserID]) VALUES (N'CUS1QERF', N'Ngô văn Đeo', N'0905687789', N'an hải đông', N'ly', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly')
INSERT [dbo].[tblCustomer] ([ID], [Name], [Phone], [address], [email], [dateCreate], [dateUpdate], [UserID]) VALUES (N'CUSG7UZE', N'Johon', N'0905666770', N'nhà An Trạch', N'ly.truong@gmail.com', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly')
GO
INSERT [dbo].[tblLogin] ([ID], [FullName], [Age], [Address], [Contact], [Username], [Password]) VALUES (N'USR:S3UEE', N'truong van ly', N'40', N'nha o mo', N'10', N'ly', N'123')
INSERT [dbo].[tblLogin] ([ID], [FullName], [Age], [Address], [Contact], [Username], [Password]) VALUES (N'USR:S9SSS', N'Xavier', N'18', N'59 Rizal St., Sta. Cruz, Loreto, Dinagat Islands', N'09195203959', N'xav', N'123')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:41:04 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:42:47 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:45:59 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:57:59 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:58:36 PM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:58:54 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:58:58 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:59:25 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:02:32 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:04:05 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:07:25 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:25:03 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:25:46 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:26:19 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:27:35 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:34:48 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:35:03 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:36:00 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:38:31 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:39:46 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:42:45 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:47:12 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:51:48 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:52:16 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:55:34 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:57:22 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:59:02 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 5:00:54 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 7:14:48 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 7:15:54 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 8:05:45 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 8:12:28 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/14/2015 10:23:57 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/14/2015 10:53:44 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/14/2015 10:59:11 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/14/2015 11:01:56 AM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/14/2015 11:02:12 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:17:45 AM', N'User: liela has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:20:28 AM', N'User: liela has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:21:29 AM', N'User: liela has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:21:33 AM', N'User: liela has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:24:45 AM', N'User: liela has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:26:21 AM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:46:35 AM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:55:12 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:55:57 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:01:20 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:08:47 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:10:17 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:10:54 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:12:15 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:24:19 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:29:09 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:31:14 PM', N'User: liela has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:31:30 PM', N'User: xav has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:32:02 PM', N'User: liela has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:34:37 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:37:33 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:37:50 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-15-2015', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-15-2015', N'User: liela has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-15-2015', N'User: xav has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:39:37 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 1:07:59 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 4:42:26 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 4:45:14 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 4:48:39 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 4:50:05 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 4:51:44 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 4:58:22 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 5:00:29 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 5:04:41 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 8:37:39 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 3:52:43 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-17-2015', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:31:21 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:34:13 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:40:01 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:41:55 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:44:39 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:45:30 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:46:54 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:47:01 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:47:51 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:47:59 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:48:21 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:49:20 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:49:41 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 6:36:43 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 6:53:53 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 6:55:27 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 6:56:59 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-18-2015', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:32:50 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:54:47 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:35:25 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:30:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 4:58:57 PM', N'User: admin has successfully Logged In!', N'Admin')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-17-2015', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:47:31 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 6:49:14 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 6:55:39 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:37:19 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:38:19 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:41:59 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-18-2015', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:42:18 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:51:14 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:52:35 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 2:50:41 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 2:52:58 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 2:53:27 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 2:56:13 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:00:35 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:10:35 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:11:55 PM', N'User: admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:12:00 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-19-2015', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:18:50 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:19:10 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:20:16 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:21:12 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:21:21 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:22:22 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:23:25 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:24:34 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:26:38 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:20:18 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:22:27 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01-26-2021', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:24:16 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01-26-2021', N'User: xav has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:30:53 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:32:12 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:36:04 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:36:49 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:43:55 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:04:54 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:11:24 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:15:32 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:22:16 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:22:49 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:23:25 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:23:46 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:23:53 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:28:15 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:28:25 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:31:18 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:32:30 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:38:10 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:39:49 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:43:31 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:52:27 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:53:28 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 10:06:52 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 10:22:21 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 10:25:57 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 10:48:46 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:07:37 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:16:06 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:18:01 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:19:24 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:22:29 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:27:26 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:38:23 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:38:52 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:40:04 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:47:15 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:03:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:05:47 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:08:45 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:16:23 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:18:19 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:31:32 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:34:30 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:53:57 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:56:49 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:03:56 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:14:27 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:15:39 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:16:06 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:19:44 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:20:14 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:21:52 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:22:41 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:35:17 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:36:47 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:54:27 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 8:09:03 PM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:31:52 PM', N'User: liela has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 9:07:09 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 6:40:55 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 6:50:55 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:30:49 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:43:57 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:49:23 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:51:55 PM', N'User: admin has successfully Logged In!', N'Admin')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:23:08 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:28:19 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:31:11 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:32:34 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:38:20 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:00:49 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:02:07 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:46:05 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:53:47 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:55:38 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:56:18 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 2:09:37 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 2:10:19 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 2:11:48 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 2:44:24 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 2:51:48 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:06:25 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:33:10 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:33:43 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:42:39 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:47:07 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:48:04 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:50:15 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:52:13 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:53:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:54:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:55:48 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:56:58 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:00:55 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:03:10 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:05:38 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:06:46 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:07:26 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:08:11 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:08:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:10:27 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:18:20 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:19:57 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:20:25 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:21:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:22:25 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 4:22:49 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 6:57:22 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 6:57:42 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 6:59:37 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:26:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:47:16 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:01:24 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:03:16 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:05:49 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:06:27 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:08:27 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:16:17 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:27:14 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:30:57 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:44:30 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:45:10 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:47:55 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:48:48 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:50:31 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:10:53 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:12:10 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:19:54 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:20:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:21:04 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:21:40 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:24:28 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:26:24 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:27:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:28:28 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:30:16 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:32:01 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:34:24 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:36:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:38:45 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:39:59 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:40:45 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:43:25 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:44:59 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:50:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:25:53 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:27:24 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:29:56 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:34:05 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:39:02 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:58:24 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:08:30 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:35:20 PM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:52:13 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:20:22 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:47:40 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:56:13 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:05:31 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:32:07 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:37:58 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 3:53:43 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-17-2015', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:36:25 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:42:03 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-19-2015', N'User: wat has Logged out!', N'Cashier')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:11:53 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:14:36 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:24:05 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:25:59 PM', N'User: xav has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:31:13 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:34:33 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:26:22 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:24:27 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:25:30 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:26:14 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:26:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:45:27 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:51:49 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:52:17 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:46:04 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:57:00 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:57:47 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:04:15 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:06:41 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:07:58 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:11:25 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:11:52 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:12:32 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:12:50 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:13:19 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:13:39 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:14:31 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:15:05 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:19:25 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:28:27 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:31:49 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:53:22 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:07:55 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:11:03 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:14:02 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:15:04 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:16:18 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:17:37 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:21:26 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:21:41 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:22:15 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:26:58 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:28:57 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:30:06 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:30:52 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:31:45 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:32:55 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:36:49 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:42:17 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 2:14:14 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 2:20:50 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 2:22:11 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 2:25:52 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 2:35:12 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:27:54 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:29:04 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:29:09 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:29:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:45:12 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 8:09:53 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:13:33 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:14:45 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:16:54 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:54:41 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:58:23 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:03:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:04:28 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:05:16 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:06:06 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:19:38 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:22:59 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:24:56 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:27:03 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:31:16 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:32:09 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:36:29 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 11:33:20 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 11:34:45 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 11:37:27 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:59:21 PM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 8:37:15 PM', N'User: admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 8:45:05 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:22:28 AM', N'User: liela has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:24:09 AM', N'User: liela has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:25:26 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:52:45 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:59:15 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:00:05 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:02:46 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:18:22 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:31:43 PM', N'User: xav has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:39:20 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:43:00 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:50:46 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:52:11 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:55:09 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:56:54 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 1:19:30 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 1:24:25 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:06:16 PM', N'User: admin has successfully Logged In!', N'Admin')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:09:41 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/19/2015 3:13:14 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:23:59 AM', N'User: admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:10:34 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:11:31 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:39:11 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:40:20 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:40:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:42:04 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 2:30:30 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:00:59 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:02:03 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:09:05 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:12:05 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:13:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:15:17 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:16:50 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:07:03 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:15:19 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:46:03 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:47:49 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:49:01 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:41:38 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 11:38:43 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 11:39:19 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 11:41:15 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 11:46:27 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 11:47:23 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 11:48:53 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 12:22:02 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 12:23:20 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 12:25:16 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 12:48:51 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:25:33 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:26:04 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:26:32 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:28:04 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:34:06 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:37:49 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:38:02 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:40:07 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:44:03 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:46:09 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:47:31 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:49:15 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:49:54 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:54:17 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:54:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 2:05:37 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 2:05:47 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'30/01/2021 9:54:01 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'30/01/2021 10:17:32 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'30/01/2021 10:29:10 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 10:52:34 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 10:54:08 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:01:22 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:06:50 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:07:32 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 7:30:03 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 12:06:42 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 12:09:05 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 12:38:36 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:08:47 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:12:02 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 2:06:52 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 2:09:01 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 2:11:13 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 2:12:25 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:28:20 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:29:33 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:38:16 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:40:00 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:43:26 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:13:05 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:58:20 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 3:58:41 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:34:59 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 7:15:06 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:17:56 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:46:48 AM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:30:45 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:40:38 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 3:53:29 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:24:44 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:20:57 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:22:06 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:22:21 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:23:36 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:11:00 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:11:56 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:12:17 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:13:26 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:54:38 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:56:23 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:33:39 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:34:53 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:59:48 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 8:00:07 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:04:39 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:12:53 PM', N'User: wat has successfully Logged In!', N'Cashier')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:14:00 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:14:53 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:24:03 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 12:21:28 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 12:26:54 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 12:36:22 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:35:02 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:35:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:14:55 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:00:16 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:01:16 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:11:52 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:12:09 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:14:33 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:14:58 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:19:17 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:19:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:21:20 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:26:50 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:27:22 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:34:29 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:15:41 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:16:32 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:21:17 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:24:30 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:37:34 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:38:55 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:41:01 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:53:52 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:54:43 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:00:44 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:13:56 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:14:32 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:56:27 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:57:29 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:14:39 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:16:14 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:16:46 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:21:50 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:28:08 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:30:40 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:33:21 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 11:02:19 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:11:36 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:16:27 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:17:38 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:17:45 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:19:32 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:24:55 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:30:43 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:32:22 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:43:34 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:57:54 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:58:27 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 3:01:08 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:03:15 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:28:09 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:29:39 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:30:51 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:07:06 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:08:17 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:12:42 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:15:58 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:16:30 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:19:05 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:20:31 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:23:13 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:23:59 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:57:12 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 9:23:09 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:31:25 PM', N'User: liela has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:39:03 PM', N'User: xav has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 1:15:27 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:34:10 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'26/01/2021 11:36:26 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:23:16 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:23:48 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:38:28 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 10:53:31 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:07:39 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:58:09 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:09:45 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 12:10:14 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:02:10 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:05:45 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:07:56 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:09:01 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:09:35 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:11:40 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:18:04 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:28:09 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:28:40 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:37:20 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:57:38 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 2:12:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 2:52:48 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 2:53:27 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:04:03 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:05:00 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:05:53 PM', N'User: wat has successfully Logged In!', N'Cashier')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:17:40 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:22:28 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:01:28 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:50:00 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:52:49 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:19:16 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:23:20 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:24:12 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 2:37:33 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:32:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:57:37 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:23:09 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:25:20 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:40:06 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:19:16 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:23:47 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:24:44 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:14:04 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:23:07 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:26:33 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:14:16 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:11:35 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:03:00 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 7:14:55 PM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/14/2015 10:24:00 AM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/14/2015 11:32:24 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:17:51 AM', N'User: liela has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 11:46:25 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:05:02 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10-17-2015', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:40:09 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 6:56:00 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:32:23 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:35:34 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:36:08 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/18/2015 7:36:38 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 10:49:38 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:56:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:57:32 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:09:29 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:41:28 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:52:46 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:53:33 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:58:08 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:09:54 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:21:07 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:22:33 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 2:00:24 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 2:01:00 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:48:25 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:53:20 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:55:38 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:55:48 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:00:23 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:27:51 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:14:56 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:26:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/13/2015 4:00:56 PM', N'User: AdminInvi has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:13:11 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:31:10 PM', N'User: wat has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 12:38:47 PM', N'User: liela has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 4:43:22 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/15/2015 5:10:07 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 3:54:01 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'10/17/2015 4:48:48 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:44:20 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:46:11 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:09:32 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:10:24 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:10:53 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:11:41 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:19:58 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:29:14 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:40:10 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:42:25 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:43:51 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:54:42 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:55:39 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:57:11 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:59:15 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:05:13 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:20:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:21:34 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:22:44 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:23:54 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:33:49 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:37:16 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:14:41 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:52:24 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:32:52 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:37:51 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:16:44 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:37:34 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:27:14 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:48:56 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:55:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:56:53 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:58:24 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:03:48 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:04:43 PM', N'User: ly has successfully Logged In!', N'Cashier')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:06:14 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:07:07 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:09:07 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:13:52 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:15:09 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:23:20 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:32:38 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:48:11 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 9:54:43 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 11:29:41 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:30:24 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:31:25 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 1:31:39 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:29:25 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:30:31 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:30:56 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:31:55 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:37:04 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 7:38:37 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:39:12 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 8:46:28 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 2:39:30 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:37:02 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:38:40 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:01:38 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:02:32 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:03:13 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:08:52 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:09:17 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 12:24:34 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:28:28 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:30:00 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:49:24 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:50:34 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:54:33 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:28:20 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:30:16 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:35:01 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 2:44:46 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:27:44 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:27:53 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'27/01/2021 3:35:52 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 7:29:10 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:41:29 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:01:50 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:07:26 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:37:20 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:37:53 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:38:40 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:39:17 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:40:05 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:41:09 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:42:00 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:42:35 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:44:14 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:44:59 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:16:35 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:19:53 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 6:20:24 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:33:50 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:34:18 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:35:12 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:35:33 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:38:06 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 11:40:25 AM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 8:03:33 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 8:04:46 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 8:06:17 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:06:07 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:26:26 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 9:51:46 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:11:02 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:11:48 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'28/01/2021 10:12:13 PM', N'User: wat has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:12:52 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:13:51 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:48:41 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:49:00 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:50:29 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:52:56 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 10:20:30 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'29/01/2021 1:48:04 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'31/01/2021 11:20:17 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 12:31:46 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:23:00 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:24:03 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 1:31:18 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:31:30 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 4:36:14 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 5:36:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:32:15 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:37:35 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 6:40:38 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 10:16:33 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'02/02/2021 9:24:32 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:10:59 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'01/02/2021 11:12:50 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:43:06 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:44:42 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:46:50 AM', N'User: ly has successfully Logged In!', N'Cashier')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:51:43 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:51:58 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:03:23 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:04:02 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:24:33 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:25:05 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:44:32 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:51:11 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:52:48 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:54:42 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:01:56 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:11:36 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:55:01 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:04:53 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:09:43 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:12:15 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:29:48 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:30:27 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:33:32 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:34:21 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:35:41 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:37:05 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:37:50 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 1:41:03 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 1:41:11 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 1:41:19 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 1:45:51 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 1:54:55 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 1:55:34 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 1:56:55 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:04:43 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:22:47 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:27:04 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:29:35 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:30:07 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:34:29 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:59:17 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 6:52:55 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 6:57:47 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:07:10 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:10:16 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:13:34 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:17:29 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:17:48 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:20:35 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:21:43 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:25:53 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:26:46 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:29:56 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:32:08 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:44:39 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:45:13 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:03:20 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:10:06 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:15:36 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:20:04 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:20:41 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:34:55 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:39:03 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:39:27 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:39:41 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:41:41 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:06:03 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:52:18 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:52:39 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:53:21 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:57:32 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:00:19 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:00:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:02:14 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:03:22 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:06:39 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:12:12 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:21:06 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:22:55 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:23:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:27:02 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:35:43 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:56:57 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:57:40 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:58:54 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:27:28 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:55:35 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:56:15 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:58:46 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:38:04 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:11:10 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:11:40 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:19:13 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:19:58 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:38:13 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:39:37 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:40:11 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:43:41 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:45:28 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:47:35 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:10:08 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:10:53 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:12:02 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:14:44 PM', N'User: ly has successfully Logged In!', N'Cashier')
GO
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:15:50 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:18:52 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:20:51 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:50:12 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:50:52 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 10:05:21 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 10:19:50 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 10:21:32 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 10:42:30 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 10:43:57 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 10:43:58 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 11:21:40 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 11:44:54 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 11:46:39 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 11:54:57 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:11:55 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:22:14 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:22:50 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:25:55 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:27:07 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:43:41 AM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:15:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:06:07 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:07:25 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:08:14 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:09:51 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:50:06 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:22:25 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:25:12 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:14:39 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:52:11 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 3:01:37 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 3:04:46 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:48:37 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:51:12 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:08:53 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 12:28:13 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:39:22 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:40:26 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:46:23 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:47:09 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:19:43 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:50:06 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:51:12 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:29:14 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:30:46 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:31:28 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:48:26 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:48:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'04/02/2021 10:44:00 AM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:21:39 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 2:39:01 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:43:02 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:53:19 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:54:26 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:56:00 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:57:41 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 7:58:52 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 9:55:33 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:09:18 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 10:10:57 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:29:31 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:30:55 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 8:31:59 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:02:19 PM', N'User: ly has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'03/02/2021 11:03:42 PM', N'User: ly has successfully Logged In!', N'Cashier')
GO
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:1L9NG', N'Công ty tân hiệp phát')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:AGDRU', N'Bánh mỳ đồng tiến')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:MYSFI', N'Tân Hiệp Phát')
GO
INSERT [dbo].[tblNewOrder] ([IDOrder], [PID], [Descrip], [Price], [NetPrice], [Type], [Size], [Brand], [Stock], [Manufacturer], [DateOrder], [DateDeliver], [CritLimit]) VALUES (N'OrID:OHRR6', N'ID:YR11F', N'ao1', N'1000', N'100', N'Male', N'Medium', N'j', N'1', N'lel company', N'26/01/2021 11:41:10 PM', N'27/01/2021 11:40:56 PM', N'1')
GO
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD05JID', N'Dăm Bông truyền thống', CAST(260000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Cây tròn', CAST(184000 AS Numeric(18, 0)), CAST(202500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD08WVI', N'Bò Viên GT', CAST(39000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'80 Viên', CAST(28000 AS Numeric(18, 0)), CAST(31000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'80 Viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD0XK6E', N'Cá viên trứng cút', CAST(58000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'15-16 viên', CAST(40500 AS Numeric(18, 0)), CAST(44500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'15-16 viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD36AAB', N'Giò lụa Bò đặt biệt', CAST(110000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Túi lá công nghiệp', CAST(77500 AS Numeric(18, 0)), CAST(85500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi lá công nghiệp')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD42RPM', N'Pate (loại 2)', CAST(96000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Trung bình', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Túi kẹp chỉ', CAST(67000 AS Numeric(18, 0)), CAST(74000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi kẹp chỉ')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD4IR9E', N'Xúi Mại Thịt GT', CAST(73000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'33 Viên', CAST(51500 AS Numeric(18, 0)), CAST(56500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'33 Viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD5DWCQ', N'Bò viên phở', CAST(88000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'(10-20-40-80 viên/kg)', CAST(62500 AS Numeric(18, 0)), CAST(68500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'(10-20-40-80 viên/kg)')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD6US2E', N'Jambon', CAST(91000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Cây tròn', CAST(64000 AS Numeric(18, 0)), CAST(70500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD8Q046', N'Cá viên rau củ (GT)', CAST(38000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'80 Viên', CAST(26000 AS Numeric(18, 0)), CAST(29000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'80 Viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD8R5IA', N'Sốt Tiêu Đen', CAST(43000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Túi 500g', CAST(30500 AS Numeric(18, 0)), CAST(33500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi 500g')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD9DCM6', N'Pate', CAST(105000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Trung bình', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Túi kẹp chỉ', CAST(74000 AS Numeric(18, 0)), CAST(81500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi kẹp chỉ')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD9K2H2', N'Nhân Hamburger Bò', CAST(110000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'400g', N'10 lát tròn/Túi', CAST(77000 AS Numeric(18, 0)), CAST(85000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'10 lát tròn/Túi')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD9KKK2', N'Xúc xích tỏi Bratwurst', CAST(118000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Cây tròn', CAST(83000 AS Numeric(18, 0)), CAST(91500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GOD9YAAT', N'Sốt Chanh Dây', CAST(72000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Túi 500g', CAST(50500 AS Numeric(18, 0)), CAST(55500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi 500g')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODA0JLL', N'Jambon (không da)', CAST(176000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Cây tròn/Vuông', CAST(124000 AS Numeric(18, 0)), CAST(136500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn/Vuông')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODB6XVI', N'Chả hoa tam sắc', CAST(128000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Cây 500g', CAST(99500 AS Numeric(18, 0)), CAST(99550 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây 500g')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODB84IV', N'Thịt viên trứng cút', CAST(69000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'15-16 viên', CAST(48500 AS Numeric(18, 0)), CAST(53500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'15-16 viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODBXAVB', N'Giờ lụa đặt biệt', CAST(72000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Túi lá công nghiệp', CAST(50500 AS Numeric(18, 0)), CAST(55500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi lá công nghiệp')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODBYAUW', N'Jambon TX (Loại 3)', CAST(130000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1KG', N'Cây tròn', CAST(99000 AS Numeric(18, 0)), CAST(101000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODCJ9RS', N'Nhân Hamburger Heo', CAST(84000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'400g', N'10 lát tròn/Túi', CAST(59000 AS Numeric(18, 0)), CAST(65000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'10 lát tròn/Túi')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODCP4KC', N'Pate (loại 2)', CAST(49000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Trung bình', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500Kg', N'Túi kẹp chỉ', CAST(34500 AS Numeric(18, 0)), CAST(38000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi kẹp chỉ')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODDKAT5', N'Xúc xích Berlin', CAST(69000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'10 Cây', CAST(48500 AS Numeric(18, 0)), CAST(53500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'10 Cây')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODDWZ5T', N'Pate', CAST(54000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Trung bình', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500Kg', N'Túi kẹp chỉ', CAST(38000 AS Numeric(18, 0)), CAST(42000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi kẹp chỉ')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODE4T2U', N'Giò lụa lá (Nóng)', CAST(130000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Gói lá chuối', CAST(92000 AS Numeric(18, 0)), CAST(101000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Gói lá chuối')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODEF0WE', N'Jambon', CAST(182000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1KG', N'Cây tròn', CAST(128000 AS Numeric(18, 0)), CAST(140000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODFI24U', N'Giò thủ', CAST(69000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500Kg', N'Cây tròn', CAST(48500 AS Numeric(18, 0)), CAST(53500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODHHKPI', N'Xúc xích tỏi Bratwurst', CAST(59000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500Kg', N'Cây tròn', CAST(41500 AS Numeric(18, 0)), CAST(45500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODHLSV5', N'Pate quê hương', CAST(140000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Trung bình', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Túi kẹp chỉ', CAST(99000 AS Numeric(18, 0)), CAST(109000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi kẹp chỉ')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODHM0HC', N'Xúi mại trứng muối', CAST(97000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'17 Viên', CAST(68500 AS Numeric(18, 0)), CAST(75500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'17 Viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODIPNDX', N'Giò bị', CAST(110000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1KG', N'Cây tròn', CAST(77000 AS Numeric(18, 0)), CAST(85000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODJIDNL', N'Mai ghẹ tứ vị', CAST(104000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'400g', N'10 Mai', CAST(73000 AS Numeric(18, 0)), CAST(80500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'10 Mai')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODJJNYD', N'Xúc xích Cocktai', CAST(61000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'25 Cây', CAST(42500 AS Numeric(18, 0)), CAST(47000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'25 Cây')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODL2EZY', N'Chà Bông (Xù)', CAST(279000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Túi 1Kg', CAST(197000 AS Numeric(18, 0)), CAST(217000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi 1Kg')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODL7OY5', N'Bò Viên GT', CAST(17000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'200g', N'32 Viên', CAST(11800 AS Numeric(18, 0)), CAST(13000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'32 Viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODLIFYM', N'Chả bách vị trứng muối', CAST(150000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Con cá 500g', CAST(95000 AS Numeric(18, 0)), CAST(104500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Con cá 500g')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODME5T8', N'Chả Quế SA', CAST(63000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Bánh vuông', CAST(44500 AS Numeric(18, 0)), CAST(49000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Bánh vuông')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODMHQLW', N'Cá Viên GT', CAST(37000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'80 Viên', CAST(26000 AS Numeric(18, 0)), CAST(28500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'80 Viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODP8T0A', N'Giò lụa Bò', CAST(76000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Túi lá công nghiệp', CAST(53500 AS Numeric(18, 0)), CAST(59000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi lá công nghiệp')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODPEDH2', N'Xúc xích hồ lô', CAST(76000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'50 viên', CAST(53500 AS Numeric(18, 0)), CAST(59000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'50 viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODPWNKH', N'Jambon 2', CAST(165000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Cây tròn', CAST(117000 AS Numeric(18, 0)), CAST(128500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODQMXLX', N'Giò bị', CAST(55000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500KG', N'Cây tròn', CAST(38500 AS Numeric(18, 0)), CAST(42500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODSB1I4', N'Tôm Viên GT', CAST(40000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'80 Viên', CAST(28000 AS Numeric(18, 0)), CAST(31000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'80 Viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODT3Q48', N'Tôm Viên GT', CAST(17000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'200g', N'32 Viên', CAST(11800 AS Numeric(18, 0)), CAST(13000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'32 Viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODTJM28', N'Giò lụa Bò (Lớn)', CAST(146000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Cây tròn', CAST(103000 AS Numeric(18, 0)), CAST(113500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODU8X7E', N'Nhân Hamburger Bò (Loại 2)', CAST(81000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'400g', N'10 lát tròn/Túi', CAST(57000 AS Numeric(18, 0)), CAST(63000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'10 lát tròn/Túi')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODUJX0E', N'Nhân Hamburger Gà', CAST(74000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'400g', N'10 lát tròn/Túi', CAST(52000 AS Numeric(18, 0)), CAST(575000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'10 lát tròn/Túi')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODV1TJ2', N'Giò lụa lá', CAST(63000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Túi lá công nghiệp', CAST(44500 AS Numeric(18, 0)), CAST(49000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi lá công nghiệp')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODVG6D4', N'Chà Bông', CAST(160000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Túi 1Kg', CAST(113000 AS Numeric(18, 0)), CAST(124500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi 1Kg')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODVGT05', N'Bơ trứng gà', CAST(88000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Túi 1kg', CAST(62000 AS Numeric(18, 0)), CAST(68500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi 1kg')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODWE80M', N'Nem nướng SA', CAST(93000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'20 Que', CAST(65500 AS Numeric(18, 0)), CAST(72000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'20 Que')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODWJIHC', N'Jambon TX (Thịt xay)', CAST(153000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1KG', N'Cây tròn', CAST(108000 AS Numeric(18, 0)), CAST(119000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODWM0TX', N'Cá Viên GT', CAST(16000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'200g', N'32 Viên', CAST(11000 AS Numeric(18, 0)), CAST(12500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'32 Viên')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODWU8OK', N'Gà Xé', CAST(97000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500g', N'Túi 500g', CAST(68500 AS Numeric(18, 0)), CAST(75500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi 500g')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODWVDBQ', N'Bơ trứng gà', CAST(45000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'500Kg', N'Túi 500kg', CAST(31000 AS Numeric(18, 0)), CAST(34500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi 500kg')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODX4ZJZ', N'Sốt Cà Chua', CAST(29000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'350g', N'Túi 350g', CAST(20000 AS Numeric(18, 0)), CAST(22000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi 350g')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODX8PTI', N'Càng cua bách hoa', CAST(64000 AS Numeric(18, 0)), N'Hàng đông lạnh', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'300g', N'10 Càng', CAST(45000 AS Numeric(18, 0)), CAST(49500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'10 Càng')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODXBR85', N'Giò thủ', CAST(137000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Cây tròn', CAST(97000 AS Numeric(18, 0)), CAST(106500 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODYTG8V', N'Chà Bông ( Đặt Biêt)', CAST(310000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Túi 1Kg', CAST(219000 AS Numeric(18, 0)), CAST(241000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Túi 1Kg')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODZAMDQ', N'Jambon truyền thống', CAST(211000 AS Numeric(18, 0)), N'-', N'-', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'1Kg', N'Cây tròn', CAST(149000 AS Numeric(18, 0)), CAST(164000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'Cây tròn')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit], [weight], [specification], [PriceAgency], [PriceStore], [MFG], [EXP], [EXPMonth], [Note]) VALUES (N'GODZSVRM', N'Xúc xích Berlin', CAST(29000 AS Numeric(18, 0)), N'Hàng thực phẩm khô', N'Nhỏ', NULL, CAST(0 AS Numeric(18, 0)), NULL, N'-', N'', N'200g', N'4 Cây', CAST(20000 AS Numeric(18, 0)), CAST(22000 AS Numeric(18, 0)), CAST(N'2021-01-29' AS Date), CAST(N'2021-07-29' AS Date), NULL, N'4 Cây')
GO
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:XZMZF', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:TQFJ3', N'Skinny Jeans', N'450', N'1', N'450.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:PAUYU', N'Board Short', N'600', N'1', N'600.00', N'Male', N'Small', N'hasros', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:1GK6W', N'White T-Shirt', N'300', N'1', N'300.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:3W50J', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:OZT59', N'Black T-Shirt', N'250', N'1', N'250.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:1GK6W', N'White T-Shirt', N'300', N'6', N'1,800.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:7GS6C', N'White Short', N'700', N'1', N'700.00', N'Male', N'Small', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:TQFJ3', N'Skinny Jeans', N'450', N'5', N'2,250.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:OZT59', N'Black T-Shirt', N'250', N'4', N'1,000.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'15', N'9,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'10', N'6,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-18' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'9', N'5,400.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-18' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'50', N'30,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:BI0ZI', N'Black Short', N'200', N'34', N'6,800.00', N'Male', N'Small', N'zat', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:9XDK8', N'White Shirt', N'300', N'35', N'10,500.00', N'Male', N'Medium', N'zaen', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'1', N'600.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
GO
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL046SW', N'GOD36AAB', CAST(1 AS Numeric(18, 0)), CAST(110000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(119790 AS Numeric(18, 0)), N'SLDMFXSM', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL0KCRU', N'GOD05JID', CAST(1 AS Numeric(18, 0)), CAST(260000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(283140 AS Numeric(18, 0)), N'SLD0KCRU', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL0YKCH', N'GOD4IR9E', CAST(1 AS Numeric(18, 0)), CAST(73000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'b', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(79497 AS Numeric(18, 0)), N'SLD0YKCH', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL1F4LY', N'GOD36AAB', CAST(1 AS Numeric(18, 0)), CAST(110000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(119790 AS Numeric(18, 0)), N'SLD1F4LY', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', NULL)
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL2JWJB', N'GOD08WVI', CAST(5 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(212355 AS Numeric(18, 0)), N'SLDERAJH', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL3CH7E', N'GOD05JID', CAST(1 AS Numeric(18, 0)), CAST(260000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(283140 AS Numeric(18, 0)), N'SLD3CH7E', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL3OMUX', N'GOD0XK6E', CAST(3 AS Numeric(18, 0)), CAST(100 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(327 AS Numeric(18, 0)), N'SLD8TR59', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'1         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL46WTK', N'GOD4IR9E', CAST(1 AS Numeric(18, 0)), CAST(73000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(79497 AS Numeric(18, 0)), N'SLDUVFFY', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL526O7', N'GOD42RPM', CAST(1 AS Numeric(18, 0)), CAST(96000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(104544 AS Numeric(18, 0)), N'SLD526O7', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL58UFD', N'GOD42RPM', CAST(5 AS Numeric(18, 0)), CAST(96000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'CUS1QERF', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(522720 AS Numeric(18, 0)), N'SLD5Q27K', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL59NAQ', N'GOD05JID', CAST(1 AS Numeric(18, 0)), CAST(260000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(283140 AS Numeric(18, 0)), N'SLDMFXSM', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL5Q7V6', N'GOD5DWCQ', CAST(1 AS Numeric(18, 0)), CAST(88000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(95832 AS Numeric(18, 0)), N'SLDUVFFY', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL5TGGN', N'GOD05JID', CAST(3 AS Numeric(18, 0)), CAST(260000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(849420 AS Numeric(18, 0)), N'SLD8TR59', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL64L3Q', N'GOD36AAB', CAST(1 AS Numeric(18, 0)), CAST(110000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(108900 AS Numeric(18, 0)), N'SLD1I2AI', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL6BHI9', N'GOD36AAB', CAST(1 AS Numeric(18, 0)), CAST(110000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'b', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(119790 AS Numeric(18, 0)), N'SLD0YKCH', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL6UJVE', N'GOD4IR9E', CAST(1 AS Numeric(18, 0)), CAST(73000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(79497 AS Numeric(18, 0)), N'SLD6UJVE', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL6V4BX', N'GOD0XK6E', CAST(1 AS Numeric(18, 0)), CAST(58000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(63162 AS Numeric(18, 0)), N'SLD7R76P', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL6ZYPB', N'GOD4IR9E', CAST(1 AS Numeric(18, 0)), CAST(51500 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(56084 AS Numeric(18, 0)), N'SLD8TR59', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'1         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL7R76P', N'GOD05JID', CAST(1 AS Numeric(18, 0)), CAST(184000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(200376 AS Numeric(18, 0)), N'SLD7R76P', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'1         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL8CBS6', N'GOD0XK6E', CAST(3 AS Numeric(18, 0)), CAST(40500 AS Numeric(18, 0)), CAST(N'2021-02-02' AS Date), N'a', N'45454', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(132314 AS Numeric(18, 0)), N'SLDV8608', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'1         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL8YAO8', N'GOD05JID', CAST(1 AS Numeric(18, 0)), CAST(260000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(283140 AS Numeric(18, 0)), N'SLD8YAO8', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SAL9SFXC', N'GOD42RPM', CAST(8 AS Numeric(18, 0)), CAST(96000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'CUS1QERF', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(836352 AS Numeric(18, 0)), N'SLD5Q27K', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALBN6E5', N'GOD9KKK2', CAST(1 AS Numeric(18, 0)), CAST(118000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(128502 AS Numeric(18, 0)), N'SLDHCMJV', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', NULL)
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALBOCTZ', N'GOD08WVI', CAST(1 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'a', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(42471 AS Numeric(18, 0)), N'SLDBOCTZ', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALCBO8Q', N'GOD05JID', CAST(1 AS Numeric(18, 0)), CAST(260000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(283140 AS Numeric(18, 0)), N'SLDCBO8Q', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALE7N0V', N'GODB84IV', CAST(1 AS Numeric(18, 0)), CAST(69000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(75141 AS Numeric(18, 0)), N'SLDHCMJV', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', NULL)
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALELSLX', N'GOD05JID', CAST(1 AS Numeric(18, 0)), CAST(260000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(283140 AS Numeric(18, 0)), N'SLDELSLX', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALERAJH', N'GOD08WVI', CAST(2 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(84942 AS Numeric(18, 0)), N'SLDERAJH', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALHB8FG', N'GOD08WVI', CAST(1 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(42471 AS Numeric(18, 0)), N'SLDMFXSM', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALHCMJV', N'GOD8R5IA', CAST(1 AS Numeric(18, 0)), CAST(43000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(46827 AS Numeric(18, 0)), N'SLDHCMJV', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', NULL)
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALM9FZN', N'GOD08WVI', CAST(1 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(42471 AS Numeric(18, 0)), N'SLDM9FZN', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALNGZNO', N'GOD9DCM6', CAST(5 AS Numeric(18, 0)), CAST(105000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(571725 AS Numeric(18, 0)), N'SLDNGZNO', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALNNYQH', N'GOD42RPM', CAST(1 AS Numeric(18, 0)), CAST(96000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(104544 AS Numeric(18, 0)), N'SLDNNYQH', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', NULL)
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALPLJ21', N'GOD4IR9E', CAST(1 AS Numeric(18, 0)), CAST(73000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(79497 AS Numeric(18, 0)), N'SLD526O7', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALQ4OFM', N'GOD05JID', CAST(1 AS Numeric(18, 0)), CAST(260000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(283140 AS Numeric(18, 0)), N'SLDQ4OFM', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'1         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALQTO6A', N'GODBYAUW', CAST(1 AS Numeric(18, 0)), CAST(130000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(141570 AS Numeric(18, 0)), N'SLDHCMJV', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', NULL)
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALTJO4C', N'GOD08WVI', CAST(1 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(42471 AS Numeric(18, 0)), N'SLD3CH7E', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALUEXHW', N'GOD08WVI', CAST(1 AS Numeric(18, 0)), CAST(31000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(33759 AS Numeric(18, 0)), N'SLD7R76P', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'2         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALUHBL7', N'GOD42RPM', CAST(1 AS Numeric(18, 0)), CAST(96000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(104544 AS Numeric(18, 0)), N'SLDHCMJV', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', NULL)
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALUVFFY', N'GOD8R5IA', CAST(1 AS Numeric(18, 0)), CAST(43000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(46827 AS Numeric(18, 0)), N'SLDUVFFY', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALV8608', N'GOD0XK6E', CAST(1 AS Numeric(18, 0)), CAST(58000 AS Numeric(18, 0)), CAST(N'2021-02-19' AS Date), N'b', N'fgfgfg', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(63162 AS Numeric(18, 0)), N'SLDV8608', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALW0UND', N'GOD4IR9E', CAST(1 AS Numeric(18, 0)), CAST(73000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(79497 AS Numeric(18, 0)), N'SLD1I2AI', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALWBD6I', N'GOD9DCM6', CAST(1 AS Numeric(18, 0)), CAST(105000 AS Numeric(18, 0)), CAST(N'2021-02-04' AS Date), N'CUSG7UZE', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(114345 AS Numeric(18, 0)), N'SLDHCMJV', CAST(N'2021-02-04' AS Date), CAST(N'2021-02-04' AS Date), N'ly', NULL)
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALXAD7L', N'GOD08WVI', CAST(1 AS Numeric(18, 0)), CAST(39000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(42471 AS Numeric(18, 0)), N'SLDXAD7L', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALXJT14', N'GOD36AAB', CAST(1 AS Numeric(18, 0)), CAST(110000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(119790 AS Numeric(18, 0)), N'SLDQ4OFM', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
INSERT [dbo].[tblSales] ([ID], [IDProduct], [numberSale], [priceSale], [dateSale], [IDCustomer], [note], [discount], [tax], [totalsale], [IDBill], [dateCreate], [dateupdate], [IDUser], [kindofSale]) VALUES (N'SALXKDO9', N'GOD42RPM', CAST(1 AS Numeric(18, 0)), CAST(96000 AS Numeric(18, 0)), CAST(N'2021-02-03' AS Date), N'c', N'', CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(104544 AS Numeric(18, 0)), N'SLDXKDO9', CAST(N'2021-02-03' AS Date), CAST(N'2021-02-03' AS Date), N'ly', N'3         ')
GO
INSERT [dbo].[tblStore] ([ID], [Name], [Note], [Location], [CreateDate], [UpdateDate], [DeleteDate], [UserID]) VALUES (N'STR2XUJG', N'Tủ Đông 2', N'Hàng loại lớn', N'Cửa ra vào', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[tblStore] ([ID], [Name], [Note], [Location], [CreateDate], [UpdateDate], [DeleteDate], [UserID]) VALUES (N'STR498GE', N'Tủ Đông 1', N'Hàng loại lớn', N'Cửa ra vào', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
INSERT [dbo].[tblStore] ([ID], [Name], [Note], [Location], [CreateDate], [UpdateDate], [DeleteDate], [UserID]) VALUES (N'STRQD4M3', N'Tủ lạnh Lớn', N'chỉ chứa hàng đông lanh', N'Nhà sau', CAST(N'2021-02-01' AS Date), CAST(N'2021-02-01' AS Date), NULL, N'ly')
GO
INSERT [dbo].[tblUnitConversion] ([ID], [IDProduct], [IDUnit], [dateApply], [dateCreate], [dateUpdate], [IDUser], [keyexist]) VALUES (N'UNP3TTTF', N'GOD05JID', N'CNVBUZ2R', CAST(N'2021-02-02' AS Date), CAST(N'2021-02-02' AS Date), NULL, N'ly', N'GOD05JIDCNVBUZ2R')
INSERT [dbo].[tblUnitConversion] ([ID], [IDProduct], [IDUnit], [dateApply], [dateCreate], [dateUpdate], [IDUser], [keyexist]) VALUES (N'UNPZIK64', N'GOD08WVI', N'CNVX9XM0', CAST(N'2021-02-02' AS Date), CAST(N'2021-02-02' AS Date), NULL, N'ly', N'GOD08WVICNVX9XM0')
INSERT [dbo].[tblUnitConversion] ([ID], [IDProduct], [IDUnit], [dateApply], [dateCreate], [dateUpdate], [IDUser], [keyexist]) VALUES (N'UNP4NFZQ', N'GOD0XK6E', N'CNVYBKLF', CAST(N'2021-02-02' AS Date), CAST(N'2021-02-02' AS Date), NULL, N'ly', N'GOD0XK6ECNVYBKLF')
GO
USE [master]
GO
ALTER DATABASE [Database] SET  READ_WRITE 
GO
