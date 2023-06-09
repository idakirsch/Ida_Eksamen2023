USE [master]
GO
/****** Object:  Database [GoldDiggerDB]    Script Date: 29-04-2023 21:04:11 ******/
CREATE DATABASE [GoldDiggerDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GoldDiggerDB', FILENAME = N'C:\Users\jecl\GoldDiggerDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GoldDiggerDB_log', FILENAME = N'C:\Users\jecl\GoldDiggerDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GoldDiggerDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GoldDiggerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GoldDiggerDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GoldDiggerDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GoldDiggerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GoldDiggerDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GoldDiggerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GoldDiggerDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [GoldDiggerDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GoldDiggerDB] SET  MULTI_USER 
GO
ALTER DATABASE [GoldDiggerDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GoldDiggerDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GoldDiggerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GoldDiggerDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GoldDiggerDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GoldDiggerDB] SET QUERY_STORE = OFF
GO
USE [GoldDiggerDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [GoldDiggerDB]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 29-04-2023 21:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
	[CountryCode] [nvarchar](5) NOT NULL,
	[ValutaName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 29-04-2023 21:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
	[ContactName] [nvarchar](75) NOT NULL,
	[ContactTitle] [nvarchar](75) NOT NULL,
	[Adresse] [nvarchar](150) NOT NULL,
	[Zip] [nvarchar](25) NOT NULL,
	[City] [nvarchar](75) NOT NULL,
	[CountryId] [int] NOT NULL,
	[PhoneNo] [nvarchar](30) NOT NULL,
	[MailAdr] [nvarchar](100) NOT NULL,
	[Activ] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employes]    Script Date: 29-04-2023 21:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Adresse] [nvarchar](150) NOT NULL,
	[Zip] [nvarchar](25) NOT NULL,
	[City] [nvarchar](75) NOT NULL,
	[CountryId] [int] NOT NULL,
	[PhoneNo] [nvarchar](30) NOT NULL,
	[MailAdr] [nvarchar](100) NOT NULL,
	[Activ] [bit] NOT NULL,
	[TitleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Employes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeTitels]    Script Date: 29-04-2023 21:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeTitels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_EmployeTitels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 29-04-2023 21:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Employe] [int] NOT NULL,
	[InvoiceDate] [date] NOT NULL,
	[InvoiceAmount] [money] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceLines]    Script Date: 29-04-2023 21:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceLines](
	[Id] [int] NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[Quantity] [decimal](18, 6) NOT NULL,
	[PriceDKK] [money] NOT NULL,
	[PriceEUR] [money] NOT NULL,
	[PriceUSD] [money] NOT NULL,
 CONSTRAINT [PK_InvoiceLines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreciousMetals]    Script Date: 29-04-2023 21:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreciousMetals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MetalName] [nvarchar](25) NOT NULL,
	[PricePerKg] [decimal](18, 6) NOT NULL,
 CONSTRAINT [PK_dbo.PreciousMetals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rates]    Script Date: 29-04-2023 21:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[Rates] [decimal](18, 12) NOT NULL,
 CONSTRAINT [PK_dbo.Rates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 29-04-2023 21:04:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MetalId] [int] NOT NULL,
	[Warehouse] [nvarchar](50) NOT NULL,
	[StockRack] [nvarchar](50) NOT NULL,
	[Shelf] [nvarchar](50) NOT NULL,
	[StockQuantity] [decimal](18, 6) NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (1, N'Afghanistan', N'AFN', N'Afghani')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (2, N'Albanien', N'ALL', N'Lek')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (3, N'Algeriet', N'DZD', N'Algeriske dinarer')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (4, N'Angola', N'AOA', N'Kwanza')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (5, N'Argentina', N'ARS', N'Argentinske peso')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (6, N'Armenien', N'AMD', N'Armenske dram')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (7, N'Aruba', N'AWG', N'Aruba-gylden')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (8, N'Aserbajdsjan', N'AZN', N'Aserbajdsjanske manat')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (9, N'Australien', N'AUD', N'Australske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (10, N'Bahamas', N'BSD', N'Bahamanske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (11, N'Bahrain', N'BHD', N'Bahrainske dinarer')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (12, N'Bangladesh', N'BDT', N'Taka')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (13, N'Barbados', N'BBD', N'Barbadisk dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (14, N'Belgien', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (15, N'Belize', N'BZD', N'Beliziske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (16, N'Bermuda', N'BMD', N'Bermudianske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (17, N'Bhutan', N'BTN', N'Ngultrum')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (18, N'Bolivia', N'BOB', N'Boliviano')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (19, N'Bosnien-Hercegovina', N'BAM', N'Konvertible mark')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (20, N'Botswana', N'BWP', N'Pula')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (21, N'Brasilien', N'BRL', N'Brasilianske real')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (22, N'Brunei', N'BND', N'Bruneiske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (23, N'Bulgarien', N'BGN', N'Bulgariske lev')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (24, N'Burundi', N'BIF', N'Burundiske francs')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (25, N'Cambodia', N'KHR', N'Riel')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (26, N'Canada', N'CAD', N'Canadiske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (27, N'Cayman-Øerne', N'KYD', N'Cayman-Øerne-dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (28, N'Chile', N'CLP', N'Chilenske peso')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (29, N'Colombia', N'COP', N'Colombiansk peso')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (30, N'Comorerne', N'KMF', N'Comoriske francs')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (31, N'Costa Rica', N'CRC', N'Costaricanske colon')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (32, N'Cuba', N'CUP', N'Cubansk peso')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (33, N'Cypern', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (34, N'Danmark', N'DKK', N'Danske kroner')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (35, N'Demokratiske Republik Congo', N'CDF', N'Congolesiske francs')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (36, N'Djibouti', N'DJF', N'Djiboutiske francs')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (37, N'Dominikanske Republik', N'DOP', N'Dominikanske peso')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (38, N'Egypten', N'EGP', N'Egyptiske pund')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (39, N'Eritrea', N'ERN', N'Nakfa')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (40, N'Estland', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (41, N'Etiopien', N'ETB', N'Etiopiske birr')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (42, N'Europa', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (43, N'Falklandsøerne', N'FKP', N'Falklandsøerne-pund')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (44, N'Fiji', N'FJD', N'Fijianske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (45, N'Filippinerne', N'PHP', N'Filippinske peso')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (46, N'Finland', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (47, N'Forenede Arabiske Emirater', N'AED', N'UAE Dirham')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (48, N'Frankrig', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (49, N'Gambia', N'GMD', N'Dalasi')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (50, N'Georgien', N'GEL', N'Lari')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (51, N'Ghana', N'GHS', N'Cedi')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (52, N'Gibraltar', N'GIP', N'Gibraltar-pund')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (53, N'Grækenland', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (54, N'Guatemala', N'GTQ', N'Quetzal')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (55, N'Guinea', N'GNF', N'Guineanske francs')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (56, N'Guyana', N'GYD', N'Guyanske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (57, N'Haiti', N'HTG', N'Gourde')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (58, N'Holland', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (59, N'Honduras', N'HNL', N'Lempira')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (60, N'Hong Kong', N'HKD', N'Hong Kong-dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (61, N'Hviderusland', N'BYN', N'Hviderussiske rubler')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (62, N'Indien', N'INR', N'Indiske rupee')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (63, N'Indonesien', N'IDR', N'Rupiah')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (64, N'Irak', N'IQD', N'Irakiske dinarer')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (65, N'Iran', N'IRR', N'Iranske rial')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (66, N'Irland', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (67, N'Island', N'ISK', N'Islandske krona')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (68, N'Israel', N'ILS', N'Ny Shekel')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (69, N'Italien', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (70, N'Jamaica', N'JMD', N'Jamaicanske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (71, N'Japan', N'JPY', N'Yen')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (72, N'Jordan', N'JOD', N'Jordanske dinar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (73, N'Kap Verde', N'CVE', N'Kapverdiske escudo')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (74, N'Kasakhstan', N'KZT', N'Tenge')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (75, N'Kenya', N'KES', N'Kenyansk shilling')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (76, N'Kina', N'CNY', N'Yuan renminbi')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (77, N'Kirgisistan', N'KGS', N'Som')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (78, N'Kroatien', N'HRK', N'Kroatiske kuna')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (79, N'Kuwait', N'KWD', N'Kuwaitiske dinarer')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (80, N'Laos', N'LAK', N'Kip')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (81, N'Lesotho', N'LSL', N'Loti')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (82, N'Letland', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (83, N'Libanon', N'LBP', N'Libanesiske pund')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (84, N'Liberia', N'LRD', N'Liberiansk dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (85, N'Libyen', N'LYD', N'Libyske dinarer')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (86, N'Litauen', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (87, N'Luxenburg', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (88, N'Macau', N'MOP', N'Pataca')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (89, N'Madagaskar', N'MGA', N'Madagaskiske ariary')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (90, N'Makedonien', N'MKD', N'Denar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (91, N'Malawi', N'MWK', N'Kwacha')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (92, N'Malaysia', N'MYR', N'Malaysiske ringgit')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (93, N'Maldiverne', N'MVR', N'Rufiyaa')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (94, N'Malta', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (95, N'Marokko', N'MAD', N'Marokkanske dirham')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (96, N'Mauretanien', N'MRO', N'Ouguiya')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (97, N'Mauritius', N'MUR', N'Mauritiske rupee')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (98, N'Mexico', N'MXN', N'Mexicanske peso')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (99, N'Moldova', N'MDL', N'Moldoviske leu')
GO
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (100, N'Mongoliet', N'MNT', N'Tugrik')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (101, N'Mozambique', N'MZN', N'Merical')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (102, N'Myanmar', N'MMK', N'Kyat')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (103, N'Namibia', N'NAD', N'Namibiske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (104, N'Nederlandske Antiller', N'ANG', N'Nederlandske Antiller-gylden')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (105, N'Nepal', N'NPR', N'Nepalesiske rupee')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (106, N'New Zealand', N'NZD', N'New Zealand-dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (107, N'Nicaragua', N'NIO', N'Cordoba Oro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (108, N'Nigeria', N'NGN', N'Naira')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (109, N'Nordkorea', N'KPW', N'Nordkoreanske won')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (110, N'Norge', N'NOK', N'Norske kroner')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (111, N'Oman', N'OMR', N'Omansk rial')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (112, N'Pakistan', N'PKR', N'Pakistanske rupee')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (113, N'Panama', N'PAB', N'Balboa (møntenhed)')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (114, N'Papua New Guinea', N'PGK', N'Kina')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (115, N'Paraguay', N'PYG', N'Guarani')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (116, N'Peru', N'PEN', N'Ny sol')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (117, N'Polen', N'PLN', N'Zloty')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (118, N'Portugal', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (119, N'Qatar', N'QAR', N'Qatar rial')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (120, N'Rumænien', N'RON', N'Leu')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (121, N'Rusland', N'RUB', N'Russiske rubler')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (122, N'Rwanda', N'RWF', N'Rwandiske francs')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (123, N'Salomonøerne', N'SBD', N'Salomonøerne-dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (124, N'Samoa', N'WST', N'Tala')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (125, N'Sankt Helena', N'SHP', N'Sankt Helena-pund')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (126, N'São Tome og Príncipe', N'STD', N'Dobra')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (127, N'Saudi-Arabien', N'SAR', N'Saudiarabiske riyal')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (128, N'Schweiz', N'CHF', N'Schweizerfranc')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (129, N'Serbien', N'RSD', N'Serbiske dinarer')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (130, N'Seychellerne', N'SCR', N'Seychellisk rupee')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (131, N'Sierra Leone', N'SLL', N'Leone')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (132, N'Singapore', N'SGD', N'Singaporeanske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (133, N'Slovakiet', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (134, N'Slovenien', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (135, N'Somalia', N'SOS', N'Somalisk shilling')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (136, N'Spanien', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (137, N'Sri Lanka', N'LKR', N'Srilankanske rupee')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (138, N'Sudan', N'SDG', N'Sudaniske dinarer')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (139, N'Surinam', N'SRD', N'Surinam dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (140, N'Sverige', N'SEK', N'Svenske kronar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (141, N'Swaziland', N'SZL', N'Lilangeni')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (142, N'Sydafrika', N'ZAR', N'Rand')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (143, N'Sydkorea', N'KRW', N'Won')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (144, N'Sydsudan', N'SSP', N'Sydsudanske pound')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (145, N'Syrien', N'SYP', N'Syriske pund')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (146, N'Tadsjikistan', N'TJS', N'Somoni')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (147, N'Taiwan', N'TWD', N'Nytaiwanske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (148, N'Tanzania', N'TZS', N'Tanzanisk shilling')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (149, N'Thailand', N'THB', N'Baht')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (150, N'Tjekkiet', N'CZK', N'Tjekkiske koruna')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (151, N'Tonga', N'TOP', N'Paanga')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (152, N'Trinidad og Tobago', N'TTD', N'Trinidad og Tobago-dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (153, N'Tunesien', N'TND', N'Tunesiske dinarer')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (154, N'Turkmenistan', N'AZN', N'Manat')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (155, N'Tyrkiet', N'TRY', N'Nytyrkiske lira')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (156, N'Tyskland', N'EUR', N'Euro')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (157, N'Uganda', N'UGX', N'Ugandiske shilling')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (158, N'UK', N'GBP', N'Pund Sterling')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (159, N'Ukraine', N'UAH', N'Hryvnia')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (160, N'Ungarn', N'HUF', N'Forint')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (161, N'Uruguay', N'UYU', N'Uruguayske peso')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (162, N'USA', N'USD', N'Amerikanske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (163, N'Usbekistan', N'UZS', N'Usbekiske sum')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (164, N'Vanuatu', N'VUV', N'Vatu')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (165, N'Venezuela', N'VEF', N'Bolivar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (166, N'Vietnam', N'VND', N'Dong')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (167, N'Yemen', N'YER', N'Yeminitiske rial')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (168, N'Zambia', N'ZMW', N'Kwacha')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (169, N'Zimbabwe', N'ZWL', N'Zimbabwiske dollar')
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [ValutaName]) VALUES (170, N'Østrig', N'EUR', N'Euro')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (90, N'Alfreds Futterkiste', N'Maria Anders', N'Sales Representative', N'Obere Str. 57', N'Berlin', N'12209', 156, N'030-0074321', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (91, N'Around the Horn', N'Thomas Hardy', N'Sales Representative', N'120 Hanover Sq.', N'London', N'WA1 1DP', 158, N'(171) 555-7788', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (92, N'Berglunds snabbköp', N'Christina Berglund', N'Order Administrator', N'Berguvsvägen  8', N'Luleå', N'S-958 22', 140, N'0921-12 34 65', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (93, N'Blauer See Delikatessen', N'Hanna Moos', N'Sales Representative', N'Forsterstr. 57', N'Mannheim', N'68306', 156, N'0621-08460', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (94, N'Blondesddsl père et fils', N'Frédérique Citeaux', N'Marketing Manager', N'24, place Kléber', N'Strasbourg', N'67000', 48, N'88.60.15.31', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (95, N'Bólido Comidas preparadas', N'Martín Sommer', N'Owner', N'C/ Araquil, 67', N'Madrid', N'28023', 136, N'(91) 555 22 82', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (96, N'Bon app''', N'Laurence Lebihan', N'Owner', N'12, rue des Bouchers', N'Marseille', N'13008', 48, N'91.24.45.40', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (97, N'Bottom-Dollar Markets', N'Elizabeth Lincoln', N'Accounting Manager', N'23 Tsawassen Blvd.', N'Tsawassen', N'T2F 8M4', 26, N'(604) 555-4729', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (98, N'B''s Beverages', N'Victoria Ashworth', N'Sales Representative', N'Fauntleroy Circus', N'London', N'EC2 5NT', 158, N'(171) 555-1212', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (99, N'Cactus Comidas para llevar', N'Patricio Simpson', N'Sales Agent', N'Cerrito 333', N'Buenos Aires', N'1010', 5, N'(1) 135-5555', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (100, N'Centro comercial Moctezuma', N'Francisco Chang', N'Marketing Manager', N'Sierras de Granada 9993', N'México D.F.', N'5022', 98, N'(5) 555-3392', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (101, N'Chop-suey Chinese', N'Yang Wang', N'Owner', N'Hauptstr. 29', N'Bern', N'3012', 128, N'0452-076545', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (102, N'Comércio Mineiro', N'Pedro Afonso', N'Sales Associate', N'Av. dos Lusíadas, 23', N'Sao Paulo', N'05432-043', 21, N'(11) 555-7647', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (103, N'Consolidated Holdings', N'Elizabeth Brown', N'Sales Representative', N'Berkeley Gardens 12  Brewery', N'London', N'WX1 6LT', 158, N'(171) 555-2282', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (104, N'Drachenblut Delikatessen', N'Sven Ottlieb', N'Order Administrator', N'Walserweg 21', N'Aachen', N'52066', 156, N'0241-039123', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (105, N'Du monde entier', N'Janine Labrune', N'Owner', N'67, rue des Cinquante Otages', N'Nantes', N'44000', 48, N'40.67.88.88', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (106, N'Eastern Connection', N'Ann Devon', N'Sales Agent', N'35 King George', N'London', N'WX3 6FW', 158, N'(171) 555-0297', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (107, N'Ernst Handel', N'Roland Mendel', N'Sales Manager', N'Kirchgasse 6', N'Graz', N'8010', 170, N'7675-3425', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (108, N'Familia Arquibaldo', N'Aria Cruz', N'Marketing Assistant', N'Rua Orós, 92', N'Sao Paulo', N'05442-030', 21, N'(11) 555-9857', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (109, N'FISSA Fabrica Inter. Salchichas S.A.', N'Diego Roel', N'Accounting Manager', N'C/ Moralzarzal, 86', N'Madrid', N'28034', 136, N'(91) 555 94 44', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (110, N'Folies gourmandes', N'Martine Rancé', N'Assistant Sales Agent', N'184, chaussée de Tournai', N'Lille', N'59000', 48, N'20.16.10.16', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (111, N'Folk och fä HB', N'Maria Larsson', N'Owner', N'Åkergatan 24', N'Bräcke', N'S-844 67', 140, N'0695-34 67 21', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (112, N'Frankenversand', N'Peter Franken', N'Marketing Manager', N'Berliner Platz 43', N'München', N'80805', 156, N'089-0877310', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (113, N'France restauration', N'Carine Schmitt', N'Marketing Manager', N'54, rue Royale', N'Nantes', N'44000', 48, N'40.32.21.21', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (114, N'Franchi S.p.A.', N'Paolo Accorti', N'Sales Representative', N'Via Monte Bianco 34', N'Torino', N'10100', 69, N'011-4988260', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (115, N'Furia Bacalhau e Frutos do Mar', N'Lino Rodriguez', N'Sales Manager', N'Jardim das rosas n. 32', N'Lisboa', N'1675', 118, N'(1) 354-2534', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (116, N'Galería del gastrónomo', N'Eduardo Saavedra', N'Marketing Manager', N'Rambla de Cataluña, 23', N'Barcelona', N'8022', 136, N'(93) 203 4560', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (117, N'Godos Cocina Típica', N'José Pedro Freyre', N'Sales Manager', N'C/ Romero, 33', N'Sevilla', N'41101', 136, N'(95) 555 82 82', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (118, N'Gourmet Lanchonetes', N'André Fonseca', N'Sales Associate', N'Av. Brasil, 442', N'Campinas', N'04876-786', 21, N'(11) 555-9482', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (119, N'Great Lakes Food Market', N'Howard Snyder', N'Marketing Manager', N'2732 Baker Blvd.', N'Eugene', N'97403', 162, N'(503) 555-7555', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (120, N'GROSELLA-Restaurante', N'Manuel Pereira', N'Owner', N'5ª Ave. Los Palos Grandes', N'Caracas', N'1081', 165, N'(2) 283-2951', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (121, N'Hanari Carnes', N'Mario Pontes', N'Accounting Manager', N'Rua do Paço, 67', N'Rio de Janeiro', N'05454-876', 21, N'(21) 555-0091', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (122, N'HILARION-Abastos', N'Carlos Hernández', N'Sales Representative', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'5022', 165, N'(5) 555-1340', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (123, N'Hungry Coyote Import Store', N'Yoshi Latimer', N'Sales Representative', N'City Center Plaza 516 Main St.', N'Elgin', N'97827', 162, N'(503) 555-6874', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (125, N'Island Trading', N'Helen Bennett', N'Marketing Manager', N'Garden House Crowther Way', N'Cowes', N'PO31 7PJ', 158, N'(198) 555-8888', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (126, N'Königlich Essen', N'Philip Cramer', N'Sales Associate', N'Maubelstr. 90', N'Brandenburg', N'14776', 156, N'0555-09876', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (127, N'La corne d''abondance', N'Daniel Tonini', N'Sales Representative', N'67, avenue de l''Europe', N'Versailles', N'78000', 48, N'30.59.84.10', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (128, N'La maison d''Asie', N'Annette Roulet', N'Sales Manager', N'1 rue Alsace-Lorraine', N'Toulouse', N'31000', 48, N'61.77.61.10', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (129, N'Laughing Bacchus Wine Cellars', N'Yoshi Tannamuri', N'Marketing Assistant', N'1900 Oak St.', N'Vancouver', N'V3F 2K1', 26, N'(604) 555-3392', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (130, N'Lazy K Kountry Store', N'John Steel', N'Marketing Manager', N'12 Orchestra Terrace', N'Walla Walla', N'99362', 162, N'(509) 555-7969', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (131, N'Lehmanns Marktstand', N'Renate Messner', N'Sales Representative', N'Magazinweg 7', N'Frankfurt a.M.', N'60528', 156, N'069-0245984', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (132, N'Let''s Stop N Shop', N'Jaime Yorres', N'Owner', N'87 Polk St. Suite 5', N'San Francisco', N'94117', 162, N'(415) 555-5938', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (133, N'LILA-Supermercado', N'Carlos González', N'Accounting Manager', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'3508', 165, N'(9) 331-6954', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (134, N'LINO-Delicateses', N'Felipe Izquierdo', N'Owner', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'4980', 165, N'(8) 34-56-12', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (135, N'Lonesome Pine Restaurant', N'Fran Wilson', N'Sales Manager', N'89 Chiaroscuro Rd.', N'Portland', N'97219', 162, N'(503) 555-9573', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (136, N'Magazzini Alimentari Riuniti', N'Giovanni Rovelli', N'Marketing Manager', N'Via Ludovico il Moro 22', N'Bergamo', N'24100', 69, N'035-640230', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (137, N'Maison Dewey', N'Catherine Dewey', N'Sales Agent', N'Rue Joseph-Bens 532', N'Bruxelles', N'B-1180', 14, N'(02) 201 24 67', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (138, N'Mère Paillarde', N'Jean Fresnière', N'Marketing Assistant', N'43 rue St. Laurent', N'Montréal', N'H1J 1C3', 26, N'(514) 555-8054', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (139, N'Morgenstern Gesundkost', N'Alexander Feuer', N'Marketing Assistant', N'Heerstr. 22', N'Leipzig', N'4179', 156, N'0342-023176', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (140, N'North/South', N'Simon Crowther', N'Sales Associate', N'South House 300 Queensbridge', N'London', N'SW7 1RZ', 158, N'(171) 555-7733', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (141, N'Océano Atlántico Ltda.', N'Yvonne Moncada', N'Sales Agent', N'Ing. Gustavo Moncada 8585 Piso 20-A', N'Buenos Aires', N'1010', 5, N'(1) 135-5333', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (142, N'Old World Delicatessen', N'Rene Phillips', N'Sales Representative', N'2743 Bering St.', N'Anchorage', N'99508', 162, N'(907) 555-7584', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (143, N'Ottilies Käseladen', N'Henriette Pfalzheim', N'Owner', N'Mehrheimerstr. 369', N'Köln', N'50739', 156, N'0221-0644327', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (144, N'Paris spécialités', N'Marie Bertrand', N'Owner', N'265, boulevard Charonne', N'Paris', N'75012', 48, N'(1) 42.34.22.66', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (145, N'Pericles Comidas clásicas', N'Guillermo Fernández', N'Sales Representative', N'Calle Dr. Jorge Cash 321', N'México D.F.', N'5033', 98, N'(5) 552-3745', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (146, N'Piccolo und mehr', N'Georg Pipps', N'Sales Manager', N'Geislweg 14', N'Salzburg', N'5020', 170, N'6562-9722', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (147, N'Princesa Isabel Vinhos', N'Isabel de Castro', N'Sales Representative', N'Estrada da saúde n. 58', N'Lisboa', N'1756', 118, N'(1) 356-5634', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (148, N'Que Delícia', N'Bernardo Batista', N'Accounting Manager', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'02389-673', 21, N'(21) 555-4252', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (149, N'Queen Cozinha', N'Lúcia Carvalho', N'Marketing Assistant', N'Alameda dos Canàrios, 891', N'Sao Paulo', N'05487-020', 21, N'(11) 555-1189', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (150, N'QUICK-Stop', N'Horst Kloss', N'Accounting Manager', N'Taucherstraße 10', N'Cunewalde', N'1307', 156, N'0372-035188', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (151, N'Rancho grande', N'Sergio Gutiérrez', N'Sales Representative', N'Av. del Libertador 900', N'Buenos Aires', N'1010', 5, N'(1) 123-5555', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (152, N'Rattlesnake Canyon Grocery', N'Paula Wilson', N'Assistant Sales Representative', N'2817 Milton Dr.', N'Albuquerque', N'87110', 162, N'(505) 555-5939', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (153, N'Reggiani Caseifici', N'Maurizio Moroni', N'Sales Associate', N'Strada Provinciale 124', N'Reggio Emilia', N'42100', 69, N'0522-556721', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (154, N'Ricardo Adocicados', N'Janete Limeira', N'Assistant Sales Agent', N'Av. Copacabana, 267', N'Rio de Janeiro', N'02389-890', 21, N'(21) 555-3412', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (155, N'Richter Supermarkt', N'Michael Holz', N'Sales Manager', N'Grenzacherweg 237', N'Genève', N'1203', 128, N'0897-034214', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (156, N'Romero y tomillo', N'Alejandra Camino', N'Accounting Manager', N'Gran Vía, 1', N'Madrid', N'28001', 136, N'(91) 745 6200', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (157, N'Santé Gourmet', N'Jonas Bergulfsen', N'Owner', N'Erling Skakkes gate 78', N'Stavern', N'4110', 110, N'07-98 92 35', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (158, N'Save-a-lot Markets', N'Jose Pavarotti', N'Sales Representative', N'187 Suffolk Ln.', N'Boise', N'83720', 162, N'(208) 555-8097', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (159, N'Seven Seas Imports', N'Hari Kumar', N'Sales Manager', N'90 Wadhurst Rd.', N'London', N'OX15 4NB', 158, N'(171) 555-1717', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (160, N'Simons bistro', N'Jytte Petersen', N'Owner', N'Vinbæltet 34', N'Kobenhavn', N'1734', 34, N'31 12 34 56', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (161, N'Spécialités du monde', N'Dominique Perrier', N'Marketing Manager', N'25, rue Lauriston', N'Paris', N'75016', 48, N'(1) 47.55.60.10', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (162, N'Split Rail Beer & Ale', N'Art Braunschweiger', N'Sales Manager', N'P.O. Box 555', N'Lander', N'82520', 162, N'(307) 555-4680', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (163, N'Suprêmes délices', N'Pascale Cartrain', N'Accounting Manager', N'Boulevard Tirou, 255', N'Charleroi', N'B-6000', 14, N'(071) 23 67 22 20', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (164, N'The Big Cheese', N'Liz Nixon', N'Marketing Manager', N'89 Jefferson Way Suite 2', N'Portland', N'97201', 162, N'(503) 555-3612', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (165, N'The Cracker Box', N'Liu Wong', N'Marketing Assistant', N'55 Grizzly Peak Rd.', N'Butte', N'59801', 162, N'(406) 555-5834', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (166, N'Toms Spezialitäten', N'Karin Josephs', N'Marketing Manager', N'Luisenstr. 48', N'Münster', N'44087', 156, N'0251-031259', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (167, N'Tortuga Restaurante', N'Miguel Angel Paolino', N'Owner', N'Avda. Azteca 123', N'México D.F.', N'5033', 98, N'(5) 555-2933', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (168, N'Tradição Hipermercados', N'Anabela Domingues', N'Sales Representative', N'Av. Inês de Castro, 414', N'Sao Paulo', N'05634-030', 21, N'(11) 555-2167', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (169, N'Trail''s Head Gourmet Provisioners', N'Helvetius Nagy', N'Sales Associate', N'722 DaVinci Blvd.', N'Kirkland', N'98034', 162, N'(206) 555-8257', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (170, N'Vaffeljernet', N'Palle Ibsen', N'Sales Manager', N'Smagsloget 45', N'Århus', N'8200', 34, N'86 21 32 43', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (171, N'Victuailles en stock', N'Mary Saveley', N'Sales Agent', N'2, rue du Commerce', N'Lyon', N'69004', 48, N'78.32.54.86', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (172, N'Vins et alcools Chevalier', N'Paul Henriot', N'Accounting Manager', N'59 rue de l''Abbaye', N'Reims', N'51100', 48, N'26.47.15.10', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (173, N'Die Wandernde Kuh', N'Rita Müller', N'Sales Representative', N'Adenauerallee 900', N'Stuttgart', N'70563', 156, N'0711-020361', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (174, N'Wartian Herkku', N'Pirkko Koskitalo', N'Accounting Manager', N'Torikatu 38', N'Oulu', N'90110', 46, N'981-443655', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (175, N'Wellington Importadora', N'Paula Parente', N'Sales Manager', N'Rua do Mercado, 12', N'Resende', N'08737-363', 21, N'(14) 555-8122', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (176, N'White Clover Markets', N'Karl Jablonski', N'Owner', N'305 - 14th Ave. S. Suite 3B', N'Seattle', N'98128', 162, N'(206) 555-4112', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (177, N'Wilman Kala', N'Matti Karttunen', N'Owner/Marketing Assistant', N'Keskuskatu 45', N'Helsinki', N'21240', 46, N'90-224 8858', N'Test@Someone.com', 1)
INSERT [dbo].[Customers] ([Id], [CompanyName], [ContactName], [ContactTitle], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ]) VALUES (178, N'Wolski  Zajazd', N'Zbyszek Piestrzeniewicz', N'Owner', N'ul. Filtrowa 68', N'Warszawa', N'01-012', 117, N'(26) 642-7012', N'Test@Someone.com', 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employes] ON 

INSERT [dbo].[Employes] ([Id], [Name], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ], [TitleId]) VALUES (1, N'Nancy Davolio', N'Buldervej 267', N'6500', N'Vojens', 34, N'+45 25 36 14 78', N'nabu@golddigger.com', 1, 2)
INSERT [dbo].[Employes] ([Id], [Name], [Adresse], [Zip], [City], [CountryId], [PhoneNo], [MailAdr], [Activ], [TitleId]) VALUES (2, N'Andrew Fuller', N'Ironroad 666', N'45 HI 478', N'Fullgarden', 158, N'0044 125-365 4589', N'anfu@golddigger.com', 1, 1)
SET IDENTITY_INSERT [dbo].[Employes] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeTitels] ON 

INSERT [dbo].[EmployeTitels] ([Id], [Titel]) VALUES (1, N'Sales Representative')
INSERT [dbo].[EmployeTitels] ([Id], [Titel]) VALUES (2, N'Warehouse Employee')
INSERT [dbo].[EmployeTitels] ([Id], [Titel]) VALUES (3, N'Ownwr')
INSERT [dbo].[EmployeTitels] ([Id], [Titel]) VALUES (4, N'Financial Accounting')
INSERT [dbo].[EmployeTitels] ([Id], [Titel]) VALUES (5, N'Board of Directors')
SET IDENTITY_INSERT [dbo].[EmployeTitels] OFF
GO
SET IDENTITY_INSERT [dbo].[PreciousMetals] ON 

INSERT [dbo].[PreciousMetals] ([Id], [MetalName], [PricePerKg]) VALUES (1, N'Gold', CAST(319135.650000 AS Decimal(18, 6)))
INSERT [dbo].[PreciousMetals] ([Id], [MetalName], [PricePerKg]) VALUES (2, N'Lead', CAST(14.150000 AS Decimal(18, 6)))
INSERT [dbo].[PreciousMetals] ([Id], [MetalName], [PricePerKg]) VALUES (3, N'Silver', CAST(37176.700000 AS Decimal(18, 6)))
INSERT [dbo].[PreciousMetals] ([Id], [MetalName], [PricePerKg]) VALUES (4, N'Copper', CAST(40.160000 AS Decimal(18, 6)))
INSERT [dbo].[PreciousMetals] ([Id], [MetalName], [PricePerKg]) VALUES (5, N'Iron', CAST(6.320000 AS Decimal(18, 6)))
INSERT [dbo].[PreciousMetals] ([Id], [MetalName], [PricePerKg]) VALUES (6, N'Aluminum', CAST(365.890000 AS Decimal(18, 6)))
SET IDENTITY_INSERT [dbo].[PreciousMetals] OFF
GO
SET IDENTITY_INSERT [dbo].[Rates] ON 

INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (1, N'AED', CAST(3.672100000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (2, N'AFN', CAST(86.499986000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (3, N'ALL', CAST(100.950000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (4, N'AMD', CAST(383.720087000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (5, N'ANG', CAST(1.802127000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (6, N'AOA', CAST(509.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (7, N'ARS', CAST(220.474617000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (8, N'AUD', CAST(1.511487000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (9, N'AWG', CAST(1.800000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (10, N'AZN', CAST(1.700000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (11, N'BAM', CAST(1.780420000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (12, N'BBD', CAST(2.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (13, N'BDT', CAST(106.147648000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (14, N'BGN', CAST(1.775575000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (15, N'BHD', CAST(0.376979000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (16, N'BIF', CAST(2085.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (17, N'BMD', CAST(1.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (18, N'BND', CAST(1.336950000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (19, N'BOB', CAST(6.909548000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (20, N'BRL', CAST(4.986700000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (21, N'BSD', CAST(1.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (23, N'BTN', CAST(81.797577000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (24, N'BWP', CAST(13.243755000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (25, N'BYN', CAST(2.523965000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (26, N'BZD', CAST(2.015531000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (27, N'CAD', CAST(1.365550000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (28, N'CDF', CAST(2138.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (29, N'CHF', CAST(0.894429000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (30, N'CLF', CAST(0.029246000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (31, N'CLP', CAST(807.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (32, N'CNH', CAST(6.925780000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (33, N'CNY', CAST(6.912200000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (34, N'COP', CAST(4589.807090000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (35, N'CRC', CAST(534.517612000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (36, N'CUC', CAST(1.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (37, N'CUP', CAST(25.750000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (38, N'CVE', CAST(100.475000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (39, N'CZK', CAST(21.355900000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (40, N'DJF', CAST(175.706431000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (41, N'DKK', CAST(6.765600000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (42, N'DOP', CAST(54.450000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (43, N'DZD', CAST(135.460000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (44, N'EGP', CAST(30.662200000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (45, N'ERN', CAST(15.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (46, N'ETB', CAST(54.140000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (47, N'EUR', CAST(0.898674000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (48, N'FJD', CAST(2.222250000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (49, N'FKP', CAST(0.795260000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (50, N'GBP', CAST(0.795260000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (51, N'GEL', CAST(2.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (52, N'GGP', CAST(0.795260000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (53, N'GHS', CAST(11.800000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (54, N'GIP', CAST(0.795260000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (55, N'GMD', CAST(59.950000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (56, N'GNF', CAST(8602.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (57, N'GTQ', CAST(7.804421000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (58, N'GYD', CAST(211.483078000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (59, N'HKD', CAST(7.849950000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (60, N'HNL', CAST(24.610000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (61, N'HRK', CAST(6.838940000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (62, N'HTG', CAST(153.986916000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (63, N'HUF', CAST(338.680000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (64, N'IDR', CAST(14673.550000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (65, N'ILS', CAST(3.636280000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (66, N'IMP', CAST(0.795260000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (67, N'INR', CAST(81.745497000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (68, N'IQD', CAST(1461.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (69, N'IRR', CAST(42250.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (70, N'ISK', CAST(135.820000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (71, N'JEP', CAST(0.795260000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (72, N'JMD', CAST(153.120671000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (73, N'JOD', CAST(0.709400000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (74, N'JPY', CAST(136.322000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (75, N'KES', CAST(136.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (76, N'KGS', CAST(87.520000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (77, N'KHR', CAST(4060.918325000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (78, N'KMF', CAST(446.724617000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (79, N'KPW', CAST(900.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (80, N'KRW', CAST(1338.171059000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (81, N'KWD', CAST(0.306500000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (82, N'KYD', CAST(0.833333000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (83, N'KZT', CAST(451.824380000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (84, N'LAK', CAST(17044.786170000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (85, N'LBP', CAST(15147.157610000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (86, N'LKR', CAST(320.400218000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (87, N'LRD', CAST(164.999982000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (88, N'LSL', CAST(18.178339000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (89, N'LYD', CAST(4.765000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (90, N'MAD', CAST(9.903778000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (91, N'MDL', CAST(17.932485000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (92, N'MGA', CAST(4415.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (93, N'MKD', CAST(55.886629000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (94, N'MMK', CAST(2099.814593000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (95, N'MNT', CAST(3519.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (96, N'MOP', CAST(8.085172000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (97, N'MRU', CAST(34.300000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (98, N'MUR', CAST(44.949998000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (99, N'MVR', CAST(15.360000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (100, N'MWK', CAST(1027.000000000000 AS Decimal(18, 12)))
GO
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (101, N'MXN', CAST(18.000500000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (102, N'MYR', CAST(4.460500000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (103, N'MZN', CAST(63.850001000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (104, N'NAD', CAST(18.300000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (105, N'NGN', CAST(461.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (106, N'NIO', CAST(36.535000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (107, N'NOK', CAST(10.631900000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (108, N'NPR', CAST(130.876270000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (109, N'NZD', CAST(1.618909000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (110, N'OMR', CAST(0.385020000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (111, N'PAB', CAST(1.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (112, N'PEN', CAST(3.704500000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (113, N'PGK', CAST(3.525000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (114, N'PHP', CAST(55.480004000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (115, N'PKR', CAST(283.700000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (116, N'PLN', CAST(4.162526000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (117, N'PYG', CAST(7150.629749000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (118, N'QAR', CAST(3.599030000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (119, N'RON', CAST(4.474200000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (120, N'RSD', CAST(106.457748000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (121, N'RUB', CAST(80.450523000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (122, N'RWF', CAST(1115.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (123, N'SAR', CAST(3.750738000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (124, N'SBD', CAST(8.335006000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (125, N'SCR', CAST(13.443296000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (126, N'SDG', CAST(599.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (127, N'SEK', CAST(10.262800000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (128, N'SGD', CAST(1.335400000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (129, N'SHP', CAST(0.795260000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (130, N'SLL', CAST(17665.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (131, N'SOS', CAST(568.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (132, N'SRD', CAST(37.300000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (133, N'SSP', CAST(130.260000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (134, N'STD', CAST(22823.990500000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (135, N'STN', CAST(22.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (136, N'SVC', CAST(8.749442000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (137, N'SYP', CAST(2512.530000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (138, N'SZL', CAST(18.162707000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (139, N'THB', CAST(34.145001000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (140, N'TJS', CAST(10.924186000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (141, N'TMT', CAST(3.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (142, N'TND', CAST(3.030000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (143, N'TOP', CAST(2.363414000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (144, N'TRY', CAST(19.450200000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (145, N'TTD', CAST(6.794844000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (146, N'TWD', CAST(30.760701000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (147, N'TZS', CAST(2350.500000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (148, N'UAH', CAST(36.916646000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (149, N'UGX', CAST(3735.200812000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (150, N'USD', CAST(1.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (151, N'UYU', CAST(38.638884000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (152, N'UZS', CAST(11415.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (153, N'VES', CAST(24.701561000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (154, N'VND', CAST(23465.923830000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (155, N'VUV', CAST(118.979000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (156, N'WST', CAST(2.725510000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (157, N'XAF', CAST(589.491810000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (158, N'XAG', CAST(0.039920170000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (159, N'XAU', CAST(0.000502570000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (160, N'XCD', CAST(2.702550000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (161, N'XDR', CAST(0.740120000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (162, N'XOF', CAST(589.491810000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (163, N'XPD', CAST(0.000662860000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (164, N'XPF', CAST(107.240390000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (165, N'XPT', CAST(0.000927050000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (166, N'YER', CAST(250.350066000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (167, N'ZAR', CAST(18.349605000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (168, N'ZMW', CAST(17.773651000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (169, N'ZWL', CAST(322.000000000000 AS Decimal(18, 12)))
INSERT [dbo].[Rates] ([Id], [Code], [Rates]) VALUES (170, N'BTC', CAST(0.000034115121 AS Decimal(18, 12)))
SET IDENTITY_INSERT [dbo].[Rates] OFF
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([Id], [MetalId], [Warehouse], [StockRack], [Shelf], [StockQuantity]) VALUES (1, 1, N'Kælderen', N'2', N'2', CAST(1487.500000 AS Decimal(18, 6)))
INSERT [dbo].[Stock] ([Id], [MetalId], [Warehouse], [StockRack], [Shelf], [StockQuantity]) VALUES (2, 3, N'Kælderen', N'3', N'5', CAST(4596.350000 AS Decimal(18, 6)))
INSERT [dbo].[Stock] ([Id], [MetalId], [Warehouse], [StockRack], [Shelf], [StockQuantity]) VALUES (3, 2, N'Hal-3', N'14', N'1', CAST(8500.000000 AS Decimal(18, 6)))
INSERT [dbo].[Stock] ([Id], [MetalId], [Warehouse], [StockRack], [Shelf], [StockQuantity]) VALUES (4, 4, N'Hal-2', N'3', N'1', CAST(14500.000000 AS Decimal(18, 6)))
INSERT [dbo].[Stock] ([Id], [MetalId], [Warehouse], [StockRack], [Shelf], [StockQuantity]) VALUES (5, 5, N'Store-Plads', N'1', N'1', CAST(155000.000000 AS Decimal(18, 6)))
INSERT [dbo].[Stock] ([Id], [MetalId], [Warehouse], [StockRack], [Shelf], [StockQuantity]) VALUES (6, 6, N'Store-Plads', N'2', N'1', CAST(85000.000000 AS Decimal(18, 6)))
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Countries]
GO
ALTER TABLE [dbo].[Employes]  WITH CHECK ADD  CONSTRAINT [FK_Employes_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Employes] CHECK CONSTRAINT [FK_Employes_Countries]
GO
ALTER TABLE [dbo].[Employes]  WITH CHECK ADD  CONSTRAINT [FK_Employes_EmployeTitels] FOREIGN KEY([TitleId])
REFERENCES [dbo].[EmployeTitels] ([Id])
GO
ALTER TABLE [dbo].[Employes] CHECK CONSTRAINT [FK_Employes_EmployeTitels]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Customers]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Employes] FOREIGN KEY([Employe])
REFERENCES [dbo].[Employes] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Employes]
GO
ALTER TABLE [dbo].[InvoiceLines]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLines_Invoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([Id])
GO
ALTER TABLE [dbo].[InvoiceLines] CHECK CONSTRAINT [FK_InvoiceLines_Invoice]
GO
ALTER TABLE [dbo].[InvoiceLines]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLines_PreciousMetals] FOREIGN KEY([ItemId])
REFERENCES [dbo].[PreciousMetals] ([Id])
GO
ALTER TABLE [dbo].[InvoiceLines] CHECK CONSTRAINT [FK_InvoiceLines_PreciousMetals]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_PreciousMetals] FOREIGN KEY([MetalId])
REFERENCES [dbo].[PreciousMetals] ([Id])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_PreciousMetals]
GO
USE [master]
GO
ALTER DATABASE [GoldDiggerDB] SET  READ_WRITE 
GO
