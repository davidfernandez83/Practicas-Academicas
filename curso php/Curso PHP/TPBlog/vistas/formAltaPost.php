<html>
<head>
<link rel="stylesheet" type="text/css" href="../estilos/estilos.css">
</head>
<body>

<center><h1>Nuevo post</h1></center>
<form name="formPost" method="POST" action="../servicios/servicioAltaPost.php">
	<p><label for="tituloPost">Titulo: </label><input type="text" name="tituloPost" id="tituloPost" size="60" />
	<p><label for="contenidoPost">Contenido: </label><br />
		<textarea name="contenidoPost" id="contenidoPost" cols=100 rows=50></textarea>
	<p><input type="submit" value="Enviar">
</form>

</body>
</html>