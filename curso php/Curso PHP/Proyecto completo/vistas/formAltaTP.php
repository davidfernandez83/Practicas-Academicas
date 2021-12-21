<html>

<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<div align="center">
	<h1>Formulario de ingreso de TP</h1>
	<br>
	<form name="formTP" method="post" action="../servicios/servicioGuardarTP.php">
		<p>NOMBRE DEL TP: <input type="text" name="nombreTP"></p>
		<p>NOTA: <input type="text" name="notaTP"></p>
		<p>COMENTARIOS:<br>
		<textarea name="comentariosTP" cols=35 rows=5></textarea></p>
		<p><input type="submit" value="Guardar"></p>
	</form>
	<a href="formTrabajosPracticos.php">&lt Volver a Trabajos Practicos</a>
</div>
</body>

</html>