USE [master]
GO
/****** Object:  Database [TransactionDb]    Script Date: 2022/09/19 14:42:00 ******/
CREATE DATABASE [TransactionDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TransactionDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCALHOST\MSSQL\DATA\TransactionDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TransactionDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LOCALHOST\MSSQL\DATA\TransactionDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TransactionDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TransactionDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TransactionDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TransactionDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TransactionDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TransactionDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TransactionDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [TransactionDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TransactionDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TransactionDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TransactionDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TransactionDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TransactionDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TransactionDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TransactionDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TransactionDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TransactionDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TransactionDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TransactionDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TransactionDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TransactionDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TransactionDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TransactionDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TransactionDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TransactionDb] SET RECOVERY FULL 
GO
ALTER DATABASE [TransactionDb] SET  MULTI_USER 
GO
ALTER DATABASE [TransactionDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TransactionDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TransactionDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TransactionDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TransactionDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TransactionDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TransactionDb', N'ON'
GO
ALTER DATABASE [TransactionDb] SET QUERY_STORE = OFF
GO
USE [TransactionDb]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[code] [int] IDENTITY(1,1) NOT NULL,
	[person_code] [int] NOT NULL,
	[account_number] [varchar](50) NOT NULL,
	[outstanding_balance] [money] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[code] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[id_number] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[code] [int] IDENTITY(1,1) NOT NULL,
	[account_code] [int] NOT NULL,
	[transaction_date] [datetime] NOT NULL,
	[capture_date] [datetime] NOT NULL,
	[amount] [money] NOT NULL,
	[description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTbl]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTbl](
	[UserName] [varchar](50) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (1, 1, N'100005771', 82.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (2, 2, N'10203040501', 267.6100)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (3, 3, N'10003731', 520.6700)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (4, 4, N'1000779200', 158.7000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (5, 5, N'10011773', 641.7000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (6, 6, N'10012044', 157.6000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (7, 7, N'100137', 936.4100)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (8, 8, N'10014357', 440.8700)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (9, 9, N'10015256', 170.6800)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (10, 10, N'10016473', 663.7700)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (11, 11, N'10017712', 1471.2700)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (12, 12, N'10019324', 269.8200)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (13, 13, N'10019766', 485.7800)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (14, 14, N'10020241', 715.8300)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (15, 15, N'10020918', 81.3500)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (16, 16, N'10021663', 627.1300)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (17, 17, N'10021698', 426.4300)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (18, 18, N'10022821', 557.3000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (19, 19, N'10022996', 299.2000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (20, 20, N'10024492', 767.2500)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (21, 21, N'10027262', 483.5500)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (22, 22, N'10027602', 724.2600)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (23, 23, N'10028579', 1008.9900)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (24, 24, N'1002864', 1059.4300)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (25, 25, N'10032223', 719.6500)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (27, 27, N'1003267', 843.5900)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (28, 28, N'10036466', 1186.8500)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (30, 30, N'10036679', 226.7900)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (31, 31, N'10037489', 117.5200)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (32, 32, N'10039015', 542.0800)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (34, 34, N'10040919', 612.1000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (35, 35, N'10041745', 191.7000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (36, 36, N'10044361', 807.6000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (37, 37, N'10045473', 806.4500)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (38, 38, N'10045856', 310.0300)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (41, 41, N'10048812', 648.3500)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (42, 42, N'1005022', 260.8500)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (43, 43, N'10050523', 532.6300)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (44, 44, N'10052623', 302.8500)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (45, 45, N'10052712', 633.4300)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (46, 46, N'10053581', 281.7700)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (47, 47, N'10053794', 268.4600)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (48, 48, N'10054855', 1803.2800)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (49, 49, N'10056262', 789.7400)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (50, 50, N'10057269', 359.6000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (1002, 2, N'10203040', 1090.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (3010, 2007, N'20506010', 50.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (3011, 1008, N'90508833', 50.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (4010, 1, N'805090100', 0.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (4012, 1, N'96354809', 0.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (4014, 2, N'456987123', 0.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (4015, 2, N'741258963', 100.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (4016, 1, N'80509663312', 0.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (4017, 33, N'7896325412', 0.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (4018, 40, N'8564289', 610.0000)
INSERT [dbo].[Accounts] ([code], [person_code], [account_number], [outstanding_balance]) VALUES (5010, 1, N'10000577', 0.0000)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (1, N'REJOCE', N'MAJOLA', N'63XX2907910XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (2, N'Zikalala', N'MOKOMELE', N'70XX2403660XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (3, N'NTOMBIKHONA', N'MLAMBO', N'42XX1002420XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (4, N'KLAAS', N'OCKHUIS', N'39XX1400850XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (5, N'FERDI', N'LUUS', N'59XX0110380XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (6, N'SHAUN', N'LOVELOT', N'67XX1807700XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (7, N'', N'MOSOOANE', N'74XX2301550XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (8, N'', N'MOTENO', N'59XX1901940XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (9, N'', N'ZWANE', N'66XX0354900XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (10, N'JOSEPH', N'MOSWEU', N'72XX1806150XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (11, N'', N'ZULU', N'78XX0650010XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (12, N'', N'SKINI', N'72XX2205500XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (13, N'', N'MASOPA', N'60XX0707320XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (14, N'', N'COETZEE', N'56XX2351400XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (15, N'', N'BEN', N'65XX1003960XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (16, N'SOPHIE', N'SIHLANGU', N'68XX1612540XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (17, N'BUYISELWA', N'KEPATA', N'71XX2451300XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (18, N'ZANELE', N'NDLOVU', N'72XX2702550XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (19, N'', N'BARNABAS', N'62XX2207640XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (20, N'', N'ABRAHAMS', N'75XX2302470XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (21, N'', N'GOVENDER', N'73XX1104570XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (22, N'', N'ABDUL', N'65XX0106100XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (23, N'', N'MBIXANE', N'47XX2706770XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (24, N'MAVIS', N'MBOMBO', N'59XX1002010XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (25, N'', N'RAMALEPE', N'44XX0801450XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (27, N'', N'DE MEYER', N'69XX2604250XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (28, N'MICHAELINE', N'SITUMA', N'73XX0311610XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (30, N'', N'WEAVER', N'76XX2904740XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (31, N'REBECCA', N'JOOSTE', N'70XX2251240XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (32, N'', N'MOKETSI', N'67XX2750210XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (33, N'BUSISIWE', N'MTHANTI', N'77XX0952460XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (34, N'MICHEAL', N'TRUTER', N'67XX1256390XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (35, N'GLORY', N'SITHOLE', N'70XX0355620XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (36, N'ANNA', N'KOBE', N'57XX1907550XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (37, N'', N'PARTAB', N'69XX2459930XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (38, N'STORY', N'MAIPATO', N'70XX1507650XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (40, N'FRANS', N'TOSKEY', N'73XX1306320XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (41, N'LILLIAN', N'DANIELS', N'58XX3100790XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (42, N'THEMBILE', N'MLUMBI', N'72XX0401610XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (43, N'BERENICE', N'MEINTJIES', N'67XX1105810XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (44, N'', N'NOMAVUKA', N'73XX1807580XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (45, N'NONHLANHLA', N'NGWENYA', N'68XX1211490XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (46, N'ELIZABETH', N'MOSES', N'77XX2304150XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (47, N'', N'JACOBS', N'76XX2902020XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (48, N'', N'GERTENBACH', N'58XX1802150XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (49, N'', N'MAMORARE', N'78XX1701830XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (50, N'', N'KHUMALO', N'45XX2605080XX')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (1002, N'', N'', N'')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (1006, N'', N'', N'')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (1007, N'', N'', N'')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (1008, N'Siphelele', N'Zulu', N'9805305950088')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (1009, N'', N'', N'')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (1010, N'Siphelele', N'Zulu', N'9905305950088')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (1011, N'Siphelele', N'Zulu', N'9605305950088')
INSERT [dbo].[Persons] ([code], [name], [surname], [id_number]) VALUES (2007, N'Siphelele', N'Mjadu', N'9905305950089')
SET IDENTITY_INSERT [dbo].[Persons] OFF
GO
SET IDENTITY_INSERT [dbo].[Transactions] ON 

INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1, 1, CAST(N'2022-09-13T13:37:53.167' AS DateTime), CAST(N'2022-09-13T13:37:53.167' AS DateTime), 234.9900, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (2, 2, CAST(N'2022-09-13T13:37:53.207' AS DateTime), CAST(N'2022-09-13T13:37:53.207' AS DateTime), 267.6100, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (3, 3, CAST(N'2022-09-13T13:37:53.207' AS DateTime), CAST(N'2022-09-13T13:37:53.207' AS DateTime), 520.6700, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (4, 4, CAST(N'2022-09-13T13:37:53.207' AS DateTime), CAST(N'2022-09-13T13:37:53.207' AS DateTime), 328.7000, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (5, 5, CAST(N'2022-09-13T13:37:53.207' AS DateTime), CAST(N'2022-09-13T13:37:53.207' AS DateTime), 641.7000, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (6, 6, CAST(N'2022-09-13T13:37:53.207' AS DateTime), CAST(N'2022-09-13T13:37:53.207' AS DateTime), 157.6000, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (7, 7, CAST(N'2022-09-13T13:37:53.207' AS DateTime), CAST(N'2022-09-13T13:37:53.207' AS DateTime), 936.4100, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (8, 8, CAST(N'2022-09-13T13:37:53.207' AS DateTime), CAST(N'2022-09-13T13:37:53.207' AS DateTime), 440.8700, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (9, 9, CAST(N'2022-09-13T13:37:53.207' AS DateTime), CAST(N'2022-09-13T13:37:53.207' AS DateTime), 170.6800, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (10, 10, CAST(N'2022-09-13T13:37:53.207' AS DateTime), CAST(N'2022-09-13T13:37:53.207' AS DateTime), 663.7700, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (11, 11, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 1471.2700, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (12, 12, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 269.8200, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (13, 13, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 485.7800, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (14, 14, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 715.8300, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (15, 15, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 81.3500, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (16, 16, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 627.1300, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (17, 17, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 426.4300, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (18, 18, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 557.3000, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (19, 19, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 299.2000, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (20, 20, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 767.2500, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (21, 21, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 483.5500, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (22, 22, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 724.2600, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (23, 23, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 1008.9900, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (24, 24, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 1059.4300, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (25, 25, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 719.6500, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (26, 27, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 843.5900, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (27, 28, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 1186.8500, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (28, 30, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 226.7900, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (29, 31, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 117.5200, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (30, 32, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 542.0800, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (31, 34, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 612.1000, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (32, 35, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 191.7000, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (33, 36, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 807.6000, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (34, 37, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 806.4500, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (35, 38, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 310.0300, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (36, 41, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 648.3500, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (37, 42, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 260.8500, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (38, 43, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 532.6300, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (39, 44, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 302.8500, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (40, 45, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 633.4300, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (41, 46, CAST(N'2022-09-13T13:37:53.210' AS DateTime), CAST(N'2022-09-13T13:37:53.210' AS DateTime), 281.7700, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (42, 47, CAST(N'2022-09-13T13:37:53.213' AS DateTime), CAST(N'2022-09-13T13:37:53.213' AS DateTime), 268.4600, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (43, 48, CAST(N'2022-09-13T13:37:53.213' AS DateTime), CAST(N'2022-09-13T13:37:53.213' AS DateTime), 1803.2800, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (44, 49, CAST(N'2022-09-13T13:37:53.213' AS DateTime), CAST(N'2022-09-13T13:37:53.213' AS DateTime), 789.7400, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (45, 50, CAST(N'2022-09-13T13:37:53.213' AS DateTime), CAST(N'2022-09-13T13:37:53.213' AS DateTime), 359.6000, N'Charge Off Amount')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1002, 1, CAST(N'2022-09-17T09:50:00.000' AS DateTime), CAST(N'2022-09-18T12:08:23.543' AS DateTime), 18.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1004, 1002, CAST(N'2022-09-17T09:47:00.000' AS DateTime), CAST(N'2022-09-17T09:47:17.000' AS DateTime), 15.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1005, 1002, CAST(N'2022-09-17T09:50:00.000' AS DateTime), CAST(N'2022-09-18T12:10:26.597' AS DateTime), 10.0000, N'Debit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1006, 1002, CAST(N'2022-09-17T09:50:00.000' AS DateTime), CAST(N'2022-09-17T09:52:03.307' AS DateTime), 15.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1007, 1002, CAST(N'2022-09-17T09:50:00.000' AS DateTime), CAST(N'2022-09-17T09:53:22.877' AS DateTime), 15.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1008, 1002, CAST(N'2022-09-17T09:50:00.000' AS DateTime), CAST(N'2022-09-17T09:53:22.877' AS DateTime), 15.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1009, 1002, CAST(N'2022-09-17T09:50:00.000' AS DateTime), CAST(N'2022-09-17T09:53:43.390' AS DateTime), 15.0000, N'Debit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1010, 1002, CAST(N'2022-09-17T09:50:00.000' AS DateTime), CAST(N'2022-09-17T09:54:48.313' AS DateTime), 1500.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1011, 1002, CAST(N'2022-09-17T09:50:00.000' AS DateTime), CAST(N'2022-09-18T12:15:54.177' AS DateTime), 300.0000, N'Debit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1015, 4, CAST(N'2022-09-17T10:58:00.000' AS DateTime), CAST(N'2022-09-17T10:58:13.600' AS DateTime), 170.0000, N'Debit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1018, 1, CAST(N'2022-09-17T12:57:00.000' AS DateTime), CAST(N'2022-09-17T12:57:28.207' AS DateTime), 82.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (1019, 3011, CAST(N'2022-09-18T13:05:00.000' AS DateTime), CAST(N'2022-09-18T13:06:23.417' AS DateTime), 50.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (2019, 4015, CAST(N'2022-09-19T09:41:00.000' AS DateTime), CAST(N'2022-09-19T09:42:26.423' AS DateTime), 50.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (2020, 4015, CAST(N'2022-09-19T09:45:00.000' AS DateTime), CAST(N'2022-09-19T09:45:29.023' AS DateTime), 50.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (2021, 1, CAST(N'2022-09-19T10:17:00.000' AS DateTime), CAST(N'2022-09-19T10:17:38.397' AS DateTime), 50.0000, N'Debit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (2022, 3010, CAST(N'2022-09-19T11:07:00.000' AS DateTime), CAST(N'2022-09-19T11:07:38.377' AS DateTime), 50.0000, N'Credit')
INSERT [dbo].[Transactions] ([code], [account_code], [transaction_date], [capture_date], [amount], [description]) VALUES (2023, 4018, CAST(N'2022-09-19T11:47:00.000' AS DateTime), CAST(N'2022-09-19T11:47:55.763' AS DateTime), 560.0000, N'Credit')
SET IDENTITY_INSERT [dbo].[Transactions] OFF
GO
INSERT [dbo].[UserTbl] ([UserName], [UserPassword]) VALUES (N'siphelele', N'123456')
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Account_Person] FOREIGN KEY([person_code])
REFERENCES [dbo].[Persons] ([code])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Account_Person]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Account] FOREIGN KEY([account_code])
REFERENCES [dbo].[Accounts] ([code])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transaction_Account]
GO
/****** Object:  StoredProcedure [dbo].[AddNewPerson]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[AddNewPerson]
@Name varchar(50),
@Surname varchar(50),
@Id_Number varchar(50)
AS
    SET NOCOUNT ON;
    BEGIN
         INSERT INTO Persons([name],[surname],[id_number]) Values(@Name,@Surname,@Id_Number)
    END
   

 
GO
/****** Object:  StoredProcedure [dbo].[AddNewTransaction]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE      PROCEDURE [dbo].[AddNewTransaction]
@Code int,
@TransactionDate Datetime,
@Amount money,
@Description varchar(50)
AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
         INSERT INTO Transactions([account_code],[transaction_date],[capture_date],[amount],[description]) 
		 Values(@Code,@TransactionDate,GETDATE(),@Amount,@Description)
		 
		if @Description = 'Debit'
		 BEGIN
	       Update Accounts
		   Set outstanding_balance = outstanding_balance - @Amount
		   where code = @Code 
		END
		  ELSE
		 BEGIN
		   Update Accounts
		   Set outstanding_balance = @Amount + outstanding_balance
		   where code = @Code 

		 END

    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[AddNewUserAccount]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[AddNewUserAccount]
@PersonCode int,
@AccountNumber varchar(50)
 
AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
         INSERT INTO Accounts Values(@PersonCode,@AccountNumber,0.00)
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH


GO
/****** Object:  StoredProcedure [dbo].[DeletePerson]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DeletePerson]
@Code int
AS
BEGIN TRY
    BEGIN TRANSACTION;
 
 
	BEGIN
	  Delete Persons where code = @Code
	END
 
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH


GO
/****** Object:  StoredProcedure [dbo].[GetAccountBalanceByCode]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[GetAccountBalanceByCode]
@Code int

AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
         SELECT  [outstanding_balance] as 'OutstandingAmount' From Accounts
		 Where [code] = @Code
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[GetAccountDetailByAccountNumber]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[GetAccountDetailByAccountNumber]
@AccountNumber varchar(20)

AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
         SELECT [code],[person_code]  as 'PersonCode',[account_number] as 'AccountNumber',[outstanding_balance] as 'OutstandingAmount' From Accounts
		 Where [account_number] = @AccountNumber
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[GetAllAccountNumber]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE      PROCEDURE [dbo].[GetAllAccountNumber]
 
AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
       SELECT [account_number] as 'AccountNumber' From Accounts
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

 
GO
/****** Object:  StoredProcedure [dbo].[GetAllPerson]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[GetAllPerson]
@SearchString varchar(max)
AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
	If @SearchString IS NULL
	BEGIN
              SELECT DISTINCT p.code  ,
               p.[name],
               p.[surname],
               p.[id_number]
        FROM   [dbo].[Persons] as p
		INNER JOIN Accounts as Ac
		On p.code = Ac.person_code
    END
	ELSE
	  BEGIN
       SELECT DISTINCT p.code  ,
               p.[name],
               p.[surname],
               p.[id_number]
        FROM   [dbo].[Persons] as p
		INNER JOIN Accounts as Ac
		On p.code = Ac.person_code

		where p.id_number LIKE '%' +  TRIM(@SearchString) + '%'
		     OR p.[surname]  LIKE '%' +  TRIM(@SearchString) + '%'
			 OR Ac.account_number LIKE '%' +  TRIM(@SearchString) + '%'

	  END
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[GetAllPersonIdNumbers]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[GetAllPersonIdNumbers]
 
AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
       SELECT [Id_number] From Persons
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

 
GO
/****** Object:  StoredProcedure [dbo].[GetAllPersonWithNoAccounts]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[GetAllPersonWithNoAccounts]
@SearchString varchar(max)
AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
	If @SearchString IS NULL
	BEGIN
       SELECT  p.code  ,
               p.[name],
               p.[surname],
               p.[id_number]
        FROM   [dbo].[Persons] as p
		LEFT JOIN Accounts as Ac
		On p.code = Ac.person_code
		WHERE NOT EXISTS(
		SELECT * from Accounts WHERE Accounts.person_code = p.code)
    END
	ELSE
	  BEGIN
          SELECT  p.code  ,
               p.[name],
               p.[surname],
               p.[id_number]
        FROM   [dbo].[Persons] as p
		LEFT JOIN Accounts as Ac
		On p.code = Ac.person_code
		WHERE NOT EXISTS(
		SELECT * from Accounts WHERE Accounts.person_code = p.code)

		     AND p.id_number LIKE '%' +  TRIM(@SearchString) + '%'
		     OR p.[surname]  LIKE '%' +  TRIM(@SearchString) + '%'

	  END
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[GetPersonAccountByCodeOrId]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[GetPersonAccountByCodeOrId]
@Code int

AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
         SELECT [code],[person_code] as 'PersonCode',[account_number] as 'AccountNumber',[outstanding_balance] as 'OutstandingAmount' From Accounts
		 Where [person_code] = @Code
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[GetPersonDetailsByCodeOrId]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE      PROCEDURE [dbo].[GetPersonDetailsByCodeOrId]
@Code int

AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
         SELECT [code],[name],[surname],[id_number] From Persons
		 Where [code] = @Code
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByAccountCodeOrId]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[GetTransactionsByAccountCodeOrId]
@AccountCode int

AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
         SELECT [code],[account_code] as  'accountCode',[transaction_date] as 'TransactionDate',[capture_date] as 'CaptureDate',[amount],[description] From Transactions
		 Where [account_code] = @AccountCode
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsDetailsCodeOrId]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[GetTransactionsDetailsCodeOrId]
@AccountCode int

AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
         SELECT [code],[account_code] as 'AccountCode',[transaction_date] as 'TransactionDate',[capture_date] as 'CaptureDate',[amount],[description] From Transactions
		 Where [code] = @AccountCode
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[UpdateAccountInformationByCode]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[UpdateAccountInformationByCode]
@Code int,
@AccountNumber varchar(50)
AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
          UPDATE Accounts
		  SET [account_number] = @AccountNumber
		WHERE [code] = @Code
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH


 

GO
/****** Object:  StoredProcedure [dbo].[UpdatepersonInformation]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[UpdatepersonInformation]
@Code int,
@Name varchar(50),
@Surname varchar(50)
AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
          UPDATE Persons
		  SET [name] = @Name,
		      [surname] = @Surname
			  WHERE [code] = @Code
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH


GO
/****** Object:  StoredProcedure [dbo].[UpdateTransactionsInformationByCode]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[UpdateTransactionsInformationByCode]
@Code int,
@AccountCode int,
@TransactionDate datetime,
@Amount money,
@Description varchar(50)

AS
BEGIN TRY
    BEGIN TRANSACTION;
    BEGIN
          UPDATE Transactions
		  SET [transaction_date] = @TransactionDate,
		      [capture_date] = GETDATE(),
			  [amount] = @Amount,
			  [description] = @Description
		WHERE [code] = @Code

			 
		if @Description = 'Debit'
		 BEGIN
	       Update Accounts
		   Set outstanding_balance = outstanding_balance - @Amount
		   where code = @AccountCode 
		END
		  ELSE
		 BEGIN
		   Update Accounts
		   Set outstanding_balance = @Amount + outstanding_balance
		   where code = @AccountCode 

		 END
    END
    IF @@TRANCOUNT > 0
        COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;
    DECLARE @ErrMsg AS NVARCHAR (4000), @ErrSeverity AS INT;
    SELECT @ErrMsg = ERROR_MESSAGE(),
           @ErrSeverity = ERROR_SEVERITY();
    RAISERROR (@ErrMsg, @ErrSeverity, 1);
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[UserLogin]    Script Date: 2022/09/19 14:42:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UserLogin]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT UserName,UserPassword FROM UserTbl
END
GO
USE [master]
GO
ALTER DATABASE [TransactionDb] SET  READ_WRITE 
GO
