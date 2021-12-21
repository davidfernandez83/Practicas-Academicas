<?php
	$titulo = "Panel de control - Proyecto integrador";
	$usu_id=$_GET['usu_id'];
	$sql="select usu_login, usu_nombre, usu_email from usuarios where usu_id=".$usu_id;
	require 'conexion.php';
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
	$fila=mysqli_fetch_assoc($resultado);
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
		

		<form action="borrar-usuario.php" method="post" onsubmit=" return bajaUsuario()">
			<table id="paneles">
				<tr>
					<th colspan="2">Se eliminara el siguiente usuario</th>
				</tr>
				<tr>
					<td class="lista">Login: </td>
					<td class="lista"></td>
				</tr>
				<tr>
					<td class="lista">Nombre: </td>
					<td class="lista"></td>
				</tr>
				<tr>
					<td class="lista">Email: </td>
					<td class="lista"></td>
				</tr>
				<tr>
					<td colspan ="2" class="centrar"><input type="hidden" value="">
						<input type="submit" value="Confirmar baja">
					</td>
				</tr>
			</table>
		</form>
		
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>