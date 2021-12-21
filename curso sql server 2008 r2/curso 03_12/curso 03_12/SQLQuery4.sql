--4- Muestre todos los datos y el promedio del monto empleando "compute"
--(1 resultado parcial)
select * from inmuebles
compute avg(monto)

--5- Empleando cláusulas "compute" consulte el promedio de las superficies y el total
--de los montos (2 columnas extras)
select * from inmuebles
compute avg(superficie), sum(monto)

--6- Realice la misma consulta anterior pero empleando "compute by" para obtener
--resultados parciales  por documento,barrio y ciudad.
select * from inmuebles
order by documento,barrio,ciudad
compute avg(superficie), sum(monto) by documento,barrio,ciudad

--7- Realice la misma consulta anterior pero con resultados parciales por documento
--y barrio (6 resultados parciales dobles)
select * from inmuebles
order by documento,barrio,ciudad
compute avg(superficie), sum(monto) by documento,barrio

--8- Realice la misma consulta anterior pero con resultados parciales por documento
--(4 resultados parciales dobles)
select * from inmuebles
order by documento,barrio,ciudad
compute avg(superficie), sum(monto) by documento

--9- Combine cláusulas "compute" con "compute by" para averiguar el total de monto
--a pagar por propietario y el promedio de monto de todos
--(4 resultados parciales y 1 general)
select * from inmuebles
order by nombre,monto
compute avg(monto)
compute sum(monto) by nombre