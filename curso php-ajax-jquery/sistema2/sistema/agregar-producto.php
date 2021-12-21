<?php
	$titulo = "Panel de control - Agregar producto";
	$nombre=$_POST['nombre'];
	$descripcion=$_POST['descripcion'];
	$precio=$_POST['precio'];
	$categoria=$_POST['categoria'];
	$foto1=$_POST['foto1'];
	$foto2=$_POST['foto2'];
	if($nombre=="")$nombre="Sin nombre";
	if($descripcion=="")$descripcion="Sin descripcion";
	if($precio=="")$precio=0;
	if($foto1=="")$foto1="sin-foto.png";
	if($foto2=="")$foto2="noDisponible.jpeg";
	$sql="insert into productos values(NULL,'".$nombre."','".$descripcion."',".$precio.",".$categoria.",current_date(),'".$foto1."','".$foto2."')";
	require 'conexion.php';
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
	mysqli_close($link);
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
		if($resultado){ ?>
		<div id="sinresultado">
			Se ha agregado el producto con exito
		</div>
		<?php
		}else{ ?>
		<div id="sinresultado">
			Ha ocurrido un error
		</div><?php } ?>
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>