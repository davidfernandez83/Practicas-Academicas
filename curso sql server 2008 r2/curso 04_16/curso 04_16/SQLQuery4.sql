drop table socios;
create table socios
(
documento char(8) not null,
nombre varchar(30),
domicilio varchar(30),
constraint PK_socios primary key(documento)
)
drop table inscriptos;
create table inscriptos
(
numero int identity,
documento char(8),
deporte varchar(20),
matricula char(1),
constraint FK_inscriptos_documento foreign key (documento) references socios(documento),
constraint CK_inscriptos_matricula check (matricula in('s','n')),
constraint PK_inscriptos primary key (documento,deporte)
)

create table morosos
(
documento char(8) not null
)


insert into socios values('11111111','Carlos Perez','Pasteur 1000');
insert into socios values('11222222','Manuel Perez','Pasteur 1100');
insert into socios values('11333333','Martin Perez','Pasteur 1200');
insert into socios values('11444444','Juan Perez','Pasteur 1300');

insert into inscriptos values('11111111','Tenis','n');
insert into inscriptos values('11222222','Tenis','n');
insert into inscriptos values('11111111','Basketball','s');
insert into inscriptos values('11333333','Futbol','s');
insert into inscriptos values('11444444','Futbol','s');

insert into morosos values('11222222');
insert into morosos values('11333333');