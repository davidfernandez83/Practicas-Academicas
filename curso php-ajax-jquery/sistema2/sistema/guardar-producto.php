<?php
	$titulo = "Panel de control - Guardar producto";
	$nombre=$_POST['nombre'];
	$descripcion=$_POST['descripcion'];
	$precio=$_POST['precio'];
	$id=$_POST['id'];
	$foto1=$_POST['foto1'];
	$foto2=$_POST['foto2'];
	if($foto1=="")$foto1="sin-foto.png";
	if($foto2=="")$foto2="noDisponible.jpeg";
	$sql="update productos set prd_nombre='".$nombre."', prd_descripcion='".$descripcion."', prd_precio=".$precio.", prd_foto1='".$foto1."', prd_foto2='".$foto2."'
		 where prd_id=".$id;
	require "conexion.php";
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
			Se ha editado correctamente: <?php echo $nombre; ?>
		</div>
		<?php
		} else{ ?>
		<div id="sinresultado">
			Se ha producido un error
		</div>
		<?php
		}
		?>
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>