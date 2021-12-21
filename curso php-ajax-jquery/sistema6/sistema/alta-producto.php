<?php
	$titulo = "Alta de nuevo producto";

	//rutina para subir imagenes
	$ruta = "imagenes/";
	
	if($_FILES['prd_foto1']['name']!=""){
		$prd_foto1 = $_FILES['prd_foto1']['name'];
		$prd_foto1TEMP=$_FILES['prd_foto1']['tmp_name'];
		move_uploaded_file($prd_foto1TEMP, $ruta.$prd_foto1);
	} else{
		$prd_foto1="sin-foto.png";
	}

	if($_FILES['prd_foto2']['name']!=""){
		$prd_foto2 = $_FILES['prd_foto2']['name'];
		$prd_foto2TEMP=$_FILES['prd_foto2']['tmp_name'];
		move_uploaded_file($prd_foto2TEMP, $ruta.$prd_foto2);
	} else{
		$prd_foto2="noDisponible.jpeg";
	}

	//rutina para insertar datos en tabla productos
	$prd_nombre=$_POST['prd_nombre'];
	$prd_descripcion=$_POST['prd_descripcion'];
	$prd_precio=$_POST['prd_precio'];
	$cat_id=$_POST['cat_id'];

	if($prd_nombre=="")$prd_nombre="Sin nombre";
	if($prd_descripcion=="")$prd_descripcion="Sin descripcion";
	if($prd_precio=="")$prd_precio=0;

	$prd_alta=date("Y-m-d");

	$sql="INSERT INTO productos
			values(
					NULL,
					'".$prd_nombre."',
					'".$prd_descripcion."',
					 ".$prd_precio.",
					 ".$cat_id.",
					'".$prd_alta."',
					'".$prd_foto1."',
					'".$prd_foto2."'
					)";

	require 'conexion.php';
	mysqli_query($link,$sql) OR die (mysqli_error($link));
	$chequeo=mysqli_affected_rows($link);
	//1 si funciono 
	//0 no hubo impacto 
	//-1 si hubo un error
	mysqli_close($link);


?>
<!--<pre>
	<?php 
//		print_r($prd_foto1)
	 ?>
</pre>
-->
<?php /*	lo de arriba muestra en pantalla el array.
			se peuden ver los errores en
			http://php.net/manual/es/features.file-upload.errors.php
Array
(
    [name] => nikon-d3100--mini.jpg
    [type] => image/jpeg
    [tmp_name] => C:\xampp\tmp\php8B05.tmp
    [error] => 0  
    [size] => 5006
)*/ ?>

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
				<th colspan="2">Se ha cargado el siguiente producto</th>
			</tr>
			<tr>
				<td class ="lista">Nombre: </td>
				<td class ="lista"><?php echo $prd_nombre ?></td>
			</tr>
			<tr>
				<td class ="lista">Descripción: </td>
				<td class ="lista"><?php echo $prd_descripcion ?></td>
			</tr>
			<tr>
				<td class ="lista">Precio: </td>
				<td class ="lista"><?php echo $prd_precio ?></td>
			</tr>
			<tr>
				<td class ="lista">Miniatura: </td>
				<td class ="lista"><img src="imagenes/<?php echo $prd_foto1 ?>" > </td>
			</tr>
		</table>
		<div  class="centrar">
			<br><a href="form-alta-producto.php">--Agregar otro producto</a>
			<br><a href="panel-productos.php">--Volver al panel de productos</a>
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

