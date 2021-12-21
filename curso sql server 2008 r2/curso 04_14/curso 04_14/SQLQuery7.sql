--crear un proc pa_empleados_sueldo que seleccione los nombres, apellidos
--y sueldos de los empleados con sueldo superior o igual al enviado como parametro
create procedure pa_empleados_sueldo
@sueldo decimal(6,2)
as
select nombre,apellido,sueldo from empleados
where sueldo >=@sueldo

--ejecutar el proc con diferentes valores: por ej: exec pa_empleados_sueldo 400
exec pa_empleados_sueldo 500;

--crear el proc pa_empleados_actualizar_sueldo que actualice los sueldos iguales
--al enviado como primer parametro, con el valor del segundo parametro enviado.
create procedure pa_empleados_actualizar_sueldo
@actualizar decimal(6,2),
@valor decimal(6,2)
as
update empleados
set sueldo=@valor
where sueldo=@actualizar;

--ejecutar el proc y verificar. por ej: exec pa_empleados_actualizar_sueldo 300,350;
--select * from empleados;
pa_empleados_actualizar_sueldo 300,350;
select * from empleados;

--crear proc pa_sueldototal que recibe el documento de un empleado y muestra:
--nombre, apellido y sueldo total (resultado de la suma del sueldo y la asignacion
--po hijo:200$ por hijo). utilizar como valor por defecto el patron "%".
drop proc pa_sueldototal
create procedure pa_sueldototal
@documento char(8)='%'
as
select nombre, apellido, sueldo + (cantidadhijos*200) as sueldo_total from empleados
where documento like @documento

pa_sueldototal 22222222