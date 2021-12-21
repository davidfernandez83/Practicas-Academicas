<?php
	$titulo = "Baja de una categoria";
	require 'validar.php';
	require 'conexion.php';
	$cat_id=$_POST['cat_id'];

	//verificacion de categoria existente en productos
	$sqlVerificacion="select cat_id from productos where cat_id=".$cat_id;
	$resultadoVerificacion=mysqli_query($link,$sqlVerificacion) or die(mysqli_error($link));
	$cantidadVerificacion=mysqli_num_rows($resultadoVerificacion);

	//borrado de categoria
	if($cantidadVerificacion>0){ $chequeo=0; }
	else{
		$sql="delete from categorias where cat_id=".$cat_id;
		$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
		$chequeo=mysqli_affected_rows($link); }
	mysqli_close($link);

	//var_dump($resultadoVerificacion);
	//var_dump($cantidadVerificacion);
	//var_dump($resultado);
?>
<?php include "encabezado.php"; ?>
</head>
<body>
	<div id="top"><img src="imagenes/top.png" alt="encabezado" width="980" height="80"></div>
	<div id="nav">
		<?php  include "menu.php"; ?>
	</div>
	<div id="main">
		<h1><?php echo $titulo ; ?></h1>
		<!-- inicio del desarrollo -->
		<?php
		if($chequeo>0){
		?>
		<div id="sinresultado">
			Se ha eliminado con exito
		</div>
		<?php header("refresh:3; url=panel-categorias.php");
		} else{
		?>
		<div id="sinresultado">ERROR: no se puede eliminar categorias activas</div>
		<?php } ?>
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>