--cantidad de empleados agrupados por sexo y estado civil empleando rollup
select sexo,estadocivil, COUNT(*) as cantidad from empleados
group by sexo,estadocivil with rollup


--grouping ambos campos + rollup
select sexo,estadocivil,count(*) as cantidad,GROUPING(sexo) as resumen_sexo, GROUPING(estadocivil) as resumen_estado_civil
from empleados
group by sexo,estadocivil with rollup


--groupin ambos + cube
select sexo,estadocivil,count(*) as cantidad,GROUPING(sexo) as resumen_sexo, GROUPING(estadocivil) as resumen_estado_civil
from empleados
group by sexo,estadocivil with cube