CREATE PROCEDURE GrabarMonedas2 @Cod varchar(3), @Nombre varchar(50)
AS
insert into Sales.Currency (CurrencyCode, Name) values (@Cod, @Nombre)