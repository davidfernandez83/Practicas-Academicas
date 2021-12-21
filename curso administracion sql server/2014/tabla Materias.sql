USE [Prueba]
GO

/****** Object:  Table [dbo].[Materias]    Script Date: 12/10/2014 12:29:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Materias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idAlumno] [int] NULL,
	[nombre] [nvarchar](30) NULL,
	[descripcion] [nvarchar](100) NULL,
	[horas] [int] NULL
) ON [PRIMARY]

GO

