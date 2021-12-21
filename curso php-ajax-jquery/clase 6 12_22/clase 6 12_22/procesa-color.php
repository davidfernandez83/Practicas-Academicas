<!DOCTYPE html>
<html>
<head>
	<title>Colores</title>
	<link rel="stylesheet" type="text/css" href="formulario.css">	
</head>
<body>

<?php 
	$color = $_GET['color'];

	if( $color == "rojo" ){
		$codigo = "#f00";
	}
	else if( $color == "verde" ){
		$codigo = "#292";
	}
	else if( $color == "azul" ){
		$codigo = "#22a";
	}
	else if( $color == "amarillo" ){
		$codigo = "#ff0";
	}
	else if( $color == "naranja" ){
		$codigo = "#f60";
	}
	else{
		$codigo = "#ccc";
		$color = "No disponible";
	}

?>

	<div id="muestraColor" style="background-color:<?php echo $codigo; ?>"></div> <?php echo $color ?>

</body>
</html>