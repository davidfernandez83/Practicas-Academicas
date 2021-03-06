USE [AdventureWorks2008]
GO
/****** Object:  StoredProcedure [dbo].[GrabarProvincias]    Script Date: 06/28/2013 22:13:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[GrabarProvincias] @CodProv char(3), @CodPais varchar(3),
									@Nombre varchar(50), @Territorio int
as
insert into Person.StateProvince (StateProvinceCode, CountryRegionCode,
Name, TerritoryID)
values (@CodProv, @CodPais, @Nombre, @Territorio)

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[TraerProvincias] @Pais varchar(3)
AS
SELECT * FROM Person.StateProvince 
WHERE CountryRegionCode=@Pais