<?php

require_once("../clases/Conexion.php");
$conexion = new Conexion();
$alumnos = $conexion->queryModificacion("SELECT * FROM cursophp_alumnos WHERE id=7");
$trabajoPractico = $conexion->queryModificacion("SELECT * FROM trabajo_practico WHERE activo=1")

?>

<html>
<body>

<center>

<h1>Alta alumnos</h1>

<form name="formAlumnos" method="POST" action="../servicios/servicioModificarAlumno.php">
	<input type="hidden" name="idAlumno" value=<?php echo $trabajoPractico[0]["id"]; ?>/>
	<p>Nombre: <input type="text" name="nombreAlumno" value="<?php echo $alumnos[0]["nombre"]?>"/></p>
	<p>Edad: <input type="text" name="edadAlumno" value="<?php echo $alumnos[0]["edad"]?>"/></p>
	<p>Trabajo practico:
	<select name="tpAlumno" required="required">
		<?php
		foreach($trabajoPractico as $TP)
		{
			echo "<option value=".$TP["id"];
			if($TP["id"]==$alumnos[0]["id_trabajo_practico"])echo " selected=selected";
			echo ">".$TP["nombre"]."</option>";
		}
		?>
	</select>
	<input type="submit" value="Enviar"/>
</form>
	


</body>
</html>