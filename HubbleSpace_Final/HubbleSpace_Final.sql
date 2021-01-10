USE [master]
GO
/****** Object:  Database [HubbleSpace_Final]    Script Date: 10/01/2021 5:40:41 PM ******/
CREATE DATABASE [HubbleSpace_Final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HubbleSpace_Final', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.WIND\MSSQL\DATA\HubbleSpace_Final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HubbleSpace_Final_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.WIND\MSSQL\DATA\HubbleSpace_Final_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HubbleSpace_Final] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HubbleSpace_Final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HubbleSpace_Final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ARITHABORT OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HubbleSpace_Final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HubbleSpace_Final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HubbleSpace_Final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HubbleSpace_Final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HubbleSpace_Final] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HubbleSpace_Final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HubbleSpace_Final] SET  MULTI_USER 
GO
ALTER DATABASE [HubbleSpace_Final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HubbleSpace_Final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HubbleSpace_Final] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HubbleSpace_Final] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HubbleSpace_Final', N'ON'
GO
ALTER DATABASE [HubbleSpace_Final] SET QUERY_STORE = OFF
GO
USE [HubbleSpace_Final]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID_Account] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Level] [int] NOT NULL,
	[Date_Create] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[Gender] [int] NOT NULL,
	[CreditCard] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID_Banner] [int] IDENTITY(1,1) NOT NULL,
	[Banner_Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[Date_Upload] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[ID_Banner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID_Brand] [int] IDENTITY(1,1) NOT NULL,
	[Brand_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID_Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID_Categorie] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](100) NOT NULL,
	[Object] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID_Categorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID_Client] [int] IDENTITY(1,1) NOT NULL,
	[Client_Name] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[CreditCard] [nvarchar](max) NULL,
	[ID_Account] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color_Product]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color_Product](
	[ID_Color_Product] [int] IDENTITY(1,1) NOT NULL,
	[Color_Name] [nvarchar](100) NOT NULL,
	[ID_Product] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Color_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[ID_Discount] [int] IDENTITY(1,1) NOT NULL,
	[Code_Discount] [nvarchar](100) NOT NULL,
	[Expire] [datetime2](7) NOT NULL,
	[Value] [int] NOT NULL,
	[NumberofTurns] [int] NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[ID_Discount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountUsed]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountUsed](
	[ID_DiscountUsed] [int] IDENTITY(1,1) NOT NULL,
	[ID_Account] [int] NOT NULL,
	[ID_Discount] [int] NOT NULL,
 CONSTRAINT [PK_DiscountUsed] PRIMARY KEY CLUSTERED 
(
	[ID_DiscountUsed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID_Employee] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Name] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[Salary] [float] NOT NULL,
	[ID_Account] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID_Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Img_Product]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Img_Product](
	[ID_Img_Product] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[ID_Color_Product] [int] NOT NULL,
 CONSTRAINT [PK_Img_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Img_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_Order] [int] IDENTITY(1,1) NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Date_Create] [datetime2](7) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Receiver] [nvarchar](max) NOT NULL,
	[SDT] [nvarchar](max) NOT NULL,
	[ID_Account] [int] NOT NULL,
	[Process] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID_OrderDetail] [int] IDENTITY(1,1) NOT NULL,
	[ID_Color_Product] [int] NOT NULL,
	[Size] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[ID_Order] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID_OrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID_Product] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](100) NOT NULL,
	[Price_Product] [float] NOT NULL,
	[Price_Sale] [float] NOT NULL,
	[ID_Brand] [int] NOT NULL,
	[ID_Categorie] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 10/01/2021 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[ID_Size_Product] [int] IDENTITY(1,1) NOT NULL,
	[SizeNumber] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ID_Color_Product] [int] NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[ID_Size_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210108154614_Db.init', N'3.1.10')
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID_Account], [UserName], [Password], [Avatar], [Email], [Level], [Date_Create]) VALUES (1, N'admin_pntt', N'12345678', NULL, N'pntt220200@gmail.com', 0, CAST(N'2021-01-10T17:04:48.7408438' AS DateTime2))
INSERT [dbo].[Account] ([ID_Account], [UserName], [Password], [Avatar], [Email], [Level], [Date_Create]) VALUES (2, N'huetran', N'12345678', NULL, N'huetran@gmail.com', 1, CAST(N'2021-01-10T17:05:08.1296032' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID_Banner], [Banner_Name], [Photo], [Date_Upload]) VALUES (1, N'Feel the boost', N'running-ss21-ultraboost-educate-hp-tc-d_tcm337-608343.jpg', CAST(N'2021-01-08T22:51:47.3458863' AS DateTime2))
INSERT [dbo].[Banner] ([ID_Banner], [Banner_Name], [Photo], [Date_Upload]) VALUES (2, N'Adidas Superstar 2020', N'orig-fw20-sstr-dec-tc-large-x2-womens-d_tcm221-610269.jpg', CAST(N'2021-01-08T22:51:56.4409735' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (1, N'Adidas')
INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (2, N'Nike')
INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (3, N'Puma')
INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (4, N'Reebok')
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (1, N'Running', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (2, N'Running', N'Women')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Color_Product] ON 

INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (1, N'Dash Grey / Silver Metallic / Halo Silver', 1, N'Giay_Ultraboost_20_DNA_Xam_FX7957_01_standard (1).jpg', CAST(N'2021-01-08T23:04:47.8252147' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (2, N'Football Blue / Football Blue / Football Blue', 2, N'Ultraboost_20_Shoes_Blue_FX7978_01_standard (1).jpg', CAST(N'2021-01-08T23:06:47.2354928' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (3, N'Core Black / Iron Metallic / Football Blue', 2, N'Ultraboost_20_Shoes_Black_FX7979_01_standard.jpg', CAST(N'2021-01-08T23:07:03.6049762' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (4, N'Core Black / Core Black / Carbon', 3, N'Giay_Ultra_4D_5_DJen_G58160_01_standard.jpg', CAST(N'2021-01-09T16:00:16.4454560' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (5, N'Black/Anthracite/Volt/White', 4, N'air-zoom-vomero-15-running-shoe-wqDgSG.jpg', CAST(N'2021-01-10T00:46:04.8088242' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (6, N'White/Cyber/Black/Racer Blue', 4, N'air-zoom-vomero-15-running-shoe-wqDgSG (1).jpg', CAST(N'2021-01-10T00:47:11.8718922' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Color_Product] OFF
SET IDENTITY_INSERT [dbo].[Img_Product] ON 

INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (1, N'Giay_Ultraboost_20_DNA_Xam_FX7957_02_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (2, N'Giay_Ultraboost_20_DNA_Xam_FX7957_03_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (3, N'Giay_Ultraboost_20_DNA_Xam_FX7957_04_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (4, N'Giay_Ultraboost_20_DNA_Xam_FX7957_05_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (5, N'Giay_Ultraboost_20_DNA_Xam_FX7957_010_hover_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (6, N'Giay_Ultraboost_20_DNA_Xam_FX7957_41_detail.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (7, N'Giay_Ultraboost_20_DNA_Xam_FX7957_42_detail.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (8, N'Giay_Ultraboost_20_DNA_Xam_FX7957_43_detail.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (9, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_01_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (10, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_02_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (11, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_03_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (12, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_04_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (13, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_05_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (14, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_06_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (15, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_010_hover_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (16, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_41_detail.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (17, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_42_detail.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (18, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_43_detail.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (19, N'Giay_UltraBoost_20_DJen_FX7979_01_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (20, N'Giay_UltraBoost_20_DJen_FX7979_02_standard_hover.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (21, N'Giay_UltraBoost_20_DJen_FX7979_03_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (22, N'Giay_UltraBoost_20_DJen_FX7979_04_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (23, N'Giay_UltraBoost_20_DJen_FX7979_06_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (24, N'Giay_UltraBoost_20_DJen_FX7979_05_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (25, N'Giay_UltraBoost_20_DJen_FX7979_41_detail.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (26, N'Giay_UltraBoost_20_DJen_FX7979_42_detail.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (27, N'Giay_Ultra_4D_5_DJen_G58160_01_standard (1).jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (28, N'Giay_Ultra_4D_5_DJen_G58160_02_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (29, N'Giay_Ultra_4D_5_DJen_G58160_03_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (30, N'Giay_Ultra_4D_5_DJen_G58160_05_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (31, N'Giay_Ultra_4D_5_DJen_G58160_04_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (33, N'Giay_Ultra_4D_5_DJen_G58160_06_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (34, N'Giay_Ultra_4D_5_DJen_G58160_010_hover_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (35, N'Giay_Ultra_4D_5_DJen_G58160_41_detail.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (36, N'Giay_Ultra_4D_5_DJen_G58160_42_detail.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (37, N'Giay_Ultra_4D_5_DJen_G58160_43_detail.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (38, N'air-zoom-vomero-15-running-shoe-wqDgSG (1).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (39, N'air-zoom-vomero-15-running-shoe-wqDgSG (2).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (40, N'air-zoom-vomero-15-running-shoe-wqDgSG (3).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (41, N'air-zoom-vomero-15-running-shoe-wqDgSG (4).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (42, N'air-zoom-vomero-15-running-shoe-wqDgSG (5).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (43, N'air-zoom-vomero-15-running-shoe-wqDgSG (6).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (44, N'air-zoom-vomero-15-running-shoe-wqDgSG (7).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (45, N'air-zoom-vomero-15-running-shoe-wqDgSG.jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (46, N'air-zoom-vomero-15-running-shoe-wqDgSG (8).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (47, N'air-zoom-vomero-15-running-shoe-wqDgSG (9).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (48, N'air-zoom-vomero-15-running-shoe-wqDgSG (10).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (49, N'air-zoom-vomero-15-running-shoe-wqDgSG (11).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (50, N'air-zoom-vomero-15-running-shoe-wqDgSG (12).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (51, N'air-zoom-vomero-15-running-shoe-wqDgSG (13).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (52, N'air-zoom-vomero-15-running-shoe-wqDgSG (14).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (53, N'air-zoom-vomero-15-running-shoe-wqDgSG (15).jpg', 6)
SET IDENTITY_INSERT [dbo].[Img_Product] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (1, N'ULTRABOOST 20 DNA', 5000000, 5000000, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (2, N'ULTRABOOST 20', 5000000, 5000000, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (3, N'ULTRA 4D 5', 6000000, 6000000, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (4, N'Nike Air Zoom Vomero 15', 4409000, 4409000, 2, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1, N'3.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (2, N'4 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (3, N'4.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (4, N'6 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (5, N'6.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (6, N'EU 40', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (7, N'5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (8, N'5.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (9, N'7 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (10, N'7.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (11, N'8 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (12, N'8.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (13, N'9 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (14, N'9.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (15, N'10 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (16, N'10.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (17, N'11 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (18, N'11.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (19, N'12 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (20, N'3.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (21, N'4 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (22, N'4.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (23, N'5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (24, N'5.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (25, N'6 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (26, N'6.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (27, N'7 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (28, N'7.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (29, N'8 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (30, N'8.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (31, N'9 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (32, N'9.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (33, N'10 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (34, N'10.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (35, N'11 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (36, N'11.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (37, N'12 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (38, N'3.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (39, N'4 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (40, N'4.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (41, N'5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (42, N'5.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (43, N'6 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (44, N'6.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (45, N'7 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (46, N'7.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (47, N'8 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (48, N'8.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (49, N'9 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (50, N'9.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (51, N'10 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (52, N'10.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (53, N'11 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (54, N'11.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (55, N'12 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (56, N'8 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (57, N'8.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (58, N'9 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (59, N'9.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (60, N'10 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (61, N'10.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (62, N'11 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (63, N'11.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (64, N'12 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (65, N'EU 40.5', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (66, N'EU 41', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (67, N'EU 42', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (68, N'EU 43', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (69, N'EU 44', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (70, N'EU 41.5', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (71, N'EU 45', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (72, N'EU 40', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (73, N'EU 40.5', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (74, N'EU 41', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (75, N'EU 42', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (76, N'EU 43', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (77, N'EU 41.5', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (78, N'EU 44', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (79, N'EU 45', 100, 6)
SET IDENTITY_INSERT [dbo].[Size] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Client_ID_Account]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Client_ID_Account] ON [dbo].[Client]
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Color_Product_ID_Product]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Color_Product_ID_Product] ON [dbo].[Color_Product]
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DiscountUsed_ID_Account]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiscountUsed_ID_Account] ON [dbo].[DiscountUsed]
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DiscountUsed_ID_Discount]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiscountUsed_ID_Discount] ON [dbo].[DiscountUsed]
(
	[ID_Discount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_ID_Account]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_ID_Account] ON [dbo].[Employee]
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Img_Product_ID_Color_Product]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Img_Product_ID_Color_Product] ON [dbo].[Img_Product]
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_ID_Account]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_ID_Account] ON [dbo].[Order]
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ID_Color_Product]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ID_Color_Product] ON [dbo].[OrderDetail]
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ID_Order]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ID_Order] ON [dbo].[OrderDetail]
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ID_Brand]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ID_Brand] ON [dbo].[Product]
(
	[ID_Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ID_Categorie]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ID_Categorie] ON [dbo].[Product]
(
	[ID_Categorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Size_ID_Color_Product]    Script Date: 10/01/2021 5:40:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Size_ID_Color_Product] ON [dbo].[Size]
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Account_ID_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Account_ID_Account]
GO
ALTER TABLE [dbo].[Color_Product]  WITH CHECK ADD  CONSTRAINT [FK_Color_Product_Product_ID_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Color_Product] CHECK CONSTRAINT [FK_Color_Product_Product_ID_Product]
GO
ALTER TABLE [dbo].[DiscountUsed]  WITH CHECK ADD  CONSTRAINT [FK_DiscountUsed_Account_ID_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscountUsed] CHECK CONSTRAINT [FK_DiscountUsed_Account_ID_Account]
GO
ALTER TABLE [dbo].[DiscountUsed]  WITH CHECK ADD  CONSTRAINT [FK_DiscountUsed_Discount_ID_Discount] FOREIGN KEY([ID_Discount])
REFERENCES [dbo].[Discount] ([ID_Discount])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscountUsed] CHECK CONSTRAINT [FK_DiscountUsed_Discount_ID_Discount]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Account_ID_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Account_ID_Account]
GO
ALTER TABLE [dbo].[Img_Product]  WITH CHECK ADD  CONSTRAINT [FK_Img_Product_Color_Product_ID_Color_Product] FOREIGN KEY([ID_Color_Product])
REFERENCES [dbo].[Color_Product] ([ID_Color_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Img_Product] CHECK CONSTRAINT [FK_Img_Product_Color_Product_ID_Color_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account_ID_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account_ID_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Color_Product_ID_Color_Product] FOREIGN KEY([ID_Color_Product])
REFERENCES [dbo].[Color_Product] ([ID_Color_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Color_Product_ID_Color_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order_ID_Order] FOREIGN KEY([ID_Order])
REFERENCES [dbo].[Order] ([ID_Order])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order_ID_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand_ID_Brand] FOREIGN KEY([ID_Brand])
REFERENCES [dbo].[Brand] ([ID_Brand])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand_ID_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_ID_Categorie] FOREIGN KEY([ID_Categorie])
REFERENCES [dbo].[Category] ([ID_Categorie])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_ID_Categorie]
GO
ALTER TABLE [dbo].[Size]  WITH CHECK ADD  CONSTRAINT [FK_Size_Color_Product_ID_Color_Product] FOREIGN KEY([ID_Color_Product])
REFERENCES [dbo].[Color_Product] ([ID_Color_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Size] CHECK CONSTRAINT [FK_Size_Color_Product_ID_Color_Product]
GO
USE [master]
GO
ALTER DATABASE [HubbleSpace_Final] SET  READ_WRITE 
GO
