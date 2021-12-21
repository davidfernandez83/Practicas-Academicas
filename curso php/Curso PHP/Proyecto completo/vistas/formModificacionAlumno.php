<?php
require_once("../clases/Conexion.php");
$Conexion = new Conexion();

$idAlumno=1;
if(ISSET($_GET["id"]))$idAlumno=$_GET["id"];
$alumnos = $Conexion->query("SELECT * FROM cursophp_alumnos WHERE id=".$idAlumno);
$trabajoPractico = $Conexion->query("SELECT * FROM trabajo_practico WHERE activo=1")

?>

<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div align="center">
	<h1>Modificacion alumnos</h1>
	<form name="formAlumnos" method="POST" action="../servicios/servicioModificarAlumno.php">
		<input type="hidden" name="idAlumno" value="<?php echo $alumnos[0]["id"]; ?>"/>
		<p>Nombre: <input type="text" name="nombreAlumno" value="<?php echo $alumnos[0]["nombre"]?>"/></p>
		<p>Edad: <input type="text" name="edadAlumno" maxlength="3" value="<?php echo $alumnos[0]["edad"]?>"/></p>
		<p>Trabajo practico:
		<select name="tpAlumno">
			<?php
			foreach($trabajoPractico as $TP)
			{
				echo "<option value='".$TP["id"]."'";
				if($TP["id"]==$alumnos[0]["id_trabajo_practico"])echo " selected='selected'";
				echo ">".$TP["nombre"]."</option>";
			}
			?>
		</select><br><br>
		<input type="submit" value="Guardar" /><br><br>
		<a href="formAlumnos.php">&lt Volver a Alumnos</a>
	</form>
</div>


</body>
</html>