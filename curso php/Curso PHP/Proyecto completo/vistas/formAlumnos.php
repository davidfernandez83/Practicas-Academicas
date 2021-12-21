<?php
require_once("../clases/Conexion.php");

$Conexion=new Conexion();
$datos=$Conexion->query("SELECT * FROM cursophp_alumnos WHERE activo=1 ORDER BY nombre");

?>

<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div align="center">
	<h1>Alumnos</h1>
	<br>
	<table class="sample">
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>Edad</th>
			<th>ID TP</th>
		</tr>
			<?php
			foreach($datos as $alumno)
			{
				echo "<tr>";
				echo "<td>".$alumno["id"]."</td>";
				echo "<td>".$alumno["nombre"]."</td>";
				echo "<td>".$alumno["edad"]."</td>";
				echo "<td>".$alumno["id_trabajo_practico"]."</td>";
				echo "<td><a href='formModificacionAlumno.php?id=".$alumno["id"]."'>Editar</a></td>";
				echo "<td><a href='../servicios/servicioBajaAlumno.php?id=".$alumno["id"].
				 "' onclick='javascript:return confirm(\"¿Seguro desea eliminar el alumno ".
				 $alumno["nombre"]."?\")'>Eliminar</a></td>";
				echo "</tr>";
			}
			?>
	</table>
	<br>
	<a href="formAltaAlumno.php">Nuevo alumno</a>
</div>

</body>
</html>