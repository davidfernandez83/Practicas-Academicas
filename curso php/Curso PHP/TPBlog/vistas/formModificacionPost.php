<?php
require_once("../clases/Conexion.php");
$Conexion = new Conexion();
if(ISSET($_GET["id"]))$idPost=$_GET["id"];
$datos=$Conexion->query("SELECT * FROM posts WHERE id=".$idPost);

?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
</head>
<body>

<center><h1>Modificar post</h1></center>
<form name="formPost" method="POST" action="../servicios/servicioModificacionPost.php">
	<p><label for="tituloPost">Titulo: </label><input type="text" name="tituloPost" id="tituloPost" size="60"
		value="<?php echo $datos[0]["titulo"]?>"/>
	<p><label for="contenidoPost">Contenido: </label><br />
		<textarea name="contenidoPost" id="contenidoPost" cols=100 rows=50>
			<?php echo $datos[0]["contenido"]?></textarea>
	<input type="hidden" name="idPost" value="<?php echo $datos[0]["id"]; ?>" />
	<p><input type="submit" value="Guardar">
</form>

</body>
</html>