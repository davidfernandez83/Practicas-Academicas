<?php
	$titulo = "Panel de control - Eliminar producto";
	$id=$_POST['id'];
	$sql="delete from productos where prd_id=".$id;
	require 'conexion.php';
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
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
		if($resultado){
		?>
		<div id="sinresultado">
			Se ha eliminado con exito
		</div>
		<?php
		} else{
		?>
		<div id="sinresultado">
			Se ha producido un error
		</div>
		<?php } ?>
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>