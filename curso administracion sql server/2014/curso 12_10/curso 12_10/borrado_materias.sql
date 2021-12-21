
CREATE PROCEDURE borrado_materias

@id as int

AS
BEGIN

DELETE FROM Materias
WHERE id = @id

END
GO
