USE AdventureWorks2008
GO

CREATE TABLE [dbo].[ProvinciasArgentinas](
	[CodigoProvincia] [char](2) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[CodigoPais] [char](2) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Nombre] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Territorio] [smallint] NOT NULL,
 CONSTRAINT [PK_ProvinciasArgentinas] PRIMARY KEY CLUSTERED 
(
	[CodigoProvincia] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO 

INSERT INTO ProvinciasArgentinas (CodigoProvincia, CodigoPais, Nombre, Territorio)
VALUES ('SF','AR','Santa Fe',1)
INSERT INTO ProvinciasArgentinas (CodigoProvincia, CodigoPais, Nombre, Territorio)
VALUES ('MI','AR','Misiones',1)
INSERT INTO ProvinciasArgentinas (CodigoProvincia, CodigoPais, Nombre, Territorio)
VALUES ('ER','AR','Entre Rios',1)


