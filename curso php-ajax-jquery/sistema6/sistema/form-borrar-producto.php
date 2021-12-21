<?php
	$titulo = "Confirmacion de baja de un producto";
	$prd_id=$_GET['prd_id'];
	$sql="select prd_nombre, prd_descripcion, prd_precio, prd_foto1 from productos
		where prd_id=".$prd_id;
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
		<?php
		$fila=mysqli_fetch_assoc($resultado);
		?>
		<form action="borrar-producto.php" method="post" onsubmit="return bajaProducto()">
			<table class="paneles">
				<tr>
					<th colspan="2">Se eliminara el siguiente producto</th>
				</tr>
				<tr>
					<td class="lista">Nombre: </td>
					<td class="lista"><?php echo $fila['prd_nombre']?></td>
				</tr>
				<tr>
					<td class="lista">Descripcion: </td>
					<td class="lista"><?php echo $fila['prd_descripcion']?></td>
				</tr>
				<tr>
					<td class="lista">Precio: </td>
					<td class="lista"><?php echo $fila['prd_precio']?></td>
				</tr>
				<tr>
					<td class="lista">Miniatura: </td>
					<td class="lista"><img src="imagenes/<?php echo $fila['prd_foto1']?>"</td>
				</tr>
				<tr>
					<td class="centrar" colspan="2">
						<input type="hidden" id="prd_id" name="prd_id" value="<?php echo $prd_id ?>">
						<input type="submit" value="Confirmar baja">
					</td>
				</tr>
			</table>
		</form>
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
<script type="text/javascript" src="funciones.js"></script>

</body>
</html>