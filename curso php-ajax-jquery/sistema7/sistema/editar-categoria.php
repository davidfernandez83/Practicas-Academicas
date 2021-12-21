<?php
	$titulo = "Modificacion de categoria";
	require 'validar.php';

	//asignaciones
	$cat_id=$_POST['cat_id'];
	$cat_nombre=$_POST['cat_nombre'];

	//rutina datos
	$sql="update categorias set cat_nombre='".$cat_nombre."'
		where cat_id=".$cat_id;
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
		if($chequeo>0){ //header("refresh:3;url=panel-categorias.php");
		?>
			<div id="sinresultado">
				<img src="imgs/ok.png" alt="ok">Se ha modificado correctamente
			</div>
			<table class="paneles">
				<tr>
					<th colspan="2">Se ha modificado la siguiente categoria</th>
				</tr>
				<tr>
					<td class ="lista">Nombre: </td>
					<td class ="lista"><?php echo $cat_nombre ?></td>
				</tr>
			</table>
			<div  class="centrar">
				<br><a href="form-editar-categoria.php?cat_id=<?php echo $cat_id ?>">
					--Modificar nuevamente</a>
				<br><a href="panel-categorias.php">--Volver al panel de categorias</a>
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