select sexo, estadocivil, seccion, COUNT(*) from empleados
group by sexo,estadocivil,seccion with rollup

select sexo, estadocivil, seccion, COUNT(*) from empleados
group by sexo,estadocivil,seccion with cube
