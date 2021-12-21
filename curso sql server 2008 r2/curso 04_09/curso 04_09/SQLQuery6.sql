--a)-crear procedimiento almacenado llamado pa_empleados_sueldo que
--seleccione los nombres apellidos y sueldos de los empleados
create procedure pa_empleados_sueldo
as
select nombre,apellido,sueldo from empleados

--b)-ejecutar el proc creado
exec pa_empleados_sueldo

--c)-crear un proc llamado pa_empleados_hijos que seleccione nombres, apellidos
--y cantidad de hijos de empleados con hijos
create proc pa_empleados_hijos
as
select nombre,apellido,cantidadhijos from empleados
where cantidadhijos>0;

--d)-ejecutar el proc creado
pa_empleados_hijos

--e)-actualice la cantidad de hijos de algun empleado sin hijos y vuelva
--a ejecutar el proc anterior para verificar si esta en la lista
update empleados
set cantidadhijos=1
where documento='22333333'

pa_empleados_hijos

--eliminar proc
drop proc pa_empleados_hijos

--verificar
select * from sysobjects where xtype='P' and name like'pa%'

if OBJECT_ID('pa_libros_autor') is not null
drop proc pa_libros_autor
else
select 'No existe el procedimiento "pa_libros_autor"'

sp_depends pa_libros_limite_stock

sp_depends libros

sp_stored_procedures @sp_name='pa_%'
sp_stored_procedures @sp_owner='dbo'

sp_who