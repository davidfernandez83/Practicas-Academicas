<!DOCTYPE html>
<html>
<head>
	<title>Listado</title>
	<link rel="stylesheet" type="text/css" href="listado-autos.css">
	<meta charset="utf-8">
</head>
<body>
	<h1>listado autos</h1>

<?php 
	$colores = array("azul", "beige", "blanco", "gris", "negro", "plata", "rojo");
	$cantidad = count($colores); // contamos elementos del array
	$i = 0;
	while($i<$cantidad){
?>
	<div class="contenedor">
		<img src="prius/<?php echo $colores[$i]; ?>.jpg" alt="Prius <?php echo $colores[$i]; ?>">
		<br>
		<h2><?php echo $colores[$i]; ?></h2>	
	</div>
<?php 
		$i++;
	}
?>
</body>
</html>