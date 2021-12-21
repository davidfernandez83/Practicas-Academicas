<?php 
require_once("../clases/Conexion.php");
$Conexion = new Conexion();
$datos = $Conexion->query("SELECT * FROM trabajo_practico WHERE activo=1");
//var_dump($datos);die;
?>

<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div align="center">

	<h1>Alta alumnos</h1>
	<form name="formAlumnos" method="POST" action="../servicios/servicioAltaAlumno.php">
		<p>Nombre: <input type="text" name="nombreAlumno"/></p>
		<p>Edad: <input type="text" name="edadAlumno" cols=3/></p>
		<p>Trabajo practico:
		<select name="tpAlumno">
			<?php
			foreach($datos as $TP)
			{
				echo "<option value=".$TP["id"].">".$TP["nombre"]."</option>";
			}
			?>
		</select><br>
		<!--<select name="tpAlumno">
			<option value=1>Blog</option>
			<option value=2>Musica</option>
		</select></p>-->
		<input type="submit" value="Guardar"/><br><br>
		<a href="formAlumnos.php">&lt Volver a Alumnos</a>
	</form>
</div>

</body>
</html>