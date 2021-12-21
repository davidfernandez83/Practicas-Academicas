--cantidad de clientes por pais y la cantidad total de clientes en una sola consulta
select pais,COUNT(*) as cantidad from clientesr
group by pais with rollup

--cantidad de clientes agrupados por pais y estado, incluyendo resultados parciales
select pais,estado,COUNT(*) as cantidad from clientesr
group by pais,estado with rollup

--cantidad de clientes agrupados por pais, estado y ciudad
select pais,estado,ciudad,COUNT(*) as cantidad from clientesr
group by pais,estado,ciudad with rollup
order by pais,cantidad,estado 