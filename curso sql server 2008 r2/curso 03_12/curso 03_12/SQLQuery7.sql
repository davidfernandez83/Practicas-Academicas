select * from visitantes

--cantidad de visitantes por ciudad y total de visitantes
select ciudad,COUNT(*) as cantidad from visitantes
group by ciudad with rollup

select COUNT(*) from visitantes

select ciudad,sexo,COUNT(*) as cantidad from visitantes
group by ciudad,sexo with rollup

select ciudad,sexo,COUNT(*) as cantidad,cast(AVG(montocompra) as decimal(10,2)) as promedio,SUM(montocompra) as total
from visitantes
group by ciudad,sexo with rollup