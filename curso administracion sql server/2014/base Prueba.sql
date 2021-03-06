USE [master]
GO

/****** Object:  Database [Prueba]    Script Date: 12/10/2014 12:26:28 ******/
CREATE DATABASE [Prueba] ON  PRIMARY 
( NAME = N'Prueba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQL2008\MSSQL\DATA\Prueba.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Prueba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQL2008\MSSQL\DATA\Prueba_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Prueba] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Prueba] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Prueba] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Prueba] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Prueba] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Prueba] SET ARITHABORT OFF 
GO

ALTER DATABASE [Prueba] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Prueba] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [Prueba] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Prueba] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Prueba] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Prueba] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Prueba] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Prueba] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Prueba] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Prueba] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Prueba] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Prueba] SET  READ_WRITE 
GO

ALTER DATABASE [Prueba] SET RECOVERY FULL 
GO

ALTER DATABASE [Prueba] SET  MULTI_USER 
GO

ALTER DATABASE [Prueba] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Prueba] SET DB_CHAINING OFF 
GO

