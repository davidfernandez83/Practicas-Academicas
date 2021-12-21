create view vista_empleados as
select (apellido+' '+e.nombre) as nombre,sexo,s.nombre as seccion, cantidadhijos
from empleados as e
join secciones as s
on codigo=seccion;

select * from vista_empleados

sp_help vista_empleados

sp_helptext vista_empleados

sp_depends vista_empleados

sp_depends empleados

select * from sysobjects
where xtype='V' and name like 'vista%'

create view vista_empleados_hijos
with encryption
as select (apellido+' '+e.nombre) as nombre,sexo,s.nombre as seccion, cantidadhijos
from empleados as e
join secciones as s
on codigo=seccion;

sp_helptext vista_empleados_hijos

drop view vista_empleados