<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	
<?php
$diaMes = date('d');
echo $diaMes;
?>
<br>
<?php
$mes = date('m');
echo $mes;
?>
<br>
<?php
$anio = date('Y');
echo $anio;
?>
<br>
<?php

echo "Hoy es: ",$diaMes,"/",$mes,"/",$anio;
echo date('l');

?>




</body>
</html>