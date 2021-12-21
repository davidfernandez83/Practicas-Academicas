
CREATE PROCEDURE carga_alumnos
@nombre as nvarchar(50),
@apellido as nvarchar(50),
@email as nvarchar(50),
@tel as nvarchar(20),
@direccion as nvarchar(60),
@cp as nvarchar(6)
AS
BEGIN
INSERT INTO Alumnos
	values(@nombre, @apellido, @email, @tel, @direccion, @cp)
END
GO
