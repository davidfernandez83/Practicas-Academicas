/* 
realizar una consulta que devuelva todas las provincias que esten referenciadas por clientes
	incluyendo aquellas que no lo estan usar left y exists
*/

SELECT DISTINCT P.Descripcion	'Provincia', 
				C.IdProvincia	'Existe en Cliente'
	FROM Provincias P
	LEFT JOIN Clientes C
		ON P.IdProvincia = c.IdProvincia
	ORDER BY C.IdProvincia

SELECT DISTINCT P.Descripcion 'Provincia',
				'OK'		'Existe en Cliente'
	FROM Provincias P
	WHERE EXISTS (SELECT 1 FROM Clientes C WHERE C.IdProvincia = P.IdProvincia) 
UNION  
SELECT DISTINCT P.Descripcion 'Provincia',
				'NO OK'		'Existe en Cliente'
	FROM Provincias P
	WHERE NOT EXISTS (SELECT 1 FROM Clientes C WHERE C.IdProvincia = P.IdProvincia) 
ORDER BY 'Existe en Cliente' ASC

SELECT DISTINCT P.Descripcion 'Provincia'		
	FROM Provincias P
	WHERE NOT EXISTS (SELECT 1 FROM Clientes C WHERE C.IdProvincia = P.IdProvincia) OR
		   EXISTS (SELECT 1 FROM Clientes C WHERE C.IdProvincia = P.IdProvincia) 
ORDER BY P.Descripcion  ASC


select	P.Descripcion,
		(SELECT COUNT(1) FROM Clientes c where c.IdProvincia = p.idprovincia)
	FROM Provincias P
	Order by 2 asc
/*
realizar una consulta que devuelva todos los pedidos que tengan al menos  1 producto.
visualizar el  numero de pedido, código de producto y descripción
*/ 

SELECT	PD.IdPedido,
		PD.idProducto,
		P.Descripcion
	FROM PedidoDetalle PD
	INNER JOIN Productos P
		ON PD.IdProducto = P.IdProducto
	