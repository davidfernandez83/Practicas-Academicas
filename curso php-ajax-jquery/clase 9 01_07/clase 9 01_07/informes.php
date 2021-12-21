<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
</head>
<body>

<?php
$link=mysqli_connect("localhost","root","","catalogo");
mysqli_set_charset($link,"utf8");
$sql="select cat_id, cat_nombre from categorias";
$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));

while($fila=mysqli_fetch_assoc($resultado)){
	echo $fila['cat_id'], " ", $fila['cat_nombre'],"<br>";
}

mysqli_close($link);

?>


</body>
</html>