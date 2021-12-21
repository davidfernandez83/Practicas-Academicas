
CREATE PROCEDURE AlumnosDelete

@legajo as int

AS
BEGIN

delete from ALUMNOS
	where legajo = @legajo

END
GO
