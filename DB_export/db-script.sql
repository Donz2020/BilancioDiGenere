USE [master]
GO
/****** Object:  Database [pentaho]    Script Date: 12/05/2021 12:41:18 ******/
CREATE DATABASE [pentaho]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pentaho', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\pentaho.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pentaho_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\pentaho_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [pentaho] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pentaho].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pentaho] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pentaho] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pentaho] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pentaho] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pentaho] SET ARITHABORT OFF 
GO
ALTER DATABASE [pentaho] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pentaho] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pentaho] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pentaho] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pentaho] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pentaho] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pentaho] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pentaho] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pentaho] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pentaho] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pentaho] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pentaho] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pentaho] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pentaho] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pentaho] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pentaho] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pentaho] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pentaho] SET RECOVERY FULL 
GO
ALTER DATABASE [pentaho] SET  MULTI_USER 
GO
ALTER DATABASE [pentaho] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pentaho] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pentaho] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pentaho] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pentaho] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pentaho] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'pentaho', N'ON'
GO
ALTER DATABASE [pentaho] SET QUERY_STORE = OFF
GO
USE [pentaho]
GO
/****** Object:  Table [dbo].[cinecaDocenti]    Script Date: 12/05/2021 12:41:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cinecaDocenti](
	[Fascia] [varchar](100) NOT NULL,
	[Cognome_e_Nome] [varchar](50) NOT NULL,
	[Genere] [varchar](50) NOT NULL,
	[Facolta] [varchar](50) NULL,
	[S.S.D.] [varchar](50) NOT NULL,
	[S.C.] [varchar](50) NOT NULL,
	[Struttura_di_afferenza] [varchar](100) NOT NULL,
	[Servizio_prestato_in_altro_ateneo] [varchar](50) NULL,
	[UUID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Cognome_e_Nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unimol_cineca_merge]    Script Date: 12/05/2021 12:41:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unimol_cineca_merge](
	[Cognome_e_Nome] [varchar](100) NOT NULL,
	[Genere] [varchar](50) NOT NULL,
	[Tornata] [int] NULL,
	[Settore] [varchar](50) NULL,
	[Fascia] [smallint] NULL,
	[Q] [smallint] NULL,
	[Inizio] [varchar](50) NULL,
	[Fine] [varchar](50) NULL,
	[Ateneo] [varchar](50) NULL,
	[Facolta] [varchar](50) NULL,
	[Ruolo] [varchar](100) NOT NULL,
	[SSD] [varchar](50) NOT NULL,
	[Afferenza] [varchar](150) NULL,
	[Servizio_prestato_in_altro_ateneo] [varchar](50) NULL,
	[UUID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unimol_cineca_merge_TESTING]    Script Date: 12/05/2021 12:41:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unimol_cineca_merge_TESTING](
	[Cognome_e_Nome] [varchar](100) NOT NULL,
	[Genere] [varchar](50) NOT NULL,
	[Tornata] [int] NULL,
	[Settore] [varchar](50) NULL,
	[Fascia] [smallint] NULL,
	[Q] [smallint] NULL,
	[Inizio] [varchar](50) NULL,
	[Fine] [varchar](50) NULL,
	[Ateneo] [varchar](50) NULL,
	[Facolta] [varchar](50) NULL,
	[Ruolo] [varchar](100) NOT NULL,
	[SSD] [varchar](50) NOT NULL,
	[Afferenza] [varchar](150) NULL,
	[Servizio_prestato_in_altro_ateneo] [varchar](50) NULL,
	[UUID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unimolDocenti]    Script Date: 12/05/2021 12:41:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unimolDocenti](
	[Cognome] [varchar](100) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Tornata] [int] NOT NULL,
	[Settore] [varchar](50) NULL,
	[Fascia] [smallint] NOT NULL,
	[Q] [smallint] NOT NULL,
	[Inizio] [varchar](50) NOT NULL,
	[Fine] [varchar](50) NULL,
	[Ateneo] [varchar](50) NOT NULL,
	[Ruolo] [varchar](100) NOT NULL,
	[SSD] [varchar](50) NOT NULL,
	[Afferenza] [varchar](150) NULL,
	[UUID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cinecaDocenti] ADD  DEFAULT (newsequentialid()) FOR [UUID]
GO
ALTER TABLE [dbo].[unimol_cineca_merge] ADD  DEFAULT (newsequentialid()) FOR [UUID]
GO
ALTER TABLE [dbo].[unimol_cineca_merge_TESTING] ADD  DEFAULT (newsequentialid()) FOR [UUID]
GO
ALTER TABLE [dbo].[unimolDocenti] ADD  DEFAULT (newsequentialid()) FOR [UUID]
GO
USE [master]
GO
ALTER DATABASE [pentaho] SET  READ_WRITE 
GO
