
CREATE PROCEDURE modificacion_materias
@id as int,
@idAlumno as int,
@nombre as nvarchar(50),
@descripcion as nvarchar(100),
@horas as int
AS
BEGIN

UPDATE Materias
SET idAlumno =  @idAlumno,
	nombre = @nombre,
	descripcion = @descripcion,
	horas = @horas
WHERE id = @id

END
GO
