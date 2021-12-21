<?php 
	$link = mysqli_connect("localhost", "root", "", "catalogo");
	mysqli_set_charset($link, "utf8");
	$sql = "SELECT 
					cat_id, cat_nombreX 
				FROM
					categorias";
	$resultado = mysqli_query($link, $sql);// or die(mysqli_error($link));
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>listado</title>
</head>
<body>
<?php 
	while ( $fila = mysqli_fetch_assoc($resultado) ) {
		echo $fila['cat_id'], " ";
		echo $fila ['cat_nombre'], "<br>";
	}
	
?>
<pre>
<?php print_r($fila); ?>
</pre>

</body>
</html>