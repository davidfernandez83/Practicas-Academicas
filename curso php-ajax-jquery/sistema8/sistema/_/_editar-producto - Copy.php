<?php
	$titulo = "Modificacion de producto";

	//asignaciones
	$prd_id=$_POST['prd_id'];
	$prd_nombre=$_POST['prd_nombre'];
	$prd_descripcion=$_POST['prd_descripcion'];
	$prd_precio=$_POST['prd_precio'];
	$cat_id=$_POST['cat_id'];
	$prd_alta=date("Y-m-d");
	$prd_foto1_old=$_POST['prd_foto1_old'];
	$prd_foto2_old=$_POST['prd_foto2_old'];

	//Rutina para subir imagenes
	$ruta="imagenes/";
	if($_FILES['prd_foto1']['name'] != ""){
		$prd_foto1=$_FILES['prd_foto1']['name'];
		$prd_foto1_temp=$_FILES['prd_foto1']['tmp_name'];
		move_uploaded_file($prd_foto1_temp,$ruta.$prd_foto1);
	} else{$prd_foto1=$prd_foto1_old;}

	if($_FILES['prd_foto2']['name'] != ""){
		$prd_foto2=$_FILES['prd_foto2']['name'];
		$prd_foto2_temp=$_FILES['prd_foto2']['tmp_name'];
		move_uploaded_file($prd_foto2_temp,$ruta.$prd_foto2);
	} else{$prd_foto2=$prd_foto2_old;}

	//rutina datos
	$sql="update productos set prd_nombre='".$prd_nombre."',prd_descripcion='".$prd_descripcion."',
		prd_precio=".$prd_precio.",cat_id=".$cat_id.",prd_alta='".$prd_alta."',prd_foto1='".$prd_foto1."',
		prd_foto2='".$prd_foto2."' where prd_id=".$prd_id;

	require 'conexion.php';
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
		if($chequeo>0){ header("refresh:3;url=panel-productos.php");
		?>
		<div id="sinresultado">
			Se ha modificado correctamente
		</div>
		<?php }else{ ?>
		<div id="sinresultado">
			No se ha modificado ningun dato
		</div>
		<?php } ?>
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>