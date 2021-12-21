<?php
require "conexion.php";
$sql="SELECT modelo, descripcion, precio, foto1, foto2 FROM autos";
$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));

?>

<html>
<head>
	<title>Autos</title>
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<link href="css/lightbox.css" rel="stylesheet" />
	<meta charset="utf-8">
</head>
<body>

<div id="header">
	<h1>Listado de autos</h1>
</div>

<?php
while($fila=mysqli_fetch_assoc($resultado)){
?>
<div class="listado">
<table>
<tr>
	<td>
		<a href="imagenes/<?php echo $fila['foto2'] ?>" rel="lightbox" title="<?php echo $fila['modelo'] ?>">
			<img src="imagenes/<?php echo $fila['foto1'] ?>" alt="foto auto">
		</a>
	</td>
	<td><?php echo $fila['descripcion'] ?></td>
</tr>
<tr>
	<td><?php echo $fila['modelo'] ?></td>
	<td>Precio: <?php if($fila['precio']==0){ echo "Consultar"; } else{echo "€".$fila['precio']; } ?></td>
</tr>
</table>
</div><br>
<?php } ?>

<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/lightbox.js"></script>

</body>
</html>