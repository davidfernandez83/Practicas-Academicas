<!DOCTYPE html>
<html>
<head>
	<title>Arrays</title>
</head>
<body>

<?php
$marcas = array("sony","lg","phillips","samsung");

echo $marcas[1];

echo "<br>";

$semana = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado");

$n = date("w");

echo $semana[$n];

echo "<br>";

$mes = array(1=>"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

$nmes = date("n");

echo $mes[$nmes];

echo "<br>";


$autos = array("azul","beige","blanco","gris","negro","plata","rojo");

?>

<img src="prius/<?php echo $autos[3]; ?>.jpg" alt="Prius gris">

</body>
</html>