USE [master]
GO
/****** Object:  Database [HassanCenter]    Script Date: 09/21/2014 23:31:30 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'HassanCenter')
BEGIN
CREATE DATABASE [HassanCenter] ON  PRIMARY 
( NAME = N'HassanCenter', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MOHAMED\MSSQL\DATA\HassanCenter.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HassanCenter_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MOHAMED\MSSQL\DATA\HassanCenter_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [HassanCenter] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HassanCenter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HassanCenter] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HassanCenter] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HassanCenter] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HassanCenter] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HassanCenter] SET ARITHABORT OFF
GO
ALTER DATABASE [HassanCenter] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HassanCenter] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HassanCenter] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HassanCenter] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HassanCenter] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HassanCenter] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HassanCenter] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HassanCenter] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HassanCenter] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HassanCenter] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HassanCenter] SET  DISABLE_BROKER
GO
ALTER DATABASE [HassanCenter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HassanCenter] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HassanCenter] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HassanCenter] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HassanCenter] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HassanCenter] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HassanCenter] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HassanCenter] SET  READ_WRITE
GO
ALTER DATABASE [HassanCenter] SET RECOVERY FULL
GO
ALTER DATABASE [HassanCenter] SET  MULTI_USER
GO
ALTER DATABASE [HassanCenter] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HassanCenter] SET DB_CHAINING OFF
GO
USE [HassanCenter]
GO
/****** Object:  ForeignKey [FK_TRANVisit_ACPatient]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_ACPatient]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit] DROP CONSTRAINT [FK_TRANVisit_ACPatient]
GO
/****** Object:  ForeignKey [FK_TRANVisit_BDPhysician]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_BDPhysician]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit] DROP CONSTRAINT [FK_TRANVisit_BDPhysician]
GO
/****** Object:  ForeignKey [FK_TRANVisit_BDVisitType]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_BDVisitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit] DROP CONSTRAINT [FK_TRANVisit_BDVisitType]
GO
/****** Object:  ForeignKey [FK_BDVisitPrice_BDVisitType]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BDVisitPrice_BDVisitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BDVisitPrice]'))
ALTER TABLE [dbo].[BDVisitPrice] DROP CONSTRAINT [FK_BDVisitPrice_BDVisitType]
GO
/****** Object:  ForeignKey [FK_BDPhysicianSalary_BDPhysician]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BDPhysicianSalary_BDPhysician]') AND parent_object_id = OBJECT_ID(N'[dbo].[BDPhysicianSalary]'))
ALTER TABLE [dbo].[BDPhysicianSalary] DROP CONSTRAINT [FK_BDPhysicianSalary_BDPhysician]
GO
/****** Object:  Table [dbo].[BDPhysicianSalary]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BDPhysicianSalary_BDPhysician]') AND parent_object_id = OBJECT_ID(N'[dbo].[BDPhysicianSalary]'))
ALTER TABLE [dbo].[BDPhysicianSalary] DROP CONSTRAINT [FK_BDPhysicianSalary_BDPhysician]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BDPhysicianSalary]') AND type in (N'U'))
DROP TABLE [dbo].[BDPhysicianSalary]
GO
/****** Object:  Table [dbo].[BDVisitPrice]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BDVisitPrice_BDVisitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BDVisitPrice]'))
ALTER TABLE [dbo].[BDVisitPrice] DROP CONSTRAINT [FK_BDVisitPrice_BDVisitType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BDVisitPrice]') AND type in (N'U'))
DROP TABLE [dbo].[BDVisitPrice]
GO
/****** Object:  Table [dbo].[TRANVisit]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_ACPatient]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit] DROP CONSTRAINT [FK_TRANVisit_ACPatient]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_BDPhysician]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit] DROP CONSTRAINT [FK_TRANVisit_BDPhysician]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_BDVisitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit] DROP CONSTRAINT [FK_TRANVisit_BDVisitType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRANVisit]') AND type in (N'U'))
DROP TABLE [dbo].[TRANVisit]
GO
/****** Object:  Table [dbo].[BDVisitType]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BDVisitType]') AND type in (N'U'))
DROP TABLE [dbo].[BDVisitType]
GO
/****** Object:  Table [dbo].[ACPatient]    Script Date: 09/21/2014 23:31:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACPatient]') AND type in (N'U'))
DROP TABLE [dbo].[ACPatient]
GO
/****** Object:  Table [dbo].[BDPhysician]    Script Date: 09/21/2014 23:31:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BDPhysician]') AND type in (N'U'))
DROP TABLE [dbo].[BDPhysician]
GO
/****** Object:  Table [dbo].[BDPhysician]    Script Date: 09/21/2014 23:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BDPhysician]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BDPhysician](
	[PhysicianID] [int] IDENTITY(1,1) NOT NULL,
	[PhysicianName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_BDPhysician] PRIMARY KEY CLUSTERED 
(
	[PhysicianID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ACPatient]    Script Date: 09/21/2014 23:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACPatient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACPatient](
	[PatientID] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[Age] [int] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BDVisitType]    Script Date: 09/21/2014 23:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BDVisitType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BDVisitType](
	[VisitTypeID] [int] IDENTITY(1,1) NOT NULL,
	[VisitTypeName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_VisitType] PRIMARY KEY CLUSTERED 
(
	[VisitTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TRANVisit]    Script Date: 09/21/2014 23:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRANVisit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRANVisit](
	[VisitID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[PhysicianID] [int] NOT NULL,
	[VisitTypeID] [int] NOT NULL,
	[VisitDate] [date] NOT NULL,
	[VisitPrice] [decimal](18, 3) NOT NULL,
	[PhysicianSalary] [decimal](18, 3) NOT NULL,
	[VisitsCount] [int] NOT NULL,
	[TotalVisitPrice] [decimal](18, 3) NOT NULL,
	[Paiedprice] [decimal](18, 3) NOT NULL,
	[RestPrice] [decimal](18, 3) NOT NULL,
 CONSTRAINT [PK_TRANVisit] PRIMARY KEY CLUSTERED 
(
	[VisitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BDVisitPrice]    Script Date: 09/21/2014 23:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BDVisitPrice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BDVisitPrice](
	[VisitPriceID] [int] IDENTITY(1,1) NOT NULL,
	[VisitTypeID] [int] NOT NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL,
	[VisitPrice] [decimal](18, 3) NOT NULL,
 CONSTRAINT [PK_BDVisitPrice] PRIMARY KEY CLUSTERED 
(
	[VisitPriceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BDPhysicianSalary]    Script Date: 09/21/2014 23:31:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BDPhysicianSalary]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BDPhysicianSalary](
	[PhysicianPriceID] [int] IDENTITY(1,1) NOT NULL,
	[PhysicianID] [int] NOT NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL,
	[PhysicianSalary] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_PhysicianSalary] PRIMARY KEY CLUSTERED 
(
	[PhysicianPriceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_TRANVisit_ACPatient]    Script Date: 09/21/2014 23:31:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_ACPatient]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit]  WITH CHECK ADD  CONSTRAINT [FK_TRANVisit_ACPatient] FOREIGN KEY([PatientID])
REFERENCES [dbo].[ACPatient] ([PatientID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_ACPatient]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit] CHECK CONSTRAINT [FK_TRANVisit_ACPatient]
GO
/****** Object:  ForeignKey [FK_TRANVisit_BDPhysician]    Script Date: 09/21/2014 23:31:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_BDPhysician]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit]  WITH CHECK ADD  CONSTRAINT [FK_TRANVisit_BDPhysician] FOREIGN KEY([PhysicianID])
REFERENCES [dbo].[BDPhysician] ([PhysicianID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_BDPhysician]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit] CHECK CONSTRAINT [FK_TRANVisit_BDPhysician]
GO
/****** Object:  ForeignKey [FK_TRANVisit_BDVisitType]    Script Date: 09/21/2014 23:31:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_BDVisitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit]  WITH CHECK ADD  CONSTRAINT [FK_TRANVisit_BDVisitType] FOREIGN KEY([VisitTypeID])
REFERENCES [dbo].[BDVisitType] ([VisitTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANVisit_BDVisitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANVisit]'))
ALTER TABLE [dbo].[TRANVisit] CHECK CONSTRAINT [FK_TRANVisit_BDVisitType]
GO
/****** Object:  ForeignKey [FK_BDVisitPrice_BDVisitType]    Script Date: 09/21/2014 23:31:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BDVisitPrice_BDVisitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BDVisitPrice]'))
ALTER TABLE [dbo].[BDVisitPrice]  WITH CHECK ADD  CONSTRAINT [FK_BDVisitPrice_BDVisitType] FOREIGN KEY([VisitTypeID])
REFERENCES [dbo].[BDVisitType] ([VisitTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BDVisitPrice_BDVisitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[BDVisitPrice]'))
ALTER TABLE [dbo].[BDVisitPrice] CHECK CONSTRAINT [FK_BDVisitPrice_BDVisitType]
GO
/****** Object:  ForeignKey [FK_BDPhysicianSalary_BDPhysician]    Script Date: 09/21/2014 23:31:34 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BDPhysicianSalary_BDPhysician]') AND parent_object_id = OBJECT_ID(N'[dbo].[BDPhysicianSalary]'))
ALTER TABLE [dbo].[BDPhysicianSalary]  WITH CHECK ADD  CONSTRAINT [FK_BDPhysicianSalary_BDPhysician] FOREIGN KEY([PhysicianID])
REFERENCES [dbo].[BDPhysician] ([PhysicianID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BDPhysicianSalary_BDPhysician]') AND parent_object_id = OBJECT_ID(N'[dbo].[BDPhysicianSalary]'))
ALTER TABLE [dbo].[BDPhysicianSalary] CHECK CONSTRAINT [FK_BDPhysicianSalary_BDPhysician]
GO
