
ALTER PROCEDURE AlumnosInsert

@legajo as int,
@nombre as nvarchar(50),
@apellido as nvarchar(50),
@direccion as nvarchar(50),
@cp as int,
@sucursal as nvarchar(50)

AS
BEGIN

insert into ALUMNOS (legajo, nombre, apellido, direccion, cp, sucursal)
values(@legajo, @nombre, @apellido, @direccion, @cp, @sucursal)

END
GO
