USE [master]
GO
/****** Object:  Database [BikeZone]    Script Date: 6/7/2024 6:47:51 PM ******/
CREATE DATABASE [BikeZone]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BikeZone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BikeZone.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BikeZone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BikeZone_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BikeZone] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BikeZone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BikeZone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BikeZone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BikeZone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BikeZone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BikeZone] SET ARITHABORT OFF 
GO
ALTER DATABASE [BikeZone] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BikeZone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BikeZone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BikeZone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BikeZone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BikeZone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BikeZone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BikeZone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BikeZone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BikeZone] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BikeZone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BikeZone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BikeZone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BikeZone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BikeZone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BikeZone] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BikeZone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BikeZone] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BikeZone] SET  MULTI_USER 
GO
ALTER DATABASE [BikeZone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BikeZone] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BikeZone] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BikeZone] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BikeZone] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BikeZone] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BikeZone] SET QUERY_STORE = ON
GO
ALTER DATABASE [BikeZone] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BikeZone]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/7/2024 6:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [email], [password]) VALUES (1, N'admin', N'mLLjUcwOsWo=')
INSERT [dbo].[users] ([id], [email], [password]) VALUES (2, N'user1', N'mG9S7zDsPbw=')
INSERT [dbo].[users] ([id], [email], [password]) VALUES (3, N'joao', N'mLLjUcwOsWo=')
INSERT [dbo].[users] ([id], [email], [password]) VALUES (4, N'vicente', N'DcJJJzMFYLrsc=')
INSERT [dbo].[users] ([id], [email], [password]) VALUES (5, N'jv@gmail.com', N'tdct9Jbojct4iroOKKKKfBrw==')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
/****** Object:  StoredProcedure [dbo].[autenticacao]    Script Date: 6/7/2024 6:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[autenticacao]
	@util as varchar(50),
	@pw as varchar(50),
	@retorno as int output
AS
BEGIN
	if exists (select * from users where email=@util)
		begin
			set @retorno = 1
		end
	else
		begin 
			set @retorno = 0
		end
END
GO
/****** Object:  StoredProcedure [dbo].[inserir_user]    Script Date: 6/7/2024 6:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inserir_user]
	@util as varchar(50),
	@pw as varchar(50),
	@retorno as int output
AS
BEGIN
	if not exists (select * from users where email=@util)
		begin
			insert into users values (@util, @pw)
			set @retorno = 1
		end
	else
		begin 
			set @retorno = 0
		end
END
GO
USE [master]
GO
ALTER DATABASE [BikeZone] SET  READ_WRITE 
GO
