<?php
	$titulo = "Panel de control - Productos";
	require "conexion.php";
	$sql="select prd_id,prd_nombre,prd_descripcion,prd_precio,prd_foto1 from productos";
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
		<table id="panel">
			<tr>
				<th>Nombre</th>
				<th>Descripcion</th>
				<th>Precio</th>
				<th>Imagen</th>
				<th colspan="2"><img src="imgs/agregar2.png" title="Agregar producto"></th>
			</tr>
			<?php //inicio de muestreo
			while($fila=mysqli_fetch_assoc($resultado)){
			?>
			<tr>
				<td class="lista"><?php echo $fila['prd_nombre']; ?></td>
				<td class="lista"><?php echo $fila['prd_descripcion']; ?></td>
				<td class="lista"><?php echo $fila['prd_precio']; ?></td>
				<td class="lista"><img src="imagenes/<?php echo $fila['prd_foto1']; ?>"</td>
				<td class="editar"><img src="imgs/editar3.png" title="Editar producto"></td>
				<td class="editar"><a href="form-borrar-producto.php?prd_id=<?php echo $fila['prd_id']?>">
					<img src="imgs/eliminar.png" title="Eliminar producto"></a></td>
			</tr>
			<?php //fin de muestreo
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