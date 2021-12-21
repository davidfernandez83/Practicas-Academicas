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
echo "<br>";
$diaSemana = date('N');

switch ($diaSemana){
	case 1:
		$caseDiaSemana = "Domingo";
		break;
	case 2:
		$caseDiaSemana = "Lunes";
		break;
	case 3:
		$caseDiaSemana = "Martes";
		break;
	case 4:
		$caseDiaSemana = "Miercoles";
		break;
	case 5:
		$caseDiaSemana = "Jueves";
		break;
	case 1:
		$caseDiaSemana = "Viernes";
		break;
	case 1:
		$caseDiaSemana = "Sabado";
		break;
}

echo "<br>",$caseDiaSemana;
?>




</body>
</html>