--total de registros + agrupados por provincia y ciudad
select provincia, ciudad, COUNT(*) as registros from clientes
group by provincia, ciudad

--total de registros agrupados por provincia y ciudad, sin considerar
--los registros que tienen menos de 2 clientes
select provincia, ciudad, COUNT(*) registros from clientes
group by provincia, ciudad
having COUNT(*)>1

/*
total de clientes que viven en calle "San Martin",
agrupados por ciudad
de aquellas ciudades con menos de 2 clientes
y omitiendo la fila de la ciudad cordoba
*/
select  provincia, ciudad, COUNT(*) registros from clientes
where domicilio like '%San Martin%'
group by ciudad, provincia
having COUNT(*)<2 and ciudad not in('Cordoba')
