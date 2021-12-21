<?php 
	$link = mysqli_connect("localhost", "root", "", "catalogo");
	mysqli_set_charset($link, "utf8");
	$sql = "SELECT 
					cat_id, cat_nombre 
				FROM
					categorias";
	$resultado = mysqli_query($link, $sql);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>listado</title>
</head>
<body>
<?php 
	//$fila = mysqli_fetch_array($resultado);
	//$fila = mysqli_fetch_row($resultado);
	$fila = mysqli_fetch_assoc($resultado);
?>
<pre>
<?php print_r($fila); ?>
</pre>

</body>
</html>