<?php
	$titulo = "Panel de control - Agregar usuario";
	$login=$_POST['login'];
	$clave=$_POST['clave'];
	$nombre=$_POST['nombre'];
	$email=$_POST['email'];
	if($nombre=="")$nombre="Sin nombre";
	$sql="insert into usuarios values(NULL,'".$login."','".$clave."','".$nombre."','".$email."')";
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
		if($chequeo>0){ ?>
		<div id="sinresultado">
			Se ha agregado el usuario con exito
		</div>
		<?php header("refresh:3;url=panel-usuarios.php");
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