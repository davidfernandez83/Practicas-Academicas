<?php
	$titulo = "Buscador";
	require "conexion.php";
	$criterio=$_POST['criterio'];
	$categoria=$_POST['categoria'];
	$sqlCategoria="";
	$msj_categoria="";
	if($categoria>=0){
		$sqlCategoria=" AND cat_id='".$categoria."'";
		$msj_categoria=" en la categoria ".$categoria;
	}
	$sql="SELECT prd_nombre,prd_descripcion,prd_precio,prd_foto1
		FROM productos WHERE prd_nombre LIKE '%".$criterio."%'".$sqlCategoria;
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
	$cantidad=mysqli_num_rows($resultado);
	mysqli_close($link);
	session_start();

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
		if($cantidad==0){ ?>
			<div id="sinresultado">
				No se han encontrado resultados para: <?php echo $criterio,"<br>",$msj_categoria; ?>
			</div>
			
		<?php
		}
		else{ ?>
		<table id="panel">
			<tr>
				<th>Nombre</th>
				<th>Descripcion</th>
				<th>Precio</th>
				<th>Imagen</th>
			</tr>
			<?php //inicio de muestreo
			while($fila=mysqli_fetch_assoc($resultado)){
			?>
			<tr>
				<td class="lista"><?php echo $fila['prd_nombre']; ?></td>
				<td class="lista"><?php echo $fila['prd_descripcion']; ?></td>
				<td class="lista"><?php echo $fila['prd_precio']; ?></td>
				<td class="lista"><img src="imagenes/<?php echo $fila['prd_foto1']; ?>"</td>
			</tr>
			<?php //fin de muestreo
			}
			?>
			<tr>
				<td colspan="4" class="pie">Se han encontrado <?php echo $cantidad; ?> registros</td>
			</tr>
		</table>
		<?php } ?>
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>