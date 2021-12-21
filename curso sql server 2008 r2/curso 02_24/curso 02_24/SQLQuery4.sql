--subconsultas
select	c.idcliente NroCLiente,
		c.apellidorzsocial Cliente,
		(select COUNT(*) from PedidoCabecera pc where pc.IdCliente = c.idcliente) Pedidos
	from Clientes c
	

select top 5 c.idcliente,
				c.apellidorzsocial
			from Clientes c
			where exists(select 1 from PedidoCabecera pc
							where pc.IdCliente = c.IdCliente and pc.FechaBajaPedido is not null)
			order by 1 asc
			

select	c.idcliente,
	c.apellidorzsocial,
	pc.idpedido
from (select * from clientes
	where fechabaja is not null) c
inner join (select * from pedidocabecera
	where fechabajapedido is not null) pc
on c.idcliente = pc.idcliente


select c.apellidorzsocial, c.fechabaja from clientes c
where idcliente in (4050, 18381, 20103, 4050)

--union: debe tener mismo tipo de datos y orden de columnas
select * from Clientes
union all(select * from clientes)