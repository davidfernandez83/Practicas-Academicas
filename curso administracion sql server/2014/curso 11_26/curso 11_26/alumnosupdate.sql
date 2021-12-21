
CREATE PROCEDURE AlumnosUpdate
@sucursal as nvarchar(50),
@legajo as int

AS
BEGIN

update ALUMNOS
	set Sucursal = @sucursal
	where legajo = @legajo

END
GO
