<?php
	$titulo = "Confirmar baja de categoria";
	require 'validar.php';
	$cat_id=$_GET['cat_id'];
	$sql="select cat_nombre from categorias where cat_id=".$cat_id;
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
		

		<form action="borrar-categoria.php" method="post" onsubmit=" return bajaCategoria()">
			<table id="paneles">
				<tr>
					<th colspan="2">Se eliminara la siguiente categoria</th>
				</tr>
				<tr>
					<td class="lista">Nombre: </td>
					<td class="lista"><?php echo $fila['cat_nombre'] ?></td>
				</tr>
				<tr>
					<td colspan ="2" class="centrar">
						<input type="hidden" name="cat_id" value="<?php echo $cat_id ?>">
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