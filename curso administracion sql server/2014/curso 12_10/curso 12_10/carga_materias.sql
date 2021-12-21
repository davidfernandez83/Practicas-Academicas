
CREATE PROCEDURE carga_materias
@idAlumno as int,
@nombre as nvarchar(50),
@descripcion as nvarchar(100),
@horas as int
AS
BEGIN
INSERT INTO Materias
	values(@idAlumno, @nombre, @descripcion, @horas)
END
GO
