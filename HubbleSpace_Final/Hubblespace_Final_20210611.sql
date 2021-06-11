USE [master]
GO
/****** Object:  Database [HubbleSpace_Final]    Script Date: 6/11/2021 4:38:22 PM ******/
CREATE DATABASE [HubbleSpace_Final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HubbleSpace_Final', FILENAME = N'D:\SQL2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\HubbleSpace_Final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HubbleSpace_Final_log', FILENAME = N'D:\SQL2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\HubbleSpace_Final_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
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
ALTER DATABASE [HubbleSpace_Final] SET AUTO_CLOSE OFF 
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
ALTER DATABASE [HubbleSpace_Final] SET RECOVERY FULL 
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/11/2021 4:38:22 PM ******/
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
	[Address] [nvarchar](max) NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color_Product]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 6/11/2021 4:38:22 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountUsed]    Script Date: 6/11/2021 4:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountUsed](
	[ID_DiscountUsed] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ID_Discount] [int] NOT NULL,
 CONSTRAINT [PK_DiscountUsed] PRIMARY KEY CLUSTERED 
(
	[ID_DiscountUsed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Img_Product]    Script Date: 6/11/2021 4:38:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationsPusher]    Script Date: 6/11/2021 4:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationsPusher](
	[ID_Notifcation] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Date_Created] [datetime2](7) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[ReadStatus] [int] NOT NULL,
 CONSTRAINT [PK_NotificationsPusher] PRIMARY KEY CLUSTERED 
(
	[ID_Notifcation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/11/2021 4:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_Order] [int] IDENTITY(1,1) NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[Date_Create] [datetime2](7) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Receiver] [nvarchar](max) NOT NULL,
	[SDT] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Process] [nvarchar](max) NOT NULL,
	[PaymentStatus] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/11/2021 4:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID_OrderDetail] [int] IDENTITY(1,1) NOT NULL,
	[ID_Color_Product] [int] NOT NULL,
	[Size] [nvarchar](max) NULL,
	[Price_Sale] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ID_Order] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID_OrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/11/2021 4:38:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 6/11/2021 4:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ID_ToDo] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Date_Created] [datetime2](7) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[ID_ToDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 6/11/2021 4:38:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210113103044_Db.init', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210525090512_migrationDb', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210525151015_db.init', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210526065405_db.init', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210530114118_DbInit2', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210530151825_DbInit4', N'3.1.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'Admin', N'Admin', N'Admin', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'Customer', N'Customer', N'Customer', NULL)
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'108600925332054349886', N'Google', N'40afe365-0a79-4181-8838-72419dfb66c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a5355e6e-a3af-41d8-87ed-61d841d83a0e', N'Admin')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [DateOfBirth], [Gender], [CreditCard], [Address], [level]) VALUES (N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'hubblespace2205', N'HUBBLESPACE2205', N'tttuyen2205@gmail.com', N'TTTUYEN2205@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECdWYjVE4w1Tepi3RAQYb4ptWo24k9wmDEFHt3WjJK+8MSnmpk5bdSd9Sd9JW7MvLQ==', N'ZL76TWGNCNX4ABT55RC53WVADJDM4RU5', N'c0e7c223-4c2d-4539-87d6-dc73d6fadd90', NULL, 0, 0, NULL, 1, 0, N'Tuyen', N'Trinh Pham Thanh', NULL, 0, NULL, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [DateOfBirth], [Gender], [CreditCard], [Address], [level]) VALUES (N'3f22dde0-b96d-4bfb-9683-52870cfa5785', N'pntt', N'PNTT', N'pntt220200@gmail.com', N'PNTT220200@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECKNSDWgm60WCfRZ17w8xHBA450vtYchPt9o+gdjldsfJUQ3dOGYjbVmo7Qu2xBMUA==', N'NQ62VGE7E5PUKVQNP6EY3JFGTRIMMIPD', N'df88c281-f618-4c8a-8d5c-9e6db0624270', NULL, 0, 0, NULL, 1, 0, N'Phạm', N'Trang', CAST(N'2021-05-10T15:17:00.0000000' AS DateTime2), 0, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [DateOfBirth], [Gender], [CreditCard], [Address], [level]) VALUES (N'40afe365-0a79-4181-8838-72419dfb66c4', N'tttuyen2205@gmail.com', N'TTTUYEN2205@GMAIL.COM', N'tttuyen2205@gmail.com', N'TTTUYEN2205@GMAIL.COM', 1, NULL, N'UNBYAVVN5P7CB4ISMFSEJ7R3IBGV6OS2', N'04342097-b1fc-4e87-81f3-434892bcef34', NULL, 0, 0, NULL, 1, 0, N'Thanh Tuyền', N'Trịnh Phạm', NULL, 0, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [DateOfBirth], [Gender], [CreditCard], [Address], [level]) VALUES (N'a5355e6e-a3af-41d8-87ed-61d841d83a0e', N'pntt_admin', N'PNTT_ADMIN', N'pntt220200@gmail.com', N'PNTT220200@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEP565JYhnLq3OnlY5gNcSgEzB7b6RaN/OmqA1fTRuXxPuTdsYt+XXuaio/Bnc7x7iQ==', N'K4HEJSIDSF6VIZPUR4OBPWJCMWAMA5YF', N'1113a965-51fc-4972-abbe-22cb1f3e29ed', N'0909888777', 0, 0, NULL, 1, 0, N'Phạm', N'Trang', NULL, 0, NULL, N'280 An Dương Vương', 1)
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID_Banner], [Banner_Name], [Photo], [Date_Upload]) VALUES (1, N'Feel the boost', N'running-ss21-ultraboost-educate-hp-tc-d_tcm337-608343.jpg', CAST(N'2021-01-14T02:35:31.2600743' AS DateTime2))
INSERT [dbo].[Banner] ([ID_Banner], [Banner_Name], [Photo], [Date_Upload]) VALUES (2, N'Adidas Superstar 2020', N'orig-fw20-sstr-dec-tc-large-x2-womens-d_tcm221-610269.jpg', CAST(N'2021-01-14T02:35:39.8575382' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (1, N'Adidas')
INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (2, N'Nike')
INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (3, N'Puma')
INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (4, N'Reebok')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (1, N'Running', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (2, N'Running', N'Women')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (3, N'Training', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (4, N'Training', N'Women')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (5, N'Running', N'Kids')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (7, N'Football', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (8, N'Tennis', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (9, N'Tennis', N'Women')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (10, N'Originals', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (11, N'Originals', N'Women')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (12, N'Originals', N'Kids')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (13, N'Basketball', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (14, N'Slide', N'Kids')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (15, N'Football', N'Kids')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color_Product] ON 

INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (1, N'Dash Grey / Silver Metallic / Halo Silver', 1, N'Giay_Ultraboost_20_DNA_Xam_FX7957_01_standard (1).jpg', CAST(N'2021-01-08T23:04:47.8252147' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (2, N'Football Blue / Football Blue / Football Blue', 2, N'Ultraboost_20_Shoes_Blue_FX7978_01_standard (1).jpg', CAST(N'2021-01-08T23:06:47.2354928' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (3, N'Core Black / Iron Metallic / Football Blue', 2, N'Ultraboost_20_Shoes_Black_FX7979_01_standard.jpg', CAST(N'2021-01-08T23:07:03.6049762' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (4, N'Core Black / Core Black / Carbon', 3, N'Giay_Ultra_4D_5_DJen_G58160_01_standard.jpg', CAST(N'2021-01-09T16:00:16.4454560' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (5, N'Black/Anthracite/Volt/White', 4, N'air-zoom-vomero-15-running-shoe-wqDgSG.jpg', CAST(N'2021-01-10T00:46:04.8088242' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (6, N'White/Cyber/Black/Racer Blue', 4, N'air-zoom-vomero-15-running-shoe-wqDgSG (1).jpg', CAST(N'2021-01-10T00:47:11.8718922' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (7, N'Cloud White / Cloud White / Dash Grey', 5, N'X9000L2_W_trang_FW8077_01_standard.jpg', CAST(N'2021-01-10T23:43:30.8388487' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (8, N'Core Black / Core Black / Grey Five', 5, N'X9000L2_W_DJen_EH0040_01_standard.jpg', CAST(N'2021-01-10T23:47:52.2681700' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (9, N'Core Black / Copper Metallic / Signal Pink', 5, N'X9000L2_W_DJen_EG5016_01_standard.jpg', CAST(N'2021-01-10T23:48:22.4051280' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (10, N'Puma Black', 6, N'Calibrate-Runner-Mono-Men''s-Shoes.jfif', CAST(N'2021-01-14T02:40:21.2387999' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (11, N'Vaporous Gray', 6, N'Calibrate-Runner-Mono-Men''s-Shoes (1).jfif', CAST(N'2021-01-14T02:50:38.7246325' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (12, N'Cloud White / Core Black / Cloud White', 7, N'Giay_Superstar_trang_EG4958_01_standard.jpg', CAST(N'2021-01-14T17:44:39.4728139' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (13, N'Cloud White / Core Black / Cloud White', 8, N'Giay_Superstar_trang_EG4958_01_standard.jpg', CAST(N'2021-01-14T17:44:58.4622561' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (14, N'Core Black / Cloud White / Core Black', 7, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', CAST(N'2021-01-14T17:46:02.2858533' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (15, N'Core Black / Cloud White / Core Black', 8, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', CAST(N'2021-01-14T17:46:11.6879597' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (16, N'Vast Grey/Summit White/White/Pink Glaze', 9, N'react-escape-run-running-shoe-94nDwX.jpg', CAST(N'2021-01-14T19:14:52.4587238' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (17, N'Summit White/Football Grey/Black/Metallic Gold Coin', 9, N'react-escape-run-running-shoe-94nDwX (8).jpg', CAST(N'2021-01-14T19:20:23.3506274' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (18, N'Pink Glow/Bright Crimson/Pink Foam/Black', 9, N'react-escape-run-running-shoe-94nDwX (14).jpg', CAST(N'2021-01-14T19:24:15.9224343' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (19, N'Black/White/Chile Red', 10, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz.jpg', CAST(N'2021-01-14T19:30:09.2833234' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (20, N'String/Cool Grey/Natural/Sail', 11, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh.jpg', CAST(N'2021-01-14T19:34:07.0317928' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (21, N'White/Dynamic Yellow/Voltage Purple', 12, N'lebron-17-low-basketball-shoe-kFcJdF.jpg', CAST(N'2021-01-14T19:39:18.2102733' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (22, N'Black/White/Light Smoke Grey', 13, N'metcon-6-flyease-training-shoe-qSW3lg.jpg', CAST(N'2021-01-14T19:42:39.4843018' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (23, N'Black/Metallic Pewter/Ice/Metallic Pewter', 14, N'metcon-6-amp-training-shoe-j2sbHB.jpg', CAST(N'2021-01-14T19:47:17.5334106' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (24, N'White/Green Abyss/Praline/Team Orange', 15, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk.jpg', CAST(N'2021-01-14T19:51:42.5600036' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (25, N'White/Binary Blue/University Red/White', 16, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g.jpg', CAST(N'2021-01-14T19:55:21.6858185' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (26, N'Particle Grey/Midnight Navy/White', 17, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r.jpg', CAST(N'2021-05-23T13:12:34.7864713' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (27, N'Pink Foam/Black/Dark Smoke Grey/Metallic Silver', 17, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (1).jpg', CAST(N'2021-05-23T13:15:19.6993876' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (28, N'Coconut Milk/Obsidian/White/Wheat', 18, N'air-max-90-se-older-shoe-vvqRXz (1).jpg', CAST(N'2021-05-23T13:47:30.8351066' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (29, N'Obsidian/Coconut Milk/White/Wheat', 18, N'air-max-90-se-older-shoe-vvqRXz.jpg', CAST(N'2021-05-23T13:47:48.2086258' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (30, N'Dark Purple Dust/White/Copa/Bright Mango', 19, N'kawa-se-2-younger-older-slide-xBnzPv (1).jpg', CAST(N'2021-05-23T14:00:47.4652137' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (31, N'Pearl White/Pearl White', 19, N'kawa-se-2-younger-older-slide-xBnzPv.jpg', CAST(N'2021-05-23T14:01:06.1493727' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (32, N'Lime Glow/Aquamarine', 20, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccMq.jpg', CAST(N'2021-05-23T14:10:42.5257437' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (33, N'Photo Blue/Rage Green/Metallic Silver', 20, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccMq (1).jpg', CAST(N'2021-05-23T14:10:57.3897333' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (34, N'Bright Crimson/Indigo Burst/White/Metallic Silver', 21, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (2).jpg', CAST(N'2021-05-23T14:17:23.0928137' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (35, N'Dynamic Turquoise/Lime Glow', 21, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (1).jpg', CAST(N'2021-05-23T14:18:29.5401934' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (36, N'White/Metallic Silver/Volt/Black', 21, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9.jpg', CAST(N'2021-05-23T14:19:21.3383009' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (37, N'Violet Frost/Dark Smoke Grey/White/Metallic Pewter', 22, N'star-runner-2-older-running-shoe-B3cVR3 (2).jpg', CAST(N'2021-05-23T14:28:08.1001245' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (38, N'Platinum Tint/Light Violet/White/Metallic Platinum', 22, N'star-runner-2-older-running-shoe-B3cVR3.jpg', CAST(N'2021-05-23T14:28:37.0604612' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (39, N'Photon Dust/University Red/White/Game Royal', 22, N'star-runner-2-older-running-shoe-B3cVR3 (1).jpg', CAST(N'2021-05-23T14:28:55.7732531' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (40, N'Black/Black/Black', 23, N'varsity-older-running-shoe-fJtJM3 (1).jpg', CAST(N'2021-05-23T14:36:22.9245554' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (41, N'White/White/White', 23, N'varsity-older-running-shoe-fJtJM3.jpg', CAST(N'2021-05-23T14:36:36.0758973' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (42, N'White/White', 24, N'air-force-1-le-older-shoe-TDGHCN.jpg', CAST(N'2021-05-23T14:43:40.1760261' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (43, N'White/Total Orange/Black', 25, N'blazer-low-77-older-shoe-J24TzH.jpg', CAST(N'2021-05-23T14:47:28.0883008' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (44, N'White/White/Black/Obsidian', 26, N'air-force-1-lv8-older-shoe-dsKs7k.jpg', CAST(N'2021-05-23T14:51:57.2618792' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (45, N'Active Fuchsia/Black/Coconut Milk/University Gold', 27, N'waffle-one-younger-shoe-TfBL7B.jpg', CAST(N'2021-05-23T14:56:09.2266843' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (46, N'Black/White/Metallic Gold', 28, N'zion-1-older-shoe-vWZXGR (1).jpg', CAST(N'2021-05-23T14:58:27.1738329' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (47, N'Black/Bright Crimson/Amarillo/White', 28, N'zion-1-older-shoe-vWZXGR.jpg', CAST(N'2021-05-23T14:58:43.9990908' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Color_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([ID_Discount], [Code_Discount], [Expire], [Value], [NumberofTurns]) VALUES (1, N'XUAN2021', CAST(N'2021-01-31T00:00:00.0000000' AS DateTime2), 200000, 99)
INSERT [dbo].[Discount] ([ID_Discount], [Code_Discount], [Expire], [Value], [NumberofTurns]) VALUES (2, N'TRAVANG', CAST(N'2021-06-09T00:00:00.0000000' AS DateTime2), 200000, 99)
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
SET IDENTITY_INSERT [dbo].[DiscountUsed] ON 

INSERT [dbo].[DiscountUsed] ([ID_DiscountUsed], [UserId], [ID_Discount]) VALUES (1, N'a5355e6e-a3af-41d8-87ed-61d841d83a0e', 1)
SET IDENTITY_INSERT [dbo].[DiscountUsed] OFF
GO
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
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (54, N'X9000L2_W_trang_FW8077_01_standard (1).jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (55, N'X9000L2_W_trang_FW8077_02_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (56, N'X9000L2_W_trang_FW8077_03_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (57, N'X9000L2_W_trang_FW8077_04_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (58, N'X9000L2_W_trang_FW8077_05_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (59, N'X9000L2_W_trang_FW8077_06_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (60, N'X9000L2_W_trang_FW8077_010_hover_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (61, N'X9000L2_W_trang_FW8077_41_detail.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (62, N'X9000L2_W_trang_FW8077_42_detail.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (63, N'X9000L2_W_trang_FW8077_43_detail.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (64, N'X9000L2_W_DJen_EH0040_01_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (65, N'X9000L2_W_DJen_EH0040_02_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (66, N'X9000L2_W_DJen_EH0040_03_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (67, N'X9000L2_W_DJen_EH0040_04_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (68, N'X9000L2_W_DJen_EH0040_05_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (69, N'X9000L2_W_DJen_EH0040_06_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (70, N'X9000L2_W_DJen_EH0040_010_hover_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (71, N'X9000L2_W_DJen_EH0040_41_detail.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (72, N'X9000L2_W_DJen_EH0040_42_detail.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (73, N'X9000L2_W_DJen_EH0040_43_detail.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (74, N'X9000L2_W_DJen_EG5016_01_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (75, N'X9000L2_W_DJen_EG5016_02_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (76, N'X9000L2_W_DJen_EG5016_03_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (77, N'X9000L2_W_DJen_EG5016_04_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (78, N'X9000L2_W_DJen_EG5016_05_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (79, N'X9000L2_W_DJen_EG5016_06_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (80, N'X9000L2_W_DJen_EG5016_010_hover_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (81, N'X9000L2_W_DJen_EG5016_41_detail.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (82, N'X9000L2_W_DJen_EG5016_42_detail.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (83, N'X9000L2_W_DJen_EG5016_43_detail.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (84, N'Calibrate-Runner-Mono-Men''s-Shoes (1).jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (85, N'Calibrate-Runner-Mono-Men''s-Shoes (2).jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (86, N'Calibrate-Runner-Mono-Men''s-Shoes (3).jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (87, N'Calibrate-Runner-Mono-Men''s-Shoes (4).jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (88, N'Calibrate-Runner-Mono-Men''s-Shoes.jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (89, N'Calibrate-Runner-Mono-Men''s-Shoes (1).webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (90, N'Calibrate-Runner-Mono-Men''s-Shoes (2).webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (91, N'Calibrate-Runner-Mono-Men''s-Shoes (3).webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (92, N'Calibrate-Runner-Mono-Men''s-Shoes (4).webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (93, N'Calibrate-Runner-Mono-Men''s-Shoes.webp', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (94, N'Calibrate-Runner-Mono-Men''s-Shoes.webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (95, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (96, N'Giay_Superstar_DJen_EG4959_02_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (97, N'Giay_Superstar_DJen_EG4959_03_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (98, N'Giay_Superstar_DJen_EG4959_04_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (99, N'Giay_Superstar_DJen_EG4959_05_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (100, N'Giay_Superstar_DJen_EG4959_06_standard.jpg', 15)
GO
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (102, N'Giay_Superstar_DJen_EG4959_010_hover_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (103, N'Giay_Superstar_DJen_EG4959_41_detail.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (104, N'Giay_Superstar_trang_EG4958_01_standard.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (105, N'Giay_Superstar_trang_EG4958_02_standard.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (106, N'Giay_Superstar_trang_EG4958_03_standard.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (107, N'Giay_Superstar_trang_EG4958_010_hover_standard.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (108, N'Giay_Superstar_trang_EG4958_41_detail.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (109, N'Giay_Superstar_trang_EG4958_41_detail.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (110, N'Giay_Superstar_trang_EG4958_42_detail.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (111, N'Giay_Superstar_trang_EG4958_43_detail.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (112, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (113, N'Giay_Superstar_DJen_EG4959_02_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (114, N'Giay_Superstar_DJen_EG4959_03_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (115, N'Giay_Superstar_DJen_EG4959_04_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (116, N'Giay_Superstar_DJen_EG4959_05_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (117, N'Giay_Superstar_DJen_EG4959_06_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (118, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (119, N'Giay_Superstar_DJen_EG4959_02_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (120, N'Giay_Superstar_DJen_EG4959_03_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (121, N'Giay_Superstar_DJen_EG4959_04_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (122, N'Giay_Superstar_DJen_EG4959_05_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (123, N'Giay_Superstar_DJen_EG4959_06_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (124, N'Giay_Superstar_DJen_EG4959_010_hover_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (125, N'Giay_Superstar_DJen_EG4959_41_detail.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (126, N'Giay_Superstar_trang_EG4958_01_standard.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (127, N'Giay_Superstar_trang_EG4958_02_standard.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (128, N'Giay_Superstar_trang_EG4958_03_standard.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (129, N'Giay_Superstar_trang_EG4958_010_hover_standard.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (130, N'Giay_Superstar_trang_EG4958_41_detail.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (131, N'Giay_Superstar_trang_EG4958_41_detail.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (132, N'Giay_Superstar_trang_EG4958_42_detail.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (133, N'Giay_Superstar_trang_EG4958_43_detail.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (134, N'react-escape-run-running-shoe-94nDwX (1).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (135, N'react-escape-run-running-shoe-94nDwX (2).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (136, N'react-escape-run-running-shoe-94nDwX (3).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (137, N'react-escape-run-running-shoe-94nDwX (4).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (138, N'react-escape-run-running-shoe-94nDwX (5).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (139, N'react-escape-run-running-shoe-94nDwX (6).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (140, N'react-escape-run-running-shoe-94nDwX (7).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (141, N'react-escape-run-running-shoe-94nDwX.jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (142, N'react-escape-run-running-shoe-94nDwX (8).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (143, N'react-escape-run-running-shoe-94nDwX (9).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (144, N'react-escape-run-running-shoe-94nDwX (10).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (145, N'react-escape-run-running-shoe-94nDwX (11).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (146, N'react-escape-run-running-shoe-94nDwX (12).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (147, N'react-escape-run-running-shoe-94nDwX (13).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (148, N'react-escape-run-running-shoe-94nDwX.jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (149, N'react-escape-run-running-shoe-94nDwX (15).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (150, N'react-escape-run-running-shoe-94nDwX (16).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (151, N'react-escape-run-running-shoe-94nDwX (17).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (152, N'react-escape-run-running-shoe-94nDwX (18).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (153, N'react-escape-run-running-shoe-94nDwX (19).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (154, N'react-escape-run-running-shoe-94nDwX(14).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (155, N'react-escape-run-running-shoe-94nDwX.jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (156, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (1).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (157, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (2).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (158, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (3).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (159, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (4).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (160, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (5).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (161, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (6).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (162, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (7).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (163, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (8).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (164, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz.jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (165, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (1).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (166, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (2).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (167, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (3).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (168, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (4).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (169, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (5).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (170, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (6).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (171, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (7).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (172, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (8).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (173, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh.jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (174, N'lebron-17-low-basketball-shoe-kFcJdF (1).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (175, N'lebron-17-low-basketball-shoe-kFcJdF (2).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (176, N'lebron-17-low-basketball-shoe-kFcJdF (3).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (177, N'lebron-17-low-basketball-shoe-kFcJdF (4).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (178, N'lebron-17-low-basketball-shoe-kFcJdF (5).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (179, N'lebron-17-low-basketball-shoe-kFcJdF (6).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (180, N'lebron-17-low-basketball-shoe-kFcJdF (7).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (181, N'lebron-17-low-basketball-shoe-kFcJdF (8).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (182, N'metcon-6-flyease-training-shoe-qSW3lg (1).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (183, N'metcon-6-flyease-training-shoe-qSW3lg (2).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (184, N'metcon-6-flyease-training-shoe-qSW3lg (3).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (185, N'metcon-6-flyease-training-shoe-qSW3lg (4).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (186, N'metcon-6-flyease-training-shoe-qSW3lg (8).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (187, N'metcon-6-flyease-training-shoe-qSW3lg (5).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (188, N'metcon-6-flyease-training-shoe-qSW3lg (6).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (189, N'metcon-6-flyease-training-shoe-qSW3lg (7).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (190, N'metcon-6-flyease-training-shoe-qSW3lg.jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (191, N'metcon-6-amp-training-shoe-j2sbHB (1).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (192, N'metcon-6-amp-training-shoe-j2sbHB (2).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (193, N'metcon-6-amp-training-shoe-j2sbHB (3).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (194, N'metcon-6-amp-training-shoe-j2sbHB (4).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (195, N'metcon-6-amp-training-shoe-j2sbHB (5).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (196, N'metcon-6-amp-training-shoe-j2sbHB (6).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (197, N'metcon-6-amp-training-shoe-j2sbHB (7).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (198, N'metcon-6-amp-training-shoe-j2sbHB.jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (199, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (1).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (200, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (2).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (201, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (3).jpg', 24)
GO
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (202, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (4).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (203, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (5).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (204, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (6).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (205, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk.jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (206, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (1).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (207, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (2).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (208, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (3).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (209, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (4).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (210, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (5).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (211, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (6).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (212, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (7).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (214, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (1).png', 26)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (215, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (2).jpg', 26)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (216, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (2).png', 26)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (217, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (3).png', 26)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (218, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (4).png', 26)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (219, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (5).png', 26)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (220, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (6).png', 26)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (221, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r.png', 26)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (222, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (8).png', 27)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (223, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r.jpg', 27)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (224, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (7).png', 27)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (225, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (9).png', 27)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (226, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (10).png', 27)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (227, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (11).png', 27)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (228, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (12).png', 27)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (229, N'air-zoom-pegasus-38-younger-older-running-shoe-sdD49r (13).png', 27)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (230, N'air-max-90-se-older-shoe-vvqRXz.jpg', 29)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (231, N'air-max-90-se-older-shoe-vvqRXz (2).png', 29)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (232, N'air-max-90-se-older-shoe-vvqRXz (3).png', 29)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (233, N'air-max-90-se-older-shoe-vvqRXz (4).png', 29)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (234, N'air-max-90-se-older-shoe-vvqRXz (5).png', 29)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (235, N'air-max-90-se-older-shoe-vvqRXz (6).png', 29)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (236, N'air-max-90-se-older-shoe-vvqRXz (7).png', 29)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (238, N'air-max-90-se-older-shoe-vvqRXz.png', 29)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (239, N'air-max-90-se-older-shoe-vvqRXz (9).png', 28)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (240, N'air-max-90-se-older-shoe-vvqRXz (1).jpg', 28)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (241, N'air-max-90-se-older-shoe-vvqRXz (10).png', 28)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (242, N'air-max-90-se-older-shoe-vvqRXz (11).png', 28)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (243, N'air-max-90-se-older-shoe-vvqRXz (12).png', 28)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (244, N'air-max-90-se-older-shoe-vvqRXz (13).png', 28)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (245, N'air-max-90-se-older-shoe-vvqRXz (14).png', 28)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (246, N'air-max-90-se-older-shoe-vvqRXz (15).png', 28)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (247, N'air-max-90-se-older-shoe-vvqRXz (8).png', 28)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (248, N'kawa-se-2-younger-older-slide-xBnzPv (1).png', 31)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (249, N'kawa-se-2-younger-older-slide-xBnzPv (2).jpg', 31)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (250, N'kawa-se-2-younger-older-slide-xBnzPv (2).png', 31)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (251, N'kawa-se-2-younger-older-slide-xBnzPv (3).png', 31)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (252, N'kawa-se-2-younger-older-slide-xBnzPv.png', 31)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (253, N'kawa-se-2-younger-older-slide-xBnzPv (5).png', 30)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (254, N'kawa-se-2-younger-older-slide-xBnzPv (6).png', 30)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (255, N'kawa-se-2-younger-older-slide-xBnzPv (7).png', 30)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (256, N'kawa-se-2-younger-older-slide-xBnzPv.jpg', 30)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (257, N'kawa-se-2-younger-older-slide-xBnzPv.png', 30)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (258, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccM (1).png', 33)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (259, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccM (2).png', 33)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (260, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccM (3).png', 33)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (261, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccM (4).png', 33)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (262, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccM (5).png', 33)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (263, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccM (6).png', 33)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (264, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccMq (2).jpg', 33)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (265, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccMq.png', 33)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (266, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccM (8).png', 32)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (267, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccM (9).png', 32)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (268, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccMq.jpg', 32)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (269, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1cc (10).png', 32)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (270, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1cc (11).png', 32)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (271, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1cc (12).png', 32)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (272, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1cc (13).png', 32)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (273, N'jr-phantom-gt-academy-dynamic-fit-mg-younger-older-multi-ground-football-boot-x1ccM (7).png', 32)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (274, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (1).png', 34)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (275, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (2).png', 34)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (276, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (3).jpg', 34)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (277, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (3).png', 34)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (278, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (4).png', 34)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (279, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (5).png', 34)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (280, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (6).png', 34)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (281, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (7).png', 34)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (282, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9.png', 34)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (283, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (8).png', 35)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (284, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (9).png', 35)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (285, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (10).png', 35)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (286, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (11).png', 35)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (287, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (12).png', 35)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (288, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (13).png', 35)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (289, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (14).png', 35)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (290, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (15).png', 35)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (291, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9.jpg', 35)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (292, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (1).jpg', 36)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (293, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (16).png', 36)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (294, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (17).png', 36)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (295, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (18).png', 36)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (296, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (19).png', 36)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (297, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (20).png', 36)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (298, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (21).png', 36)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (299, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (22).png', 36)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (300, N'jr-mercurial-superfly-8-academy-mg-younger-older-multi-ground-football-boot-8h51V9 (23).png', 36)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (301, N'star-runner-2-older-running-shoe-B3cVR3 (1).png', 37)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (302, N'star-runner-2-older-running-shoe-B3cVR3 (2).png', 37)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (303, N'star-runner-2-older-running-shoe-B3cVR3 (3).jpg', 37)
GO
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (304, N'star-runner-2-older-running-shoe-B3cVR3 (3).png', 37)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (305, N'star-runner-2-older-running-shoe-B3cVR3 (4).png', 37)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (306, N'star-runner-2-older-running-shoe-B3cVR3 (5).png', 37)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (307, N'star-runner-2-older-running-shoe-B3cVR3 (6).png', 37)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (308, N'star-runner-2-older-running-shoe-B3cVR3.png', 37)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (309, N'star-runner-2-older-running-shoe-B3cVR3 (8).png', 39)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (310, N'star-runner-2-older-running-shoe-B3cVR3.jpg', 39)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (311, N'star-runner-2-older-running-shoe-B3cVR3.png', 39)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (312, N'star-runner-2-older-running-shoe-B3cVR3 (1).jpg', 38)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (313, N'star-runner-2-older-running-shoe-B3cVR3 (10).png', 38)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (314, N'star-runner-2-older-running-shoe-B3cVR3 (12).png', 38)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (315, N'varsity-older-running-shoe-fJtJM3 (1).png', 41)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (316, N'varsity-older-running-shoe-fJtJM3 (2).png', 41)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (317, N'varsity-older-running-shoe-fJtJM3 (2).jpg', 41)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (318, N'varsity-older-running-shoe-fJtJM3 (3).png', 41)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (319, N'varsity-older-running-shoe-fJtJM3 (4).png', 41)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (320, N'varsity-older-running-shoe-fJtJM3 (5).png', 41)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (321, N'varsity-older-running-shoe-fJtJM3 (6).png', 41)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (322, N'varsity-older-running-shoe-fJtJM3.png', 41)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (323, N'varsity-older-running-shoe-fJtJM3.jpg', 40)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (324, N'varsity-older-running-shoe-fJtJM3 (9).png', 40)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (325, N'varsity-older-running-shoe-fJtJM3 (8).png', 40)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (326, N'varsity-older-running-shoe-fJtJM3 (10).png', 40)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (327, N'varsity-older-running-shoe-fJtJM3 (11).png', 40)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (328, N'varsity-older-running-shoe-fJtJM3 (14).png', 40)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (329, N'varsity-older-running-shoe-fJtJM3 (15).png', 40)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (330, N'varsity-older-running-shoe-fJtJM3 (7).png', 40)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (331, N'air-force-1-le-older-shoe-TDGHCN (1).jpg', 42)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (332, N'air-force-1-le-older-shoe-TDGHCN (2).png', 42)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (333, N'air-force-1-le-older-shoe-TDGHCN (1).png', 42)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (334, N'air-force-1-le-older-shoe-TDGHCN (3).png', 42)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (335, N'air-force-1-le-older-shoe-TDGHCN (4).png', 42)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (336, N'air-force-1-le-older-shoe-TDGHCN (5).png', 42)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (337, N'air-force-1-le-older-shoe-TDGHCN (6).png', 42)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (338, N'air-force-1-le-older-shoe-TDGHCN.png', 42)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (339, N'blazer-low-77-older-shoe-J24TzH (1).jpg', 43)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (340, N'blazer-low-77-older-shoe-J24TzH (2).png', 43)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (341, N'blazer-low-77-older-shoe-J24TzH (1).png', 43)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (342, N'blazer-low-77-older-shoe-J24TzH (3).png', 43)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (343, N'blazer-low-77-older-shoe-J24TzH (4).png', 43)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (344, N'blazer-low-77-older-shoe-J24TzH (5).png', 43)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (345, N'blazer-low-77-older-shoe-J24TzH (6).png', 43)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (346, N'blazer-low-77-older-shoe-J24TzH.png', 43)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (347, N'air-force-1-lv8-older-shoe-dsKs7k (1).jpg', 44)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (348, N'air-force-1-lv8-older-shoe-dsKs7k (2).png', 44)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (349, N'air-force-1-lv8-older-shoe-dsKs7k (1).png', 44)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (350, N'air-force-1-lv8-older-shoe-dsKs7k (3).png', 44)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (351, N'air-force-1-lv8-older-shoe-dsKs7k (4).png', 44)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (352, N'air-force-1-lv8-older-shoe-dsKs7k (5).png', 44)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (353, N'air-force-1-lv8-older-shoe-dsKs7k (6).png', 44)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (354, N'air-force-1-lv8-older-shoe-dsKs7k (7).png', 44)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (355, N'air-force-1-lv8-older-shoe-dsKs7k.png', 44)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (356, N'waffle-one-younger-shoe-TfBL7B (1).jpg', 45)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (357, N'waffle-one-younger-shoe-TfBL7B (2).png', 45)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (358, N'waffle-one-younger-shoe-TfBL7B (1).png', 45)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (359, N'waffle-one-younger-shoe-TfBL7B (3).png', 45)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (360, N'waffle-one-younger-shoe-TfBL7B (4).png', 45)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (361, N'waffle-one-younger-shoe-TfBL7B (6).png', 45)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (362, N'waffle-one-younger-shoe-TfBL7B (7).png', 45)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (363, N'waffle-one-younger-shoe-TfBL7B.png', 45)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (364, N'zion-1-older-shoe-vWZXGR (1).png', 47)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (365, N'zion-1-older-shoe-vWZXGR (2).png', 47)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (366, N'zion-1-older-shoe-vWZXGR (2).jpg', 47)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (367, N'zion-1-older-shoe-vWZXGR (3).png', 47)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (368, N'zion-1-older-shoe-vWZXGR (4).png', 47)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (369, N'zion-1-older-shoe-vWZXGR (5).png', 47)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (370, N'zion-1-older-shoe-vWZXGR (6).png', 47)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (371, N'zion-1-older-shoe-vWZXGR.png', 47)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (372, N'zion-1-older-shoe-vWZXGR (8).png', 46)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (373, N'zion-1-older-shoe-vWZXGR (9).png', 46)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (374, N'zion-1-older-shoe-vWZXGR.jpg', 46)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (375, N'zion-1-older-shoe-vWZXGR (10).png', 46)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (376, N'zion-1-older-shoe-vWZXGR (11).png', 46)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (377, N'zion-1-older-shoe-vWZXGR (12).png', 46)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (378, N'zion-1-older-shoe-vWZXGR (13).png', 46)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (379, N'zion-1-older-shoe-vWZXGR (7).png', 46)
SET IDENTITY_INSERT [dbo].[Img_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[NotificationsPusher] ON 

INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (1, N'21114623-8ec9-4f38-92ca-89af9a82e22c', CAST(N'2021-05-30T22:30:20.1960602' AS DateTime2), N'New order with ID of #15 is successfully by hubblespace2205', 0)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (2, N'21114623-8ec9-4f38-92ca-89af9a82e22c', CAST(N'2021-05-30T23:26:58.1612843' AS DateTime2), N'New order with ID of #16 is successfully by hubblespace2205', 0)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (4, N'40afe365-0a79-4181-8838-72419dfb66c4', CAST(N'2021-05-31T00:41:39.1662462' AS DateTime2), N'Your order with ID of #17 is is modified by tttuyen2205@gmail.com', 0)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (5, N'21114623-8ec9-4f38-92ca-89af9a82e22c', CAST(N'2021-05-31T00:43:24.9020752' AS DateTime2), N'New order with ID of #17 is successfully by hubblespace2205', 0)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (11, N'40afe365-0a79-4181-8838-72419dfb66c4', CAST(N'2021-06-01T10:07:47.2577575' AS DateTime2), N'Your order with ID of #17 is modified by hubblespace2205', 0)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (12, N'21114623-8ec9-4f38-92ca-89af9a82e22c', CAST(N'2021-06-01T10:22:05.2631039' AS DateTime2), N'ID of #10, Your order status is changed by hubblespace2205 to Đang đóng gói ', 0)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (13, N'21114623-8ec9-4f38-92ca-89af9a82e22c', CAST(N'2021-06-01T11:44:46.9880604' AS DateTime2), N'New order with ID of #18 is successfully by hubblespace2205', 0)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (1008, N'40afe365-0a79-4181-8838-72419dfb66c4', CAST(N'2021-06-02T14:06:42.3735559' AS DateTime2), N'New order with ID of #1018 is successfully by tttuyen2205@gmail.com', 1)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (1009, N'21114623-8ec9-4f38-92ca-89af9a82e22c', CAST(N'2021-06-02T15:49:24.5450324' AS DateTime2), N'New order with ID of #1019 is successfully by hubblespace2205', 0)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (1010, N'40afe365-0a79-4181-8838-72419dfb66c4', CAST(N'2021-06-09T22:58:24.5629506' AS DateTime2), N'New order with ID of #1020 is successfully by tttuyen2205@gmail.com', 1)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (1011, N'40afe365-0a79-4181-8838-72419dfb66c4', CAST(N'2021-06-09T23:35:23.3918901' AS DateTime2), N'New order with ID of #1021 is successfully by tttuyen2205@gmail.com', 1)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (1012, N'40afe365-0a79-4181-8838-72419dfb66c4', CAST(N'2021-06-11T11:37:17.7505305' AS DateTime2), N'New order with ID of #1022 is successfully by tttuyen2205@gmail.com', 1)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (1013, N'40afe365-0a79-4181-8838-72419dfb66c4', CAST(N'2021-06-11T11:42:50.8482566' AS DateTime2), N'New order with ID of #1023 is successfully by tttuyen2205@gmail.com', 1)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (1014, N'21114623-8ec9-4f38-92ca-89af9a82e22c', CAST(N'2021-06-11T13:37:39.1181746' AS DateTime2), N'New order with ID of #1025 is successfully by tttuyen2205@gmail.com', 0)
INSERT [dbo].[NotificationsPusher] ([ID_Notifcation], [UserId], [Date_Created], [Content], [ReadStatus]) VALUES (1015, N'21114623-8ec9-4f38-92ca-89af9a82e22c', CAST(N'2021-06-11T16:04:28.8942136' AS DateTime2), N'New order with ID of #1026 is successfully by tttuyen2205@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[NotificationsPusher] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (3, 2099000, 200000, CAST(N'2021-05-26T23:49:57.0031258' AS DateTime2), N'280 An Dương Vương', N'Phạm Trang', N'0909888777', N'a5355e6e-a3af-41d8-87ed-61d841d83a0e', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (4, 1529000, 0, CAST(N'2021-05-27T00:49:53.7727180' AS DateTime2), N'280 An Dương Vương', N'Phạm Trang', N'0909888777', N'a5355e6e-a3af-41d8-87ed-61d841d83a0e', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (5, 2299000, 0, CAST(N'2021-04-30T12:08:08.2541117' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (6, 1529000, 0, CAST(N'2021-05-30T12:08:49.6640916' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (7, 1529000, 0, CAST(N'2021-05-30T12:09:23.3075484' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (8, 4078000, 0, CAST(N'2021-03-30T12:15:34.8561686' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (9, 4458000, 0, CAST(N'2021-02-27T12:16:15.6471635' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (10, 2400000, 0, CAST(N'2021-05-31T09:21:32.9660000' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Đang đóng gói', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (11, 9729000, 0, CAST(N'2021-01-30T12:29:05.4728058' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (12, 2929000, 0, CAST(N'2021-04-30T12:30:34.1170000' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Đang đóng gói', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (13, 2400000, 0, CAST(N'2021-01-30T12:31:46.5315725' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (14, 1529000, 0, CAST(N'2021-05-30T13:32:56.1484456' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (15, 1529000, 0, CAST(N'2021-05-30T22:30:14.7332910' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (16, 1529000, 0, CAST(N'2021-05-31T00:33:29.4167244' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (17, 1529000, 0, CAST(N'2021-05-31T01:12:07.6280000' AS DateTime2), N'280 An Duong Vuong', N'Thanh Tuyền Trịnh Phạm', N'0372324620', N'40afe365-0a79-4181-8838-72419dfb66c4', N'Đang đóng gói', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (18, 2299000, 0, CAST(N'2021-06-01T11:44:43.8941966' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 0)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (1018, 1529000, 0, CAST(N'2021-06-02T14:06:40.9290363' AS DateTime2), N'B307', N'Thanh Tuyền Trịnh Phạm', N'0909556265', N'40afe365-0a79-4181-8838-72419dfb66c4', N'Mới đặt', 1)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (1019, 1529000, 0, CAST(N'2021-06-02T15:49:22.6780643' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0909556265', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 1)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (1020, 1529000, 0, CAST(N'2021-06-09T22:58:21.9158488' AS DateTime2), N'280 An Duong Vuong', N'Thanh Tuyền Trịnh Phạm', N'0372324620', N'40afe365-0a79-4181-8838-72419dfb66c4', N'Mới đặt', 1)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (1021, 1529000, 0, CAST(N'2021-06-09T23:35:22.3717102' AS DateTime2), N'280 An Duong Vuong', N'Thanh Tuyền Trịnh Phạm', N'0372324620', N'40afe365-0a79-4181-8838-72419dfb66c4', N'Mới đặt', 1)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (1022, 2299000, 0, CAST(N'2021-06-11T11:37:15.8221482' AS DateTime2), N'280 An Duong Vuong', N'Thanh Tuyền Trịnh Phạm', N'0372324620', N'40afe365-0a79-4181-8838-72419dfb66c4', N'Mới đặt', 1)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (1023, 2299000, 0, CAST(N'2021-06-11T11:42:49.3277261' AS DateTime2), N'280 An Duong Vuong', N'Thanh Tuyền Trịnh Phạm', N'0372324620', N'40afe365-0a79-4181-8838-72419dfb66c4', N'Mới đặt', 1)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (1024, 2299000, 0, CAST(N'2021-06-11T12:02:25.6490673' AS DateTime2), N'280 An Duong Vuong', N'Tuyen Trinh Pham Thanh', N'0372324620', N'21114623-8ec9-4f38-92ca-89af9a82e22c', N'Mới đặt', 1)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (1025, 1529000, 0, CAST(N'2021-06-11T13:37:37.8539445' AS DateTime2), N'280 An Duong Vuong', N'Thanh Tuyền Trịnh Phạm', N'0372324620', N'40afe365-0a79-4181-8838-72419dfb66c4', N'Mới đặt', 1)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Discount], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [PaymentStatus]) VALUES (1026, 1529000, 0, CAST(N'2021-06-11T16:04:26.4731464' AS DateTime2), N'280 An Duong Vuong', N'Thanh Tuyền Trịnh Phạm', N'0372324620', N'40afe365-0a79-4181-8838-72419dfb66c4', N'Mới đặt', 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1, 47, N'35.5 EU', 2299000, 1, 3)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (2, 41, N'35.5 EU', 1529000, 1, 4)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (3, 47, N'35.5 EU', 2299000, 1, 5)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (4, 40, N'35.5 EU', 1529000, 1, 6)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (5, 41, N'37 EU', 1529000, 1, 7)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (6, 42, N'35.5 EU', 2039000, 1, 8)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (7, 45, NULL, 2039000, 1, 8)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (8, 41, N'40 EU', 1529000, 1, 9)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (9, 16, NULL, 2929000, 1, 9)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (10, 13, NULL, 2400000, 1, 10)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (11, 13, NULL, 2400000, 1, 11)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (12, 10, N'3.5 UK', 3220000, 1, 11)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (13, 23, NULL, 4109000, 1, 11)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (14, 17, N'3.5 UK', 2929000, 1, 12)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (15, 12, N'3.5 UK', 2400000, 4, 13)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (16, 40, N'35.5 EU', 1529000, 1, 14)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (17, 40, N'35.5 EU', 1529000, 1, 15)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (18, 40, N'36 EU', 1529000, 1, 16)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (19, 40, N'39 EU', 1529000, 1, 17)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (20, 47, N'35.5 EU', 2299000, 1, 18)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1020, 40, N'36 EU', 1529000, 1, 1018)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1021, 40, N'39.5 EU', 1529000, 1, 1019)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1022, 40, N'35.5 EU', 1529000, 1, 1020)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1023, 41, N'39 EU', 1529000, 1, 1021)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1024, 47, N'35.5 EU', 2299000, 1, 1022)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1025, 44, N'36 EU', 2299000, 1, 1023)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1026, 47, N'39 EU', 2299000, 1, 1024)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1027, 40, N'40 EU', 1529000, 1, 1025)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Price_Sale], [Quantity], [ID_Order]) VALUES (1028, 40, N'36 EU', 1529000, 1, 1026)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (1, N'ULTRABOOST 20 DNA', 5000000, 5000000, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (2, N'ULTRABOOST 20', 5000000, 5000000, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (3, N'ULTRA 4D 5', 6000000, 6000000, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (4, N'Nike Air Zoom Vomero 15', 4409000, 4409000, 2, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (5, N'X9000L2 W', 2700000, 2160000, 1, 2)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (6, N'Calibrate Runner Mono', 3220000, 3220000, 3, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (7, N'SUPERSTAR', 2400000, 2400000, 1, 11)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (8, N'SUPERSTAR', 2400000, 2400000, 1, 10)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (9, N'Nike React Escape Run', 2929000, 2929000, 2, 2)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (10, N'Air Jordan XXXV PF', 5129000, 5129000, 2, 13)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (11, N'PG 4 PCG EP', 3239000, 3239000, 2, 13)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (12, N'LeBron 17 Low', 4699000, 2818000, 2, 13)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (13, N'Nike Metcon 6 FlyEase', 3829000, 3829000, 2, 3)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (14, N'Nike Metcon 6 AMP', 4109000, 4109000, 2, 3)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (15, N'NikeCourt Air Zoom GP Turbo', 4109000, 4109000, 2, 8)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (16, N'NikeCourt Air Max Vapor Wing Premium', 2929000, 2929000, 2, 8)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (17, N'Nike Air Zoom Pegasus 38', 2419000, 2419000, 2, 5)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (18, N'Nike Air Max 90 SE', 2809000, 2809000, 2, 5)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (19, N'Nike Kawa SE 2', 819000, 819000, 2, 14)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (20, N'Nike Jr. Phantom GT Academy Dynamic Fit MG', 2039000, 2039000, 2, 15)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (21, N'Nike Jr. Mercurial Superfly 8 Academy MG', 2039000, 2039000, 2, 15)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (22, N'Nike Star Runner 2', 1399000, 1399000, 2, 5)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (23, N'Nike Varsity', 1529000, 1529000, 2, 5)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (24, N'Nike Air Force 1 LE', 2039000, 2039000, 2, 12)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (25, N'Nike Blazer Low ''77', 1659000, 1659000, 2, 12)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (26, N'Nike Air Force 1 LV8', 2299000, 2299000, 2, 12)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (27, N'Nike Waffle One', 2039000, 2039000, 2, 12)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (28, N'Zion 1', 2299000, 2299000, 2, 12)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([ID_ToDo], [UserId], [Date_Created], [Title], [Description], [status]) VALUES (1, N'21114623-8ec9-4f38-92ca-89af9a82e22c', CAST(N'2021-05-30T13:30:00.0000000' AS DateTime2), N'Meeting with Iron Man', N'Meeting with Iron Man', 1)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (372, N'3.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (373, N'4 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (374, N'4.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (375, N'5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (376, N'5.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (377, N'6 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (378, N'6.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (379, N'7 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (380, N'7.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (381, N'8 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (382, N'8.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (383, N'9 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (384, N'9.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (385, N'10 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (386, N'10.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (387, N'11 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (388, N'11.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (389, N'12 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (390, N'12.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (391, N'3.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (392, N'4 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (393, N'4.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (394, N'5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (395, N'5.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (396, N'6 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (397, N'6.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (398, N'7 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (399, N'7.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (400, N'8 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (401, N'8.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (402, N'9 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (403, N'9.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (404, N'10 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (405, N'10.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (406, N'11 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (407, N'11.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (408, N'12 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (409, N'12.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (410, N'3.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (411, N'4 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (412, N'4.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (413, N'5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (414, N'5.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (415, N'6 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (416, N'6.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (417, N'7 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (418, N'7.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (419, N'8 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (420, N'8.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (421, N'9 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (422, N'9.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (423, N'10 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (424, N'10.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (425, N'11 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (426, N'11.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (427, N'12 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (428, N'12.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (429, N'3.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (430, N'4 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (431, N'4.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (432, N'5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (433, N'5.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (434, N'6 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (435, N'6.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (436, N'7 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (437, N'7.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (438, N'8 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (439, N'8.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (440, N'9 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (441, N'9.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (442, N'10 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (443, N'10.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (444, N'11 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (445, N'11.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (446, N'12 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (447, N'12.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (448, N'3.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (449, N'4 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (450, N'4.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (451, N'5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (452, N'5.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (453, N'6 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (454, N'6.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (455, N'7 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (456, N'7.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (457, N'8 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (458, N'8.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (459, N'9 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (460, N'9.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (461, N'10 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (462, N'10.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (463, N'11 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (464, N'11.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (465, N'12 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (466, N'12.5 UK', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (467, N'3.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (468, N'4 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (469, N'4.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (470, N'5 UK', 100, 6)
GO
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (471, N'5.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (472, N'6 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (473, N'6.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (474, N'7 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (475, N'7.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (476, N'8 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (477, N'8.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (478, N'9 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (479, N'9.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (480, N'10 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (481, N'10.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (482, N'11 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (483, N'11.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (484, N'12 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (485, N'12.5 UK', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (486, N'3.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (487, N'4 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (488, N'4.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (489, N'5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (490, N'5.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (491, N'6 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (492, N'6.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (493, N'7 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (494, N'7.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (495, N'8 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (496, N'8.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (497, N'9 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (498, N'9.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (499, N'10 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (500, N'10.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (501, N'11 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (502, N'11.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (503, N'12 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (504, N'12.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (505, N'3.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (506, N'4 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (507, N'4.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (508, N'5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (509, N'5.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (510, N'6 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (511, N'6.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (512, N'7 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (513, N'7.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (514, N'8 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (515, N'8.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (516, N'9 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (517, N'9.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (518, N'10 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (519, N'10.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (520, N'11 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (521, N'11.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (522, N'12 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (523, N'12.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (524, N'3.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (525, N'4 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (526, N'4.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (527, N'5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (528, N'5.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (529, N'6 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (530, N'6.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (531, N'7 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (532, N'7.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (533, N'8 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (534, N'8.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (535, N'9 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (536, N'9.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (537, N'10 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (538, N'10.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (539, N'11 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (540, N'11.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (541, N'12 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (542, N'12.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (543, N'3.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (544, N'4 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (545, N'4.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (546, N'5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (547, N'5.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (548, N'6 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (549, N'6.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (550, N'7 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (551, N'7.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (552, N'8 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (553, N'8.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (554, N'9 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (555, N'9.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (556, N'10 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (557, N'10.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (558, N'11 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (559, N'11.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (560, N'12 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (561, N'12.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (562, N'3.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (563, N'4 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (564, N'4.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (565, N'5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (566, N'5.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (567, N'6 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (568, N'6.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (569, N'7 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (570, N'7.5 UK', 100, 11)
GO
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (571, N'8 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (572, N'8.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (573, N'9 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (574, N'9.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (575, N'10 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (576, N'10.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (577, N'11 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (578, N'11.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (579, N'12 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (580, N'12.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (581, N'3.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (582, N'4 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (583, N'4.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (584, N'5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (585, N'5.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (586, N'6 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (587, N'6.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (588, N'7 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (589, N'7.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (590, N'8 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (591, N'8.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (592, N'9 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (593, N'9.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (594, N'10 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (595, N'10.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (596, N'11 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (597, N'11.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (598, N'12 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (599, N'12.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (600, N'3.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (601, N'4 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (602, N'4.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (603, N'5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (604, N'5.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (605, N'6 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (606, N'6.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (607, N'7 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (608, N'7.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (609, N'8 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (610, N'8.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (611, N'9 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (612, N'9.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (613, N'10 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (614, N'10.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (615, N'11 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (616, N'11.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (617, N'12 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (618, N'12.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (619, N'3.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (620, N'4 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (621, N'4.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (622, N'5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (623, N'5.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (624, N'6 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (625, N'6.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (626, N'7 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (627, N'7.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (628, N'8 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (629, N'8.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (630, N'9 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (631, N'9.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (632, N'10 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (633, N'10.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (634, N'11 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (635, N'11.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (636, N'12 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (637, N'12.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (638, N'3.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (639, N'4 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (640, N'4.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (641, N'5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (642, N'5.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (643, N'6 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (644, N'6.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (645, N'7 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (646, N'7.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (647, N'8 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (648, N'8.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (649, N'9 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (650, N'9.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (651, N'10 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (652, N'10.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (653, N'11 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (654, N'11.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (655, N'12 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (656, N'12.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (657, N'3.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (658, N'4 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (659, N'4.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (660, N'5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (661, N'5.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (662, N'6 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (663, N'6.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (664, N'7 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (665, N'7.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (666, N'8 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (667, N'8.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (668, N'9 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (669, N'9.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (670, N'10 UK', 100, 16)
GO
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (671, N'10.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (672, N'11 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (673, N'11.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (674, N'12 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (675, N'12.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (676, N'3.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (677, N'4 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (678, N'4.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (679, N'5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (680, N'5.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (681, N'6 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (682, N'6.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (683, N'7 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (684, N'7.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (685, N'8 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (686, N'8.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (687, N'9 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (688, N'9.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (689, N'10 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (690, N'10.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (691, N'11 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (692, N'11.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (693, N'12 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (694, N'12.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (695, N'3.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (696, N'4 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (697, N'4.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (698, N'5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (699, N'5.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (700, N'6 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (701, N'6.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (702, N'7 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (703, N'7.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (704, N'8 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (705, N'8.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (706, N'9 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (707, N'9.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (708, N'10 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (709, N'10.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (710, N'11 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (711, N'11.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (712, N'12 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (713, N'12.5 UK', 100, 18)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (714, N'3.5 UK', 1000, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (715, N'4 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (716, N'4.5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (717, N'5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (718, N'5.5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (719, N'6 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (720, N'6.5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (721, N'7 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (722, N'7.5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (723, N'8 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (724, N'8.5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (725, N'9 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (726, N'9.5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (727, N'10 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (728, N'10.5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (729, N'11 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (730, N'11.5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (731, N'12 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (732, N'12.5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (733, N'3.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (734, N'4 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (735, N'4.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (736, N'5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (737, N'5.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (738, N'6 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (739, N'6.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (740, N'7 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (741, N'7.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (742, N'8 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (743, N'8.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (744, N'9 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (745, N'9.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (746, N'10 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (747, N'10.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (748, N'11 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (749, N'11.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (750, N'12 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (751, N'12.5 UK', 100, 20)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (752, N'3.5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (753, N'4 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (754, N'4.5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (755, N'5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (756, N'5.5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (757, N'6 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (758, N'6.5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (759, N'7 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (760, N'7.5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (761, N'8 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (762, N'8.5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (763, N'9 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (764, N'9.5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (765, N'10 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (766, N'10.5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (767, N'11 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (768, N'11.5 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (769, N'12 UK', 100, 21)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (770, N'12.5 UK', 100, 21)
GO
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (771, N'3.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (772, N'4 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (773, N'4.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (774, N'5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (775, N'5.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (776, N'6 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (777, N'6.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (778, N'7 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (779, N'7.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (780, N'8 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (781, N'8.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (782, N'9 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (783, N'9.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (784, N'10 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (785, N'10.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (786, N'11 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (787, N'11.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (788, N'12 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (789, N'12.5 UK', 100, 22)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (790, N'3.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (791, N'4 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (792, N'4.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (793, N'5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (794, N'5.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (795, N'6 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (796, N'6.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (797, N'7 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (798, N'7.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (799, N'8 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (800, N'8.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (801, N'9 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (802, N'9.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (803, N'10 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (804, N'10.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (805, N'11 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (806, N'11.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (807, N'12 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (808, N'12.5 UK', 100, 23)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (809, N'3.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (810, N'4 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (811, N'4.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (812, N'5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (813, N'5.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (814, N'6 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (815, N'6.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (816, N'7 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (817, N'7.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (818, N'8 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (819, N'8.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (820, N'9 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (821, N'9.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (822, N'10 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (823, N'10.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (824, N'11 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (825, N'11.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (826, N'12 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (827, N'12.5 UK', 100, 24)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (828, N'3.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (829, N'4 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (830, N'4.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (831, N'5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (832, N'5.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (833, N'6 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (834, N'6.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (835, N'7 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (836, N'7.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (837, N'8 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (838, N'8.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (839, N'9 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (840, N'9.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (841, N'10 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (842, N'10.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (843, N'11 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (844, N'11.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (845, N'12 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (846, N'12.5 UK', 100, 25)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (925, N'5 UK', 100, 19)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (926, N'35.5 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (927, N'36 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (928, N'36.5 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (929, N'37 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (930, N'37.5 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (931, N'38 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (932, N'38.5 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (933, N'39 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (934, N'39.5 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (935, N'40 EU', 100, 26)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (936, N'35.5 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (937, N'36 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (938, N'36.5 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (939, N'37 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (940, N'37.5 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (941, N'38 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (942, N'38.5 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (943, N'39 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (944, N'39.5 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (945, N'40 EU', 100, 27)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (946, N'35.5 EU', 100, 28)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (947, N'36 EU', 100, 28)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (948, N'36.5 EU', 100, 28)
GO
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (949, N'37 EU', 100, 28)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (950, N'37.5 EU', 100, 28)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (951, N'38 EU', 100, 28)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (952, N'38.5 EU', 100, 28)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (953, N'39 EU', 100, 28)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (954, N'39.5 EU', 100, 28)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (955, N'40 EU', 100, 28)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (956, N'35.5 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (957, N'36 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (958, N'36.5 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (959, N'37 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (960, N'37.5 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (961, N'38 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (962, N'38.5 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (963, N'39 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (964, N'39.5 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (965, N'40 EU', 100, 29)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (966, N'35.5 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (967, N'36 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (968, N'36.5 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (969, N'37 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (970, N'37.5 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (971, N'38 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (972, N'38.5 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (973, N'39 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (974, N'39.5 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (975, N'40 EU', 100, 30)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (976, N'35.5 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (977, N'36 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (978, N'36.5 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (979, N'37 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (980, N'37.5 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (981, N'38 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (982, N'38.5 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (983, N'39 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (984, N'39.5 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (985, N'40 EU', 100, 31)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (986, N'35.5 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (987, N'36 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (988, N'36.5 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (989, N'37 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (990, N'37.5 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (991, N'38 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (992, N'38.5 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (993, N'39 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (994, N'39.5 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (995, N'40 EU', 100, 32)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (996, N'35.5 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (997, N'36 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (998, N'36.5 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (999, N'37 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1000, N'37.5 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1001, N'38 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1002, N'38.5 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1003, N'39 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1004, N'39.5 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1005, N'40 EU', 100, 33)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1006, N'35.5 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1007, N'36 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1008, N'36.5 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1009, N'37 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1010, N'37.5 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1011, N'38 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1012, N'38.5 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1013, N'39 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1014, N'39.5 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1015, N'40 EU', 100, 34)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1016, N'35.5 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1017, N'36 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1018, N'36.5 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1019, N'37 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1020, N'37.5 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1021, N'38 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1022, N'38.5 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1023, N'39 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1024, N'39.5 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1025, N'40 EU', 100, 35)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1026, N'35.5 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1027, N'36 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1028, N'36.5 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1029, N'37 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1030, N'37.5 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1031, N'38 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1032, N'38.5 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1033, N'39 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1034, N'39.5 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1035, N'40 EU', 100, 36)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1036, N'35.5 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1037, N'36 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1038, N'36.5 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1039, N'37 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1040, N'37.5 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1041, N'38 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1042, N'38.5 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1043, N'39 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1044, N'39.5 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1045, N'40 EU', 100, 37)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1046, N'35.5 EU', 100, 38)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1047, N'36 EU', 100, 38)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1048, N'36.5 EU', 100, 38)
GO
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1049, N'37 EU', 100, 38)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1050, N'37.5 EU', 100, 38)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1051, N'38 EU', 100, 38)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1052, N'38.5 EU', 100, 38)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1053, N'39 EU', 100, 38)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1054, N'39.5 EU', 100, 38)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1055, N'40 EU', 100, 38)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1056, N'35.5 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1057, N'36 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1058, N'36.5 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1059, N'37 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1060, N'37.5 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1061, N'38 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1062, N'38.5 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1063, N'39 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1064, N'39.5 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1065, N'40 EU', 100, 39)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1066, N'35.5 EU', 99, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1067, N'36 EU', 99, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1068, N'36.5 EU', 100, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1069, N'37 EU', 100, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1070, N'37.5 EU', 100, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1071, N'38 EU', 100, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1072, N'38.5 EU', 100, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1073, N'39 EU', 100, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1074, N'39.5 EU', 100, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1075, N'40 EU', 99, 40)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1076, N'35.5 EU', 100, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1077, N'36 EU', 100, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1078, N'36.5 EU', 100, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1079, N'37 EU', 100, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1080, N'37.5 EU', 100, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1081, N'38 EU', 100, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1082, N'38.5 EU', 100, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1083, N'39 EU', 99, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1084, N'39.5 EU', 100, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1085, N'40 EU', 100, 41)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1086, N'35.5 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1087, N'36 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1088, N'36.5 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1089, N'37 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1090, N'37.5 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1091, N'38 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1092, N'38.5 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1093, N'39 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1094, N'39.5 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1095, N'40 EU', 100, 42)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1096, N'35.5 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1097, N'36 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1098, N'36.5 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1099, N'37 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1100, N'37.5 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1101, N'38 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1102, N'38.5 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1103, N'39 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1104, N'39.5 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1105, N'40 EU', 100, 43)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1106, N'35.5 EU', 100, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1107, N'36 EU', 99, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1108, N'36.5 EU', 100, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1109, N'37 EU', 100, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1110, N'37.5 EU', 100, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1111, N'38 EU', 100, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1112, N'38.5 EU', 100, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1113, N'39 EU', 100, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1114, N'39.5 EU', 100, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1115, N'40 EU', 100, 44)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1116, N'35.5 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1117, N'36 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1118, N'36.5 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1119, N'37 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1120, N'37.5 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1121, N'38 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1122, N'38.5 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1123, N'39 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1124, N'39.5 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1125, N'40 EU', 100, 45)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1126, N'35.5 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1127, N'36 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1128, N'36.5 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1129, N'37 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1130, N'37.5 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1131, N'38 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1132, N'38.5 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1133, N'39 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1134, N'39.5 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1135, N'40 EU', 100, 46)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1136, N'35.5 EU', 99, 47)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1137, N'36 EU', 100, 47)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1138, N'36.5 EU', 100, 47)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1139, N'37 EU', 100, 47)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1140, N'37.5 EU', 100, 47)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1141, N'38 EU', 100, 47)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1142, N'38.5 EU', 100, 47)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1143, N'39 EU', 99, 47)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1144, N'39.5 EU', 100, 47)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1145, N'40 EU', 100, 47)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Color_Product_ID_Product]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Color_Product_ID_Product] ON [dbo].[Color_Product]
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DiscountUsed_ID_Discount]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiscountUsed_ID_Discount] ON [dbo].[DiscountUsed]
(
	[ID_Discount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DiscountUsed_UserId]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiscountUsed_UserId] ON [dbo].[DiscountUsed]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Img_Product_ID_Color_Product]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Img_Product_ID_Color_Product] ON [dbo].[Img_Product]
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_NotificationsPusher_UserId]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_NotificationsPusher_UserId] ON [dbo].[NotificationsPusher]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_UserId]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_UserId] ON [dbo].[Order]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ID_Color_Product]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ID_Color_Product] ON [dbo].[OrderDetail]
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ID_Order]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ID_Order] ON [dbo].[OrderDetail]
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ID_Brand]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ID_Brand] ON [dbo].[Product]
(
	[ID_Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ID_Categorie]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ID_Categorie] ON [dbo].[Product]
(
	[ID_Categorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Schedule_UserId]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Schedule_UserId] ON [dbo].[Schedule]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Size_ID_Color_Product]    Script Date: 6/11/2021 4:38:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Size_ID_Color_Product] ON [dbo].[Size]
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [PaymentStatus]
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
ALTER TABLE [dbo].[Color_Product]  WITH CHECK ADD  CONSTRAINT [FK_Color_Product_Product_ID_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Color_Product] CHECK CONSTRAINT [FK_Color_Product_Product_ID_Product]
GO
ALTER TABLE [dbo].[DiscountUsed]  WITH CHECK ADD  CONSTRAINT [FK_DiscountUsed_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DiscountUsed] CHECK CONSTRAINT [FK_DiscountUsed_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[DiscountUsed]  WITH CHECK ADD  CONSTRAINT [FK_DiscountUsed_Discount_ID_Discount] FOREIGN KEY([ID_Discount])
REFERENCES [dbo].[Discount] ([ID_Discount])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscountUsed] CHECK CONSTRAINT [FK_DiscountUsed_Discount_ID_Discount]
GO
ALTER TABLE [dbo].[Img_Product]  WITH CHECK ADD  CONSTRAINT [FK_Img_Product_Color_Product_ID_Color_Product] FOREIGN KEY([ID_Color_Product])
REFERENCES [dbo].[Color_Product] ([ID_Color_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Img_Product] CHECK CONSTRAINT [FK_Img_Product_Color_Product_ID_Color_Product]
GO
ALTER TABLE [dbo].[NotificationsPusher]  WITH CHECK ADD  CONSTRAINT [FK_NotificationsPusher_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NotificationsPusher] CHECK CONSTRAINT [FK_NotificationsPusher_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AspNetUsers_UserId]
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
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_AspNetUsers_UserId]
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
