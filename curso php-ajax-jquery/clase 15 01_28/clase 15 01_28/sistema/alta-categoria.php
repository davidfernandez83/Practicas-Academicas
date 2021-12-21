<?php
	$titulo = "Alta de nueva categoria";
	require 'validar.php';
	$cat_nombre=$_POST['cat_nombre'];
	if($cat_nombre=="")$cat_nombre="Sin nombre";
	$sql="insert into categorias values(NULL,'".$cat_nombre."')";
	require 'conexion.php';
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
	$chequeo=mysqli_affected_rows($link);
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
		if($chequeo>0){ //header("refresh:3;url=panel-categorias.php");
		?>
		<div id="sinresultado">
			<img src="imgs/ok.png" alt="ok">Se ha agregado correctamente
		</div>
		<table class="paneles">
			<tr>
				<th colspan="2">Se ha agregado la siguiente categoria</th>
			</tr>
			<tr>
				<td class ="lista">Nombre: </td>
				<td class ="lista"><?php echo $cat_nombre ?></td>
			</tr>
		</table>
		<div  class="centrar">
			<br><a href="form-alta-categoria.php">--Agregar otra categoria</a>
			<br><a href="panel-categorias.php">--Volver al panel de categorias</a>
		</div>
		<?php }else{ ?>
		<div id="sinresultado">
			<img src="imgs/error.png" alt="error">No se ha agregado ningun dato
		</div>
		<?php } ?>
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>