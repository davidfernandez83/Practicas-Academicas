select cliente,numero from facturas as f
where not exists (select * from detalles as d where f.numero=d.numerofactura and d.articulo='lapiz')

