--intente crear un indice agrupado unico para el campo apellido
create unique clustered index I_alumnos_apellido
on alumnos(apellido)
select * from alumnos

--cree un indice agrupado, no unico, para el campo apellido
create clustered index I_alumnos_apellido
on alumnos(apellido)
sp_helpindex alumnos

--intente establecer una restriccion primary key al campo legajo especificanco
--que cree un indice agrupado
alter table alumnos
add constraint PK_alumnos_legajo
primary key clustered(legajo);
sp_helpconstraint alumnos;

--establezca la restriccion primary key al campo legajo especificando que
--cree un indice no agrupado
alter table alumnos
add constraint PK_alumnos_legajo
primary key nonclustered(legajo);

--vea los indices alumnos
sp_helpindex alumnos;

--analice las restricciones creadas
sp_helpconstraint alumnos;

--cree un indice unico no agrupado para el campo documento
create unique nonclustered index I_alumnos_documento
on alumnos(documento)

--intente ingresar un alumno con documento duplicado
 insert into alumnos values ('a444','22222222','Rodriguez','Patricia',5.50);

--vea los indices de alumnos nuevamente
sp_helpindex alumnos;


--crear un indice compuesto para los capos apellido y nombre
create index I_alumnos_apellido_nombre
on alumnos(apellido,nombre);

--consultar sysindexes
select * from sysindexes

--crear restriccion unique para campo documento
alter table alumnos
add constraint UQ_alumnos_documento
unique (documento);

--ver restricciones
sp_helpconstraint alumnos;

--ver indices
sp_helpindex alumnos;

--consultar sysindexes otra vez
select * from sysindexes;

--consultar indexes creados por ud.
select name from sysindexes
where name like 'I_alumnos%'