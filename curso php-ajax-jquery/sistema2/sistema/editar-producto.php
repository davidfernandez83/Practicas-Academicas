<?php
	$titulo = "Panel de control - Editar producto";
	$id=$_GET['id'];
	require "conexion.php";
	$sql="select prd_id,prd_nombre,prd_descripcion,prd_precio,prd_foto1,prd_foto2 from productos where prd_id=".$id;
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
	//$cantidad=mysqli_num_rows($resultado);
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
		$fila=mysqli_fetch_assoc($resultado);
		?>
<form action="guardar-producto.php" method="post">
		<table id="paneles">
			<tr>
				<th colspan="2">Edicion de producto</th>
			</tr>
			<tr>
				<td>Nombre:</td>
				<td><textarea rows="1" name="nombre"><?php echo $fila['prd_nombre'] ?></textarea></td>
			</tr>
			<tr>
				<td>Descripcion:</td>
				<td><textarea rows="7" name="descripcion"><?php echo $fila['prd_descripcion'] ?></textarea></td>
			</tr>
			<tr>
				<td>Precio:</td>
				<td><textarea rows="1" name="precio"><?php echo $fila['prd_precio'] ?></textarea></td>
			</tr>
			<tr>
				<td>Foto 1:</td>
				<td><textarea rows="1" name="foto1"><?php echo $fila['prd_foto1'] ?></textarea></td>
			</tr>
			<tr>
				<td>Foto 2:</td>
				<td><textarea rows="1" name="foto2"><?php echo $fila['prd_foto2'] ?></textarea></td>
			</tr>
			<tr>
				<td colspan="2" class="centrar"><input type="hidden" name="id" value="<?php echo $fila['prd_id'] ?>">
					<input type="submit" value="Guardar cambios" ></td>
			</tr>
		</table>
</form>
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>