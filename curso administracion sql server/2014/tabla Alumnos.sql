USE [Prueba]
GO

/****** Object:  Table [dbo].[Alumnos]    Script Date: 12/10/2014 12:28:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Alumnos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tel] [nvarchar](20) NULL,
	[direccion] [nvarchar](60) NULL,
	[cp] [nvarchar](6) NULL
) ON [PRIMARY]

GO

