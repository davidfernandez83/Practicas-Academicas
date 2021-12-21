/*realizar una consulta que devuelva todas las provincias que estan referenciadas
por clientes incluyendo aquellas que no lo estan. usar para una consulta left y
para otra consulta exists

-realizar una consulta que devuelva todos los pedidos que tengan al menos un
producto cargado. se pide visualizar nro de pedido, codigo de producto y
descripcion de producto*/

select pr.descripcion, c.idcliente, c.apellidorzsocial
from Provincias pr
left join Clientes c
on pr.IdProvincia = c.IdProvincia

select pr.descripcion, c.idcliente, c.apellidorzsocial
from Provincias pr, Clientes c
where exists(select * from Clientes c where c.IdProvincia = pr.IdProvincia)
or not exists(select * from Clientes c where c.IdProvincia = pr.IdProvincia)
order by ApellidoRzSocial



