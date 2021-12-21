<?php
$conexion=mysqli_connect("localhost","root","","catalogo");
mysqli_set_charset($conexion,"utf8");
$sql="select prd_nombre,prd_descripcion,prd_precio from productos";
$resultado=mysqli_query($conexion,$sql) or die(mysqli_error($conexion));
mysqli_close($conexion);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Listado productos</title>
	<link rel="stylesheet" href="tarea-clase9.css">
</head>
<body>
<h1>Listado de productos</h1>
<table>
<tr>
	<th>
		Nombre
	</th>
	<th>
		Descripcion
	</th>
	<th>
		Precio
	</th>
</tr>
<?php
while($fila=mysqli_fetch_assoc($resultado)){ ?>
<tr>
	<td><?php echo $fila['prd_nombre'] ?></td>
	<td><?php echo $fila['prd_descripcion'] ?></td>
	<td><?php echo $fila['prd_precio'] ?></td>
</tr>
<?php } ?>
</table>

</body>
</html>