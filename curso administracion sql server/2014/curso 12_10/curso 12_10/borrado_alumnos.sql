
CREATE PROCEDURE borrado_alumnos

@id int

AS
BEGIN

DELETE FROM Alumnos
WHERE id = @id

END
GO
