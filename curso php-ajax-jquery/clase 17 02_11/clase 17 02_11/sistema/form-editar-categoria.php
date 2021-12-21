<?php
	$titulo = "Formulario de modificacion de categoria";
	require 'validar.php';
	require 'conexion.php';
	$cat_id=$_GET['cat_id']; //id

	$sql="SELECT cat_nombre from categorias where cat_id=".$cat_id;
	$resultado= mysqli_query($link,$sql) OR die (mysqli_error($link));
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
		<form action="editar-categoria.php" method="POST" enctype="multipart/form-data"> 
			<table id ="paneles">
				<tr>
					<td class="editar">Nombre: </td>
					<td class="editar"><input type="text" name="cat_nombre" id="cat_nombre" value="<?php echo $fila['cat_nombre'] ?>"></td>
				</tr>
				<tr>
					<td colspan="2" class="centrar">
						<input type="hidden" name="cat_id" value="<?php echo $cat_id ?>">
						<input type="submit" value="Modificar categoria">
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