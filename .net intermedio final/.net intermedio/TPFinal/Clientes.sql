USE [AdventureWorks2008]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 07/14/2013 23:41:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Clientes](
	[Cliente] [int] NOT NULL,
	[RazonSocial] [varchar](50) NOT NULL,
	[CUIT] [char](13) NOT NULL,
	[Domicilio] [varchar](100) NULL,
	[FhAlta] [smalldatetime] NOT NULL,
	[TipoResp] [tinyint] NOT NULL,
	[Contacto] [varchar](50) NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[SaldoMaximo] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING ON
GO

