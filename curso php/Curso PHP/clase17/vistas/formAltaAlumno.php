 <?php 
	require_once("../clases/Conexion.php");
	$conexion = new Conexion();
	$datos = $conexion->queryModificacion("SELECT * FROM trabajo_practico WHERE activo=1");
	//var_dump($datos);die;
 ?>

<html>
<body>

<center>

<h1>Alta alumnos</h1>

<form name="formAlumnos" method="POST" action="../servicios/servicioAltaAlumno.php">
	<p>Nombre: <input type="text" name="nombreAlumno"/></p>
	<p>Edad: <input type="text" name="edadAlumno" /></p>
	<p>Trabajo practico:
	<select name="tpAlumno" required="required">
		<?php
		foreach($datos as $TP)
		{
			echo "<option value=".$TP["id"].">".$TP["nombre"]."</option>";
		}
		?>
	</select>
	<!--<select name="tpAlumno" required="required">
		<option value=1>Blog</option>
		<option value=2>Musica</option>
	</select></p>-->
	<input type="submit" value="Enviar"/>
</form>
	


</body>
</html>