<?php
	$titulo = "Modificacion de usuario";

	//asignaciones
	$usu_id=$_POST['usu_id'];
	$usu_login=$_POST['usu_login'];
	$usu_nombre=$_POST['usu_nombre'];
	$usu_email=$_POST['usu_email'];

	//rutina datos
	$sql="update usuarios set usu_login='".$usu_login."',usu_nombre='".$usu_nombre."',usu_email='".$usu_email."' 
		where usu_id=".$usu_id;
	require 'conexion.php';
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
	$chequeo=mysqli_affected_rows($link);
	//var_dump($chequeo);



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
		if($chequeo>0){ header("refresh:3;url=panel-usuarios.php");
		?>
		<div id="sinresultado">
			<img src="imgs/ok.png" alt="ok">Se ha modificado correctamente
		</div>
		<?php }else{ ?>
		<div id="sinresultado">
			<img src="imgs/error.png" alt="error">No se ha modificado ningun dato
		</div>
		<?php } ?>
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>