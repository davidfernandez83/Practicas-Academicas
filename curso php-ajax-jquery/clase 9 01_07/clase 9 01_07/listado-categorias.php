<?php
$link=mysqli_connect("localhost","root","","catalogo");
mysqli_set_charset($link,"utf8");
$sql="select cat_id, cat_nombre from categorias";
$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Listado categorias</title>
	<link rel="stylesheet" type="text/css" href="listado.css">
</head>
<body>
	
<table>
	<tr>
		<th>ID</th>
		<th>CATEGORIAS</th>
	</tr>
<?php
while($fila=mysqli_fetch_assoc($resultado)){?>
	<tr>
		<td><?php echo $fila['cat_id'] ?></td>
		<td><?php echo $fila['cat_nombre'] ?></td>
	</tr>
<?php
}
?>

</table>

</body>
</html>