<?php
	$titulo = "Modificacion de producto";
	//Rutina para subir imagenes si fueron enviadas
	$ruta="imagenes/";

	if($_FILES['prd_foto1']['name'] != ""){
		$prd_foto1=$_FILES['prd_foto1']['name'];
		$prd_foto1_temp=$_FILES['prd_foto1']['tmp_name'];
		move_uploaded_file($prd_foto1_temp,$ruta.$prd_foto1);
	}




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
		
		
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>