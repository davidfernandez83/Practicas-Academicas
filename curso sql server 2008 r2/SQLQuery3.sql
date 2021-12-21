USE CursoSQL

DECLARE @VariableTabla TABLE
(
idCod int NOT NULL PRIMARY KEY,
Apell varchar(30) NOT NULL,
Nombre varchar(30) NULL,
FechaAlta date NOT NULL
)

INSERT INTO @VariableTabla ("idCod","Apell","FechaAlta")
VALUES(1,'Perez', '2011-05-12'),(2,'Gomez','2012-06-12')

INSERT INTO Clientes ("idCliente","ApellidoRzSocial","Nombre","FechaAlta")
SELECT *
FROM @VariableTabla

select * from Clientes


select * from @VariableTabla
/*
INSERT INTO @VariableTabla VALUES(1,'Perez','Pepe', '2011-05-12'),
(2,'Gomez', 'Jorge','2012-06-12'),(3,'Ramirez','Ramiro','2013-07-12')
*/

