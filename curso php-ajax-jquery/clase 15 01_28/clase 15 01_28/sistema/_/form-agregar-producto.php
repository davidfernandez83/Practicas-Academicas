<?php
	$titulo = "Panel de control - Agregar producto";
	$sql="select cat_id, cat_nombre from categorias";
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

		<form action="agregar-producto.php" method="post">
			<table class="paneles">
				<tr>
					<th colspan="2">Agregar producto</th>
				</tr>
				<tr>
					<td>Nombre:</td>
					<td><textarea name="nombre"></textarea></td>
				</tr>
				<tr>
					<td>Descripcion: </td>
					<td><textarea name="descripcion"></textarea></td>
				</tr>
				<tr>
					<td>Precio: </td>
					<td><textarea name="precio"></textarea></td>
				</tr>
				<tr>
					<td>Categoria: </td>
					<td>
					<select name="categoria">
						<?php
						while($fila=mysqli_fetch_assoc($resultado)){
						?>
						<option value="<?php echo $fila['cat_id'] ?>"><?php echo $fila['cat_nombre'] ?></option>
						<?php } ?>
					</select>
					</td>
				</tr>
				<tr>
					<td>Foto 1: </td>
					<td><textarea name="foto1"></textarea></td>
				</tr>
				<tr>
					<td>Foto 2: </td>
					<td><textarea name="foto2"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" class="centrar"><input type="submit" value="Agregar"></td>
				</tr>
			</table>
		</form>
		
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>