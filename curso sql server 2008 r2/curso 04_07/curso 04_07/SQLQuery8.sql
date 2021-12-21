create table socios
(
numero int identity,
documento char(8),
constraint CK_socios_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
nombre varchar(30),
domicilio varchar(30),
primary key(numero)
)

insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');
 
create table inscriptos
(
numero_socio int not null,
deporte varchar(20) not null,
cuotas tinyint
constraint CK_inscriptos_cuotas check (cuotas between 0 and 10)
constraint DF_inscriptos_cuotas default 0,
primary key (numero_socio,deporte),
constraint FK_inscriptos_socios
foreign key (numero_socio)
references socios(numero)
on update cascade
on delete cascade
)

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);