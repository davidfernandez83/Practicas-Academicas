<?php
	$titulo = "Formulario de modificacion de usuario";
	require 'validar.php';
	require 'conexion.php';
	$usu_id=$_GET['usu_id']; //id

	$sql="SELECT usu_login,usu_nombre,usu_email FROM usuarios where usu_id=".$usu_id;
	$resultado= mysqli_query($link,$sql) OR die (mysqli_error($link));//categorias
	$fila=mysqli_fetch_assoc($resultado);//campos de producto
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
		<form action="editar-usuario.php" method="POST" enctype="multipart/form-data"> 
			<table id ="paneles">
				<tr>
					<td class="editar">Login: </td>
					<td class="editar"><input type="text" name="usu_login" id="usu_login" value="<?php echo $fila['usu_login'] ?>"></td>
				</tr>
				<tr>
					<td class="editar">Nombre: </td>
					<td class="editar"><input type="text" name="usu_nombre" id="usu_nombre" value="<?php echo $fila['usu_nombre'] ?>"></td>
				</tr>
				<tr>
					<td class="editar">Email: </td>
					<td class="editar"><input type="text" name="usu_email" id="usu_email" value="<?php echo $fila['usu_email'] ?>"></td>
				</tr>
				<tr>
					<td colspan="2" class="centrar">
						<input type="hidden" name="usu_id" value="<?php echo $usu_id ?>">
						<input type="submit" value="Modificar usuario">
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