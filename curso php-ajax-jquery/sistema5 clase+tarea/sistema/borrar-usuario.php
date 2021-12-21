<?php
	$titulo = "Baja de un usuario";
	$usu_id=$_POST['usu_id'];
	$sql="delete from usuarios where usu_id=".$usu_id;
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
		if($chequeo>0){
		?>
		<div id="sinresultado">
			Se ha eliminado con exito
		</div>
		<?php header("refresh:3; url=panel-usuarios.php");
		}
		?>
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>