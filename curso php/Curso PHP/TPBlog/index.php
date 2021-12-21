<html>

<head>
<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
</head>

<body>
<div id="superior">
	<a href="vistas/formLogin.php">LogIn</a> | 
	<a href="vistas/formAltaPost.php">Nuevo post</a>
</div>

<center><h1>Trabajo practico BLOG</h1></center><br />

<?php
require_once("clases/Conexion.php");
$Conexion = new Conexion();
$datos=$Conexion->query("SELECT id,titulo,preview FROM posts");

foreach($datos as $post)
{
	echo "<h2><a href='vistas/post.php?id=".$post["id"]."'>".$post["titulo"]."</a></h2><br />";
	echo "<p>".$post["preview"]."...</p>";
	echo "<a href='vistas/post.php?id=".$post["id"]."'>"."Leer mas...</a>";
	echo "<hr><br /><br />";
}

?>

</body>

</html>