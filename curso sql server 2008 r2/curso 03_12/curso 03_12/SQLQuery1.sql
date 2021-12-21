select * from productos
compute avg(precio)

select nombre,idprovincia from Clientes
order by IdProvincia
compute count(idprovincia) by idprovincia

select * from visitantes

select * from visitantes
compute avg(montocompra)

select * from visitantes
compute avg(edad), sum(montocompra)

select nombre,ciudad,provincia from visitantes
order by provincia,ciudad
compute count(provincia) by provincia,ciudad

select * from visitantes
order by provincia,ciudad
compute AVG(montocompra),sum(montocompra)
compute count(provincia),avg(edad) by provincia,ciudad

