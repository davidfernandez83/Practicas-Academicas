<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<?php
$n=1;

while($n < 15){
	echo $n,"Hola <br>";
	$n++;
}

$fabricas = array(
				"Rolls Royce",
				"Aston Martin",
				"Cooper",
				"Jaguar",
				"Marcos",
				"Lotus"
			);

$n=0;

while($n<6){
	echo $fabricas[$n],"<br>";
	$n++;
}

$semana = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado");
?>

<ul>
<?php
$i=0;
while($i<7){ ?>
	<li><?php echo $semana[$i]; ?></li>
	<?php
	$i++;
}
?>
</ul>


</body>
</html>