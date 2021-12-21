<?php
	$titulo = "Panel de control - Eliminar producto";
	$id=$_GET['id'];
	$sql="select prd_nombre from productos where prd_id=".$id;
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
		<form action="eliminar-producto.php" method="post">
			<input type="hidden" value="<?php echo $id; ?>" name="id">
			<table id="paneles">
				<tr>
					<th>Realmente desea eliminar?</th>
				</tr>
				<tr>
					<td>Producto: <?php echo $fila['prd_nombre']; ?></td>
				</tr>
				<tr>
					<td class="centrar"><input type="submit" value="Eliminar"></td>
				</tr>
			</table>
		</form>
		
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>