USE CursoSQL

DECLARE @EstatusUsuario TABLE
(IdEstatus int NOT NULL PRIMARY KEY,
nombre varchar(30) NULL)

insert into @EstatusUsuario values(1,'Activo'),(2,'Inactivo'),(3,'Bloqueado')

--select * from @EstatusUsuario
/*
select nombre
into solonombres
from @EstatusUsuario;
*/

select *
into todo
from @EstatusUsuario;

select * from todo