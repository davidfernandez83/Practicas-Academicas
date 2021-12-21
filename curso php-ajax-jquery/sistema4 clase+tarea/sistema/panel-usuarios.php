<?php
	$titulo = "Panel de control - Usuarios";
	require "conexion.php";
	$sql="select usu_id, usu_login, usu_nombre, usu_email from usuarios";
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
	$cantidad=mysqli_num_rows($resultado);
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
		<table id="paneles">
			<tr>
				<th>ID</th>
				<th>Login</th>
				<th>Nombre</th>
				<th>Email</th>
				<th colspan="2"><a href="form-agregar-usuario.php">
					<img src="imgs/agregar2.png" title="Agregar usuario"></a></th>
			</tr>
			<?php //muestreo
			while($fila=mysqli_fetch_assoc($resultado)){
			?>
			<tr>
				<td class="lista"><?php echo $fila['usu_id'] ?></td>
				<td class="lista"><?php echo $fila['usu_login'] ?></td>
				<td class="lista"><?php echo $fila['usu_nombre'] ?></td>
				<td class="lista"><?php echo $fila['usu_email'] ?></td>
				<td class="editar"><img src="imgs/editar3.png" title="Editar usuario"></td>
				<td class="editar"><a href="form-borrar-usuario.php?usu_id=<?php echo $fila['usu_id'] ?>">
					<img src="imgs/eliminar.png" title="Eliminar usuario"></a>
				</td>
			</tr>
			<?php //fin muestreo
			}
			?>
			<tr>
				<td colspan="6" class="pie">Se han encontrado <?php echo $cantidad; ?> registros</td>
			</tr>
		</table>
		
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>