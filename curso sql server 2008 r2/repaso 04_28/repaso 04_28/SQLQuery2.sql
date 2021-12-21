create table empleados
(
documento varchar(8) not null,
nombre varchar(30),
seccion varchar(30)
)

 insert into empleados values ('11111111','Alberto Lopez','Sistemas')
 insert into empleados values ('2222222','Beatriz Garcia','Administracion')
 insert into empleados values ('2222222','Juan Perez','Administracion')
 
 select * from empleados
 
 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento)
 
 delete from empleados
 where nombre='Juan Perez'
 
 update empleados set documento='11111111' where documento='2222222'
 
  insert into empleados values (null,'Juan Perez','Administracion')