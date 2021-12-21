--inner join
select	Provincias.descripcion,
		Clientes.apellidorzsocial,
		clientes.IdProvincia
from Clientes
inner join Provincias on Clientes.IdProvincia = Provincias.IdProvincia
where Clientes.ApellidoRzSocial like '%mart%'

--left join
select	p.idproducto,
		p.descripcion,
		p.marca,
		pd.idpedido,
		pd.cantidadsolicitada
from Productos p left join PedidoDetalle pd on p.IdProducto = pd.IdProducto
where Marca like '%celusal%'

--count
select COUNT(1) from Clientes

--right join
select c.idcliente, c.apellidorzsocial, p.*
from Clientes c
right join provincias p on c.IdProvincia = p.IdProvincia

--full join
select pd.*, p.*
from PedidoDetalle pd
full join Productos p on pd.IdProducto = p.IdProducto

--cross join
select * from Clientes c
cross join Productos p
order by IdCliente desc


select	pc.idpedido 'Nro.Pedido',
		c.apellidorzsocial 'Cliente',
		p.descripcion 'Provincia',
		pr.Descripcion 'Producto',
		pd.cantidadsolicitada 'Cantidad'
	from PedidoCabecera pc
	inner join Clientes c
		on pc.IdCliente = c.IdCliente
	inner join Provincias p
		on c.IdProvincia = p.IdProvincia
	left join PedidoDetalle pd
		on pc.idpedido = pd.idpedido
	left join Productos pr
		on pd.IdProducto = pr.IdProducto
		where pc.IdPedido > 50
		and c.IdCliente between 5000 and 10000
	order by pc.IdPedido