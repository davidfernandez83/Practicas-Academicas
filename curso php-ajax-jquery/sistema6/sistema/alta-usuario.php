<?php
	$titulo = "Alta de nuevo usuario";
	$usu_login=$_POST['usu_login'];
	$usu_clave=$_POST['usu_clave'];
	$usu_nombre=$_POST['usu_nombre'];
	$usu_email=$_POST['usu_email'];
	$sql="insert into usuarios 
		values(NULL,'".$usu_login."','".$usu_clave."','".$usu_nombre."','".$usu_email."')";
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
		if($chequeo>0){ //header("refresh:3;url=panel-usuarios.php");
		?>
			<div id="sinresultado">
				<img src="imgs/ok.png" alt="ok">Se ha agregado correctamente
			</div>
			<table class="paneles">
				<tr>
					<th colspan="2">Se ha agregado el siguiente usuario</th>
				</tr>
				<tr>
					<td class ="lista">Login: </td>
					<td class ="lista"><?php echo $usu_login ?></td>
				</tr>
				<tr>
					<td class ="lista">Nombre: </td>
					<td class ="lista"><?php echo $usu_nombre ?></td>
				</tr>
				<tr>
					<td class ="lista">Email: </td>
					<td class ="lista"><?php echo $usu_email ?></td>
				</tr>
			</table>
			<div  class="centrar">
				<br><a href="form-alta-usuario.php">--Agregar otro usuario</a>
				<br><a href="panel-usuarios.php">--Volver al panel de usuarios</a>
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