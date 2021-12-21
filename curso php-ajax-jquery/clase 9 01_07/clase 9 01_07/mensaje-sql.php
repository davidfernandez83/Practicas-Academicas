<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<?php
$link=mysqli_connect("localhost","root","","catalogo");
//mysqli_set_charset($link,"utf8");

$sql="select cat_id, cat_nombre from categorias";
mysqli_query($link,$sql) or die(mysqli_error($link));

?>


</body>
</html>