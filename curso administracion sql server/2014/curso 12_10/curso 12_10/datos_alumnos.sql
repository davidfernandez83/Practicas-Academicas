ALTER PROCEDURE datos_alumnos

AS
BEGIN

select Materias.nombre as Materia, Alumnos.id,  Alumnos.nombre, Alumnos.apellido, Alumnos.email, Alumnos.tel, Alumnos.direccion, Alumnos.cp
from Alumnos, Materias
order by Materias.nombre asc

END
GO
