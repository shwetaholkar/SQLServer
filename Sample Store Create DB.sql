USE [master]
GO

/****** Object:  Database [SampleStore]    Script Date: 04-05-2022 06:28:15 ******/
CREATE DATABASE [SampleStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SampleStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SampleStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SampleStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SampleStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SampleStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SampleStore] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SampleStore] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SampleStore] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SampleStore] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SampleStore] SET ARITHABORT OFF 
GO

ALTER DATABASE [SampleStore] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SampleStore] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SampleStore] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SampleStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SampleStore] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SampleStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SampleStore] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SampleStore] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SampleStore] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SampleStore] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SampleStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SampleStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SampleStore] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SampleStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SampleStore] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SampleStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SampleStore] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SampleStore] SET RECOVERY FULL 
GO

ALTER DATABASE [SampleStore] SET  MULTI_USER 
GO

ALTER DATABASE [SampleStore] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SampleStore] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SampleStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SampleStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SampleStore] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SampleStore] SET QUERY_STORE = OFF
GO

USE [SampleStore]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE [SampleStore] SET  READ_WRITE 
GO