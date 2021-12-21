<?php
	$titulo = "Panel de control - Agregar categoria";
	$nombre=$_POST['nombre'];
	if($nombre=="")$nombre="Sin nombre";
	$sql="insert into categorias values(NULL,'".$nombre."')";
	require 'conexion.php';
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
	$chequeo=mysqli_affected_rows($link);
	mysqli_close($link);
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
		if($chequeo>0){ header("refresh:3;url=panel-categorias.php");
		?>
		<div id="sinresultado">
			<img src="imgs/ok.png" alt="ok">Se ha agregado correctamente
		</div>
		<?php }else{ ?>
		<div id="sinresultado">
			<img src="imgs/error.png" alt="error">No se ha agregado ningun dato
		</div>
		<?php } ?>
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>