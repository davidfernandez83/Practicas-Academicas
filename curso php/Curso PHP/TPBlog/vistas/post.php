<html>

<head>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
</head>

<body>
<?php
if(ISSET($_GET["id"]))$idPost=$_GET["id"];

require_once("../clases/Conexion.php");
$Conexion = new Conexion();
$datos=$Conexion->query("SELECT * FROM posts WHERE id=".$idPost);
$comentarios=$Conexion->query("SELECT * FROM comentarios WHERE id_post=".$idPost);
//var_dump($datos);
?>
<div id="superior">
	<a href="formModificacionPost.php?id=<?php echo $idPost ?>">Modificar post</a> | 
	<a href="../index.php">Home</a>
</div>
<?php
echo "<center><h2>".$datos[0]["titulo"]."</h2></center><br />";
echo "<p>".$datos[0]["contenido"]."</p>";
echo "<hr><br />";

if(count($comentarios)>0)
{
	foreach($comentarios as $comentario)
	{
		if($comentario["web"]=="")
		{
			echo "<b>".$comentario["nombre"]." | ";
		}
		else
		{
			echo "<b> <a href='".$comentario["web"]."'>".$comentario["nombre"]."</a> | ";
		}
		echo $comentario["fecha"]."</b> <br />";
		echo $comentario["contenido"];
		echo "<hr>";
	}
}
else
{
	echo "<b>Nadie a comentado el post, se el primero! </b><br />";
}

?>
<form name="formComentarios" method="POST" action="../servicios/servicioComentar.php">
	<label for="nombreComentario">Nombre: </label><input type="text" name="nombreComentario" id="nombreComentario" size="30" /><br />
	<label for="webComentario">Pagina web: </label><input type="text" name="webComentario" id="webComentario" size="30" /><br />
	<label for="contenidoComentario">Comentario: </label><br /><textarea name="contenidoComentario" id="contenidoComentario" cols=50 rows=10></textarea><br />
	<input type="hidden" name="idPost" value=<?php echo $datos[0]["id"]; ?> />
	<input type="submit" value="Enviar comentario" />
</form>

</body>
</html>



