<?php
	$titulo = "Panel de control - Categorias";
	include "conexion.php";
	$sql="select cat_id, cat_nombre from categorias";
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
				<th>Nombre</th>
				<th colspan="2"><a href="form-agregar-categoria.php">
					<img src="imgs/agregar2.png" title="Agregar categoria"></a></th>
			</tr>
			<?php //muestreo
			while($fila=mysqli_fetch_assoc($resultado)){
			?>
			<tr>
				<td class="lista"><?php echo $fila['cat_id'] ?></td>
				<td class="lista"><?php echo $fila['cat_nombre'] ?></td>
				<td class="editar"><img src="imgs/editar3.png" title="Editar categoria"></td>
				<td class="editar">
					<a href="form-borrar-categoria.php?cat_id=<?php echo $fila['cat_id'] ?>">
					<img src="imgs/eliminar.png" title="Eliminar categoria"></a>
				</td>
			</tr>
			<?php //fin muestreo
			}
			?>
			<tr>
				<td colspan="4" class="pie">Se han encontrado <?php echo $cantidad; ?> registros</td>
			</tr>
		</table>
		
		
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>