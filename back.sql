USE [master]
GO
/****** Object:  Database [TEST]    Script Date: 2021/4/8 下午 09:40:42 ******/
CREATE DATABASE [TEST]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TEST', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TEST.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TEST_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TEST_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TEST] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TEST].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TEST] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TEST] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TEST] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TEST] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TEST] SET ARITHABORT OFF 
GO
ALTER DATABASE [TEST] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TEST] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TEST] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TEST] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TEST] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TEST] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TEST] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TEST] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TEST] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TEST] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TEST] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TEST] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TEST] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TEST] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TEST] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TEST] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TEST] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TEST] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TEST] SET  MULTI_USER 
GO
ALTER DATABASE [TEST] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TEST] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TEST] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TEST] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TEST] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TEST] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TEST] SET QUERY_STORE = OFF
GO
USE [TEST]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2021/4/8 下午 09:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2021/4/8 下午 09:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2021/4/8 下午 09:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2021/4/8 下午 09:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2021/4/8 下午 09:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2021/4/8 下午 09:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GasList]    Script Date: 2021/4/8 下午 09:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GasList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[Gas] [nvarchar](50) NULL,
	[Content] [nvarchar](max) NULL,
	[Pay] [nvarchar](50) NOT NULL,
	[Cost] [int] NULL,
	[Date] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GasList] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GasName]    Script Date: 2021/4/8 下午 09:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GasName](
	[Name] [nvarchar](50) NOT NULL,
	[Gid] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202103091646533_InitialCreate', N'WebApplication6.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04EEDA6E8DC617649DB46F0157E2AE8548942A51AE8D225FD6877E527FA14389BAF1A2CBAEBCBB0E0A145E717866381C7286C361FEFBE7DFF1DB07DF33EE7114BB01999807A37DD3C0C40E1C972C276642172F5E9B6FDF7CFBCDF8CCF11F8C8F39DD11A3839E249E98779486C79615DB77D847F1C877ED288883051DD9816F2127B00EF7F77FB20E0E2C0C10266019C6F87D42A8EBE3F407FC9C06C4C6214D90771938D88BF9776899A5A8C615F2711C221B4FCCDFF1FC240C3DD74614447935CA7A98C689E722906686BD85692042029A121C7F88F18C460159CE42F880BCDBC71003DD027931E663382EC9BB0E67FF900DC72A3BE6507612D3C0EF097870C4F56389DD57D2B259E80F3478069AA68F6CD4A91627E68583D34FEF030F1420323C9E7A11239E9897058B9338BCC27494771C6590E711C0FD15449F4755C43DA373BFBDC29E0E47FBECBF3D639A783489F084E08446C8DB336E92394CF56FF8F136F88CC9E4E860BE387AFDF215728E5EFD888F5E56470A6305BADA07F8741305218E4036BC28C66F1A56BD9F25762CBA55FA645A015B82A5611A97E8E11D264B7A078BE6F0B5699CBB0FD8C9BF70E3FA405C5849D0894609FCBC4A3C0FCD3D5CB45B8D3CD9FF1BB81EBE7C3508D72B74EF2ED3A917F8C3C289605DBDC75EDA1ADFB961B6BC6AF3FD89939D4781CF7ED7ED2B6BFD340B92C8668309B424B7285A625A976E6C95C6DBC9A419D4F0669DA3EEBE69334965F35692B201ADB21272169B5E0DB9BC4FCBB7B3C5555C10D34893C1A91DD64840D83304BAD2840EBA9A1081A17DCD3BE2998F5C6F802DB103178848166EE4E362943F07608088F496F906C531EC08CEAF28BE6B101DFE1C40F419B693080C7546911F3E39B79BBB80E0ABC49F33FBDF1CAFC1A6E6F6AFE01CD93488CE08EBB536DEBBC0FE1C24F48C38A788E20FD4CE01D9CF5BD7EF0E30883827B68DE3F81C8C193BD30002EE1CF082D0A3C3DE706C93DA764832F590EBAB6312613BFD94939671899A428A4D3464AAF8A449D477C1D225DD44CD49F5A26614ADA272B2BEA232B06E92724ABDA02941AB9C19D560115F3A43C3877C29ECEEC77CEB396FDD5E5051E30C7648FC0B2638826DCCB94194E2889433D065DFD846B0904E1F63FAE4BE29E5F41179C9D0AC565A0DE92630FC6A4861777F35A462C2E77BD76151498783504E0CF09DE8D567ACF6352748B6E9E5501BE6A6996F660FD02D9793380E6C375D058A14184F60D4E58718CE68CF6664A31133223030307497B93CF802633345A3BA26A7D8C3141B277696229CA2D8468EAC461890D343B0DCA32A042B332375E17E907882A5E3887542EC1014C34A75099597854B6C37445EAB96849E1D5D181B7BC1436C39C521268C61AB26BA305727429800051F6152DA3434B62A16D76C889AA85537E76D216C39EF527E622336D9123B6BEC92C76F4F6298CD1ADB807136ABA48B00DAA4DE360C949F55BA1A807870D93503154E4C1A03E521D5460CB4AEB12D18685D25CFCE40B3236AD7F917CEABBB669EF583F2E6DD7AA3BAB6609B357DEC986966B127F4A1D00347B2799ECE59237EA08AC319C8C9CF67310F75451361E0334CEB299B32DE55C6A156338868444D80A5A1B580F2EB4009485A503D84CB73798DD2F128A2076C9E776B84E57BBF005BB10119BB7A2D5A21D45F9E8AC6D9E9F4518CACB006C9C83B1D162A380A831037AFFAC03B284597979515D32516EE130D5706C627A341412D91AB4649F96006D7526E9AED5A5205647D42B2B5B424844F1A2DE583195C4BDC46DB95A4080A7A84056BA9A8EEC2075A6C79A6A3F03645DBD8CA2AA6F887B1A529AD1A5FA23074C9B2526AC5BF18B3ACCE6AFA62D6BFF8C8CF302C3B56D42015D2169C6810A125165A8135487AEE46313D4514CD11CBF34C1D5F2253FA56CDF69FB3ACBA4F7912733F9053B3BFB31E9A4BFC9ABF9503128E730EA3F4595493A6D21536A0EE6EB0F237E4A14891BD9F065EE2137D90A5EF9DDDE155FB675F6484B125C82F055192C6A450B7AEFE4E93232F8C0127AA8863569F2C3D844EE579145A55BA2E32D5A3E489AA2A8A2E79B5B5C9D30534BD274C8C17FBCF572BC2D3AC2F5EA45205E09F7A6254EA1C24B04A5B77D47A294A15B3DED21D51A837A9420A4D3DA4AC5695D484AC36AC84A7D1A89AA23B07B98EA48A2EB7764756549454A115CD2B602B6416DBBAA32A8A4EAAC08AE6EED865058AB891EEB007D39E62D67261D961773D1FA6C1789A5D71181758B9D3AF02553EF7C4E2B7F61218FFBE9316A53DF1AD6551599E633D8BD260E877A0DA8D787D036ABCC6D763D6AEB96B9B7CD335BF1EAF9FDD3EA97548873E91A4E05E1CFE8443DE981FB8DA1FD94827B08CC434723582837F8C29F6478C6034FBD39B7A2E66DB794E708988BBC031CD4A3BCCC3FD8343E18DCEEEBC97B1E2D8F1140756DDA399FA9C6DA04A8BDCA3C8BE43915C33B1C69B9212544A475F10073F4CCCBFD35EC7696683FD957EDE332EE20FC4FD338186DB28C1C617B90674981AFB0EAF3A0A41BF3C8BE712DD557EF1C7A7ACEB9E711DC1723A36F60545AF32FDF54714BDA4C9BAAE21CDCA4F2B9EEF6AABBD5750A20AAB65F5E70973970EF2342197F23B1F3D7CDF5734E5F383B510154F0C86C21B4485BA2704AB60699F0F38F093A6CF07FA0D56FD9C6015D1B44F095CD21F4C7C48D07D1BCA7B6ED10F290E4D9BD892523DB71662AF5595B96DDF24D56BAFB5D0E59AEC1E7083D65DAF17A23CB37AE6C15CA7A25C7930EC6DDAFD93D728EF4A597219B46FB71A799305C80D974B5F55DDF10E54CA292A7FB65F5DBC695BD3658177BC44B35F0DF18E191B77F3DBAF14DEB4B1E912C43B6E6CBDEA8177CCD6B6E53FB76C699D5DE8D6AB7BE54225CD6D8E2A8BDC56BD9BA5DCE1F83F0FC008B288327B74A92E176B2A756D615892E899EAEBD444C6D2C291F84A14CD6CFB8D953BFCC6C1729A66B69AEACE26DE7CFF6FE4CD699A796B6A26B75177ACAC5A54D582B7EC634DA554CFA9CEB8369296B2F6B698B5F16AFE3995150FA294DAEAD1DC2E3F9F2AE2415432E4D2E951352C5F1483EFACFC9B8DE0BF63775942B07FC19160BBE6350B9A0BB20872E72D48949308199A4B4C91032EF524A2EE02D9149A59023A7D359E26F5D835C81C3B17E43AA1614261C8D89F7BB584170B029AF8A7A5D17599C7D721FB150F310410D36589FB6BF273E27A4E21F7B92227A48160D1054FF7B2B9A42CEDBB7C2C90AE02D21188ABAF088A6EB11F7A00165F9319BAC7ABC806E6F70E2F91FD5866007520ED135157FBF8D445CB08F931C728FBC34FB061C77F78F33F3A66B73CBA540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'21a8bc6a-4b37-4541-803e-8d87ccbe66fb', N'arst8325729@gmail.com', 0, N'AKzmuFyOj2YR/atlevW6FoqSdrANoJ8Vg1zcgmBm2waOez74Y4nviFZXkw6IOMUXrA==', N'330374e6-960d-42ca-a91c-78f7b77e1085', NULL, 0, 0, NULL, 1, 0, N'arst8325729@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4501d631-7813-484c-b3b6-4bd6a80952a6', N'arst8325746@gmail.com', 0, N'AGog3Roo6J9msAloORQyURwbM2pRdon7A4sbEKReS53cWVaOjQVcKcPAX0H2Nik51Q==', N'8eaaf2bc-428a-461d-9c3f-4e5611dc0d85', NULL, 0, 0, NULL, 1, 0, N'arst8325746@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'84d30b5a-94ee-4d09-a04e-463ae6875c6e', N'fzp.fzp@msa.hinet.net', 0, N'AMVCQOg0lFT3PwSicaFwnjgfGzkkMNV8GwV3rEs9mfkpTVdihEuNm9IeMI9WS8ht7Q==', N'adde9fed-e2bf-4a44-8da1-7f33e017c06c', NULL, 0, 0, NULL, 1, 0, N'fzp.fzp@msa.hinet.net')
GO
SET IDENTITY_INSERT [dbo].[GasList] ON 

INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (810, N'JC55101400', N'統佳', N'感熱紙，電源供應器', N'已付款', 6825, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (811, N'JC55101401', N'永樺', N'感熱紙', N'已付款', 18375, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (812, N'JC55101402', N'永昇', N'作廢', N'已付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (813, N'JC55101403', N'永昇', N'感熱紙，介面盒', N'已付款', 21525, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (814, N'JC55101404', N'大新營', N'感熱機電源供應器', N'已付款', 3675, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (815, N'JC55101405', N'統好勝利', N'電源供應器', N'已付款', 1575, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (816, N'JC55101406', N'永樺', N'感熱機', N'已付款', 11550, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (817, N'JC55101407', N'久井梓官站', N'自助信用卡機電源供應器', N'未付款', 3675, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (818, N'JC55101408', N'信吉', N'結帳紙，感熱紙，信格電腦，介面盒', N'已付款', 34703, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (819, N'JC55101409', N'原斗', N'結帳紙，感熱紙', N'已付款', 3728, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (820, N'JC55101410', N'久井湖內站', N'TSC裁刀', N'已付款', 3150, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (821, N'JC55101411', N'北海', N'作廢', N'已付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (822, N'JC55101412', N'北海', N'信格電腦，硬碟', N'已付款', 28875, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (823, N'JC55101413', N'原斗', N'主機板', N'已付款', 3150, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (824, N'JC55101414', N'金泉', N'感熱紙', N'已付款', 1838, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (825, N'JC55101415', N'統好勝利', N'介面盒*2', N'已付款', 8400, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (826, N'JC55101416', N'原斗', N'電子發票電腦', N'已付款', 26250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (827, N'JC55101417', N'統佳', N'I/O擴充卡', N'已付款', 1575, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (828, N'JC55101418', N'民安', N'感熱紙，電源供應器', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (829, N'JC55101419', N'民安海佃', N'感熱紙', N'已付款', 3675, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (830, N'JC55101420', N'民安海佃', N'2個島硬碟', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (831, N'JC55101421', N'嘉仁', N'作廢', N'已付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (832, N'JC55101422', N'嘉仁', N'感熱紙', N'未付款', 7350, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (833, N'JC55101423', N'久井中華站', N'感熱頭', N'已付款', 3150, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (834, N'JC55101424', N'永樺', N'作廢', N'已付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (835, N'JC55101425', N'永樺', N'2島電腦，介面盒', N'已付款', 29400, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (836, N'JC55101426', N'統好勝利', N'2,3島硬碟', N'未付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (837, N'JC55101427', N'金泉', N'電子發票主機板', N'已付款', 3675, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (838, N'JC55101428', N'金泉', N'4島硬碟', N'已付款', 3150, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (839, N'JC55101429', N'統佳', N'2島硬碟', N'已付款', 2625, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (840, N'JC55101430', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (841, N'JC55101431', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (842, N'JC55101432', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (843, N'JC55101433', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (844, N'JC55101434', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (845, N'JC55101435', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (846, N'JC55101436', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (847, N'JC55101437', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (848, N'JC55101438', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (849, N'JC55101439', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (850, N'JC55101440', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (851, N'JC55101441', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (852, N'JC55101442', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (853, N'JC55101443', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (854, N'JC55101444', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (855, N'JC55101445', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (856, N'JC55101446', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (857, N'JC55101447', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (858, N'JC55101448', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (859, N'JC55101449', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (557, N'JC55101450', N'北基中華太子', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (558, N'JC55101451', N'北基遠見', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (559, N'JC55101452', N'東信', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (560, N'JC55101453', N'嘉南', N'POS系統定期保養', N'未付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (561, N'JC55101454', N'久井中華站', N'POS系統定期保養', N'已付款', 7350, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (562, N'JC55101455', N'久井仁德站', N'POS系統定期保養', N'已付款', 7350, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (563, N'JC55101456', N'久井美濃站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (564, N'JC55101457', N'久井吉站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (565, N'JC55101458', N'久井如站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (566, N'JC55101459', N'久井意站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (567, N'JC55101460', N'久井學甲站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (568, N'JC55101461', N'久井佳里站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (569, N'JC55101462', N'久井保安站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (570, N'JC55101463', N'久井白河站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (571, N'JC55101464', N'久井北安站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (572, N'JC55101465', N'久井塩水站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (573, N'JC55101466', N'久井安定站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (574, N'JC55101467', N'久井新永站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (575, N'JC55101468', N'久井新市站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (576, N'JC55101469', N'久井府前站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (577, N'JC55101470', N'久井安吉站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (578, N'JC55101471', N'久井嘉義站', N'POS系統定期保養', N'已付款', 5252, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (579, N'JC55101472', N'久井嘉太站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (580, N'JC55101473', N'久井民雄二高站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (581, N'JC55101474', N'久井民雄站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (582, N'JC55101475', N'久井關廟站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (583, N'JC55101476', N'久井湖內站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (584, N'JC55101477', N'久井路科站', N'作廢', N'已付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (585, N'JC55101478', N'久井路科站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (586, N'JC55101479', N'久井國道四號站', N'POS系統定期保養', N'已付款', 7350, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (587, N'JC55101480', N'久井日月潭站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (588, N'JC55101481', N'久井甲仙站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (589, N'JC55101482', N'久井梓官站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (590, N'JC55101483', N'久井湖口站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (591, N'JC55101484', N'久井台中港站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (592, N'JC55101485', N'久井芳苑站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (593, N'JC55101486', N'久井關廟如站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (594, N'JC55101487', N'久井關廟意站', N'POS系統定期保養', N'已付款', 6300, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (595, N'JC55101488', N'久井世賢站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (596, N'JC55101489', N'久井南橫起點站', N'POS系統定期保養', N'已付款', 5250, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (597, N'JC55101490', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (598, N'JC55101491', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (599, N'JC55101492', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (600, N'JC55101493', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (601, N'JC55101494', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (602, N'JC55101495', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (603, N'JC55101496', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (604, N'JC55101497', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (605, N'JC55101498', NULL, NULL, N'未付款', 0, N'11002')
GO
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (606, N'JC55101499', NULL, NULL, N'未付款', 0, N'11002')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (860, N'KX55855600', N'關廟太子', N'作廢', N'已付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (861, N'KX55855601', N'關廟太子', N'作廢', N'已付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (862, N'KX55855602', N'關廟太子', N'換2島電腦', N'未付款', 26250, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (863, N'KX55855603', N'關廟太子', N'1島硬碟，記憶體', N'未付款', 3990, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (864, N'KX55855604', N'信吉', N'1,2島硬碟', N'已付款', 5250, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (865, N'KX55855605', N'原斗', N'更換硬碟', N'未付款', 5250, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (866, N'KX55855606', N'合興', N'更換硬碟', N'未付款', 5250, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (867, N'KX55855607', N'大通', N'1、2島硬碟', N'已付款', 5250, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (868, N'KX55855608', N'金泉', N'作廢', N'已付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (869, N'KX55855609', N'金泉', N'發票紙', N'已付款', 3675, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (870, N'KX55855610', N'北海', N'感熱紙', N'未付款', 7350, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (871, N'KX55855611', N'中庄', N'3島硬碟', N'已付款', 2625, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (872, N'KX55855612', N'久井路科站', N'一島硬碟', N'未付款', 2625, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (873, N'KX55855613', N'永樺', N'第一季保養費', N'未付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (874, N'KX55855614', N'永昇', N'第一季保養費', N'未付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (875, N'KX55855615', N'嘉仁', N'第一季保養費', N'未付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (876, N'KX55855616', N'金泉', N'第一季保養費', N'未付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (877, N'KX55855617', N'大通', N'第一季保養費', N'已付款', 4200, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (878, N'KX55855618', N'民安海佃', N'第一季保養費', N'未付款', 6038, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (879, N'KX55855619', N'民安', N'第一季保養費', N'未付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (880, N'KX55855620', N'民安', N'作廢', N'已付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (881, N'KX55855621', N'合興', N'第一季保養費', N'未付款', 4200, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (882, N'KX55855622', N'原斗', N'作廢', N'已付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (883, N'KX55855623', N'統佳', N'第一季保養費', N'未付款', 4200, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (884, N'KX55855624', N'關廟太子', N'作廢', N'已付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (885, N'KX55855625', N'關廟太子', N'第一季保養費', N'未付款', 4200, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (886, N'KX55855626', N'東誠', N'第一季保養費', N'未付款', 4200, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (887, N'KX55855627', N'大新營', N'第一季保養費', N'未付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (888, N'KX55855628', N'信吉', N'作廢', N'已付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (889, N'KX55855629', N'信吉', N'第一季保養費', N'已付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (890, N'KX55855630', N'統好勝利', N'第一季保養費', N'未付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (891, N'KX55855631', N'北海', N'第一季保養費', N'未付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (892, N'KX55855632', N'原斗', N'第一季保養費', N'未付款', 4200, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (893, N'KX55855633', N'中庄', N'第一季保養費', N'未付款', 5119, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (894, N'KX55855634', N'統好歸仁', N'第一季保養費', N'未付款', 4200, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (895, N'KX55855635', N'大通', N'作廢', N'已付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (896, N'KX55855636', N'大通', N'碳粉', N'已付款', 2520, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (897, N'KX55855637', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (898, N'KX55855638', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (899, N'KX55855639', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (900, N'KX55855640', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (901, N'KX55855641', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (902, N'KX55855642', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (903, N'KX55855643', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (904, N'KX55855644', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (905, N'KX55855645', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (906, N'KX55855646', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (907, N'KX55855647', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (908, N'KX55855648', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (909, N'KX55855649', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (910, N'KX55855650', N'台塑網', N'作廢', N'已付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (911, N'KX55855651', N'台塑網', N'POS建置', N'未付款', 23100, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (912, N'KX55855652', N'奎智', N'110年度代傳費', N'未付款', 118440, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (913, N'KX55855653', N'東信', N'POS系統定期保養', N'未付款', 5250, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (914, N'KX55855654', N'嘉南', N'POS系統定期保養', N'未付款', 6300, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (915, N'KX55855655', N'北基中華太子', N'POS系統定期保養', N'未付款', 6300, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (916, N'KX55855656', N'北基盛竹', N'POS系統定期保養', N'未付款', 5250, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (917, N'KX55855657', N'北基遠見', N'POS系統定期保養', N'未付款', 5250, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (918, N'KX55855658', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (919, N'KX55855659', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (920, N'KX55855660', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (921, N'KX55855661', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (922, N'KX55855662', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (923, N'KX55855663', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (924, N'KX55855664', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (925, N'KX55855665', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (926, N'KX55855666', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (927, N'KX55855667', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (928, N'KX55855668', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (929, N'KX55855669', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (930, N'KX55855670', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (931, N'KX55855671', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (932, N'KX55855672', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (933, N'KX55855673', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (934, N'KX55855674', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (935, N'KX55855675', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (936, N'KX55855676', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (937, N'KX55855677', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (938, N'KX55855678', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (939, N'KX55855679', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (940, N'KX55855680', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (941, N'KX55855681', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (942, N'KX55855682', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (943, N'KX55855683', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (944, N'KX55855684', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (945, N'KX55855685', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (946, N'KX55855686', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (947, N'KX55855687', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (948, N'KX55855688', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (949, N'KX55855689', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (950, N'KX55855690', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (951, N'KX55855691', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (952, N'KX55855692', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (953, N'KX55855693', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (954, N'KX55855694', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (955, N'KX55855695', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (956, N'KX55855696', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (957, N'KX55855697', NULL, NULL, N'未付款', 0, N'11004')
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (958, N'KX55855698', NULL, NULL, N'未付款', 0, N'11004')
GO
INSERT [dbo].[GasList] ([Id], [Number], [Gas], [Content], [Pay], [Cost], [Date]) VALUES (959, N'KX55855699', NULL, NULL, N'未付款', 0, N'11004')
SET IDENTITY_INSERT [dbo].[GasList] OFF
GO
SET IDENTITY_INSERT [dbo].[GasName] ON 

INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井安定站', 53)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井新永站', 54)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井新市站', 55)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井府前站', 56)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井安吉站', 57)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井嘉義站', 58)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井嘉太站', 59)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井民雄二高站', 60)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井民雄站', 61)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井關廟站', 62)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井湖內站', 63)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井路科站', 64)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井國道四號站', 65)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井日月潭站', 66)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井甲仙站', 67)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井梓官站', 68)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井湖口站', 69)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井台中港站', 70)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井芳苑站', 71)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井關廟如站', 72)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井關廟意站', 73)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井世賢站', 74)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井彌陀站', 75)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井南橫起點站', 76)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井埔里站', 77)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'民安', 78)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'民安海佃', 79)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'嘉仁', 80)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'永昇', 81)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'永樺', 82)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'北海', 83)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'統好勝利', 84)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'統佳', 85)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'統好歸仁', 86)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'關廟太子', 87)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'大新營', 88)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'信吉', 89)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'大通', 90)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'合興', 91)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'原斗', 92)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'東誠', 93)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'金泉', 94)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'中庄', 95)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'北基中華太子', 96)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'北基遠見', 97)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'北基盛竹', 98)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'東信', 99)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'嘉南', 100)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井中華站', 37)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井仁德站', 38)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井美濃站', 39)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井吉站', 40)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井如站', 41)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井意站', 42)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井學甲站', 43)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井佳里站', 44)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井保安站', 45)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井白河站', 46)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井北安站', 51)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'久井塩水站', 52)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'台塑網', 101)
INSERT [dbo].[GasName] ([Name], [Gid]) VALUES (N'奎智', 102)
SET IDENTITY_INSERT [dbo].[GasName] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2021/4/8 下午 09:40:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2021/4/8 下午 09:40:42 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2021/4/8 下午 09:40:42 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2021/4/8 下午 09:40:42 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2021/4/8 下午 09:40:42 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2021/4/8 下午 09:40:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GasList] ADD  CONSTRAINT [DF_GasList_Pay]  DEFAULT (N'未付款') FOR [Pay]
GO
ALTER TABLE [dbo].[GasList] ADD  CONSTRAINT [DF_GasList_Cost]  DEFAULT ((0)) FOR [Cost]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [TEST] SET  READ_WRITE 
GO
