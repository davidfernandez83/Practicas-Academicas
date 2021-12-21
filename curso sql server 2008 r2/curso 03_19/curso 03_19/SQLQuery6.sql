--agrupar por sexo y ciudad, y calcular total de compra
--a)rollup b)cube
select sexo,ciudad,sum(montocompra) as total_compra from visitantes
group by sexo,ciudad with rollup
--compute sum(montocompra)
select sexo,ciudad,sum(montocompra) as total_compra from visitantes
group by sexo,ciudad with cube


--edad promedio, agrupando por sexo y ciudad sin considerar lo que no tiene email
--a)rollup b)cube
select AVG(edad) as prom_edad,sexo,ciudad from visitantes
where mail is not null and mail not in('no tiene')
group by sexo,ciudad with rollup

select AVG(edad) as prom_edad,sexo,ciudad from visitantes
where mail is not null and mail <> 'no tiene'
group by sexo,ciudad with cube;

update visitantes set ciudad=null
where nombre='Roxana Lopez'

select ciudad, COUNT(*),grouping(ciudad) as resumen from visitantes
group by ciudad with rollup