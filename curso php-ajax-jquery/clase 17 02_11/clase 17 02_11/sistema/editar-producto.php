<?php
	$titulo = "Modificacion de producto";
	require 'validar.php';

	//asignaciones
	$prd_id=$_POST['prd_id'];
	$prd_nombre=$_POST['prd_nombre'];
	$prd_descripcion=$_POST['prd_descripcion'];
	$prd_precio=$_POST['prd_precio'];
	$cat_id=$_POST['cat_id'];
	$prd_alta=date("Y-m-d");
	$sqlFoto1=$sqlFoto2="";

	//Rutina para subir imagenes
	$ruta="imagenes/";
	if($_FILES['prd_foto1']['name'] != ""){
		$prd_foto1=$_FILES['prd_foto1']['name'];
		$prd_foto1_temp=$_FILES['prd_foto1']['tmp_name'];
		move_uploaded_file($prd_foto1_temp,$ruta.$prd_foto1);
		$sqlFoto1=",prd_foto1='".$prd_foto1."'";
	}

	if($_FILES['prd_foto2']['name'] != ""){
		$prd_foto2=$_FILES['prd_foto2']['name'];
		$prd_foto2_temp=$_FILES['prd_foto2']['tmp_name'];
		move_uploaded_file($prd_foto2_temp,$ruta.$prd_foto2);
		$sqlFoto2=",prd_foto2='".$prd_foto2."'";
	}
	//rutina para modificar datos en tabla productos
	require 'conexion.php';
	$sql="UPDATE productos SET
		prd_nombre='".$prd_nombre."',
		prd_descripcion='".$prd_descripcion."',
		prd_precio=".$prd_precio.",
		cat_id=".$cat_id;
	$sql.=$sqlFoto1;
	$sql.=$sqlFoto2;
	$sql.=" WHERE prd_id=".$prd_id;

	
	$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
	$chequeo=mysqli_affected_rows($link);
	//var_dump($chequeo);



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
		if($chequeo>0){ //header("refresh:3;url=panel-productos.php");
		?>
		<div id="sinresultado">
			<img src="imgs/ok.png" alt="ok">Se ha modificado correctamente
		</div>
			<table class="paneles">
			<tr>
				<th colspan="2">Se ha modificado el siguiente producto</th>
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
			</table>
			<div class="centrar">
				<br><a href="form-editar-producto.php?prd_id=<?php echo $prd_id; ?>">--Modificar nuevamente</a>
				<br><a href="panel-productos.php">--Volver al panel de productos</a>
			</div>
		<?php }else{ ?>
		<div id="sinresultado">
			<img src="imgs/error.png" alt="error">No se ha modificado ningun dato
		</div>
		<?php } ?>
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>