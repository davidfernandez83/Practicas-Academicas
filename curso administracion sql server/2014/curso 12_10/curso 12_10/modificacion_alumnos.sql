
CREATE PROCEDURE modificacion_alumnos
@id as int,
@nombre as nvarchar(50),
@apellido as nvarchar(50),
@email as nvarchar(50),
@tel as nvarchar(20),
@direccion as nvarchar(60),
@cp as nvarchar(6)

AS
BEGIN

UPDATE Alumnos
	SET nombre = @nombre,
		apellido = @apellido,
		email = @email,
		tel = @tel,
		direccion = @direccion,
		cp = @cp
	WHERE id = @id

END
GO
