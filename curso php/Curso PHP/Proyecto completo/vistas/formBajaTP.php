<?php 
require_once("../clases/Conexion.php");
$Conexion = new Conexion();
$datos = $Conexion->query("SELECT * FROM trabajo_practico");
?>
 
<html>
<body>
<h3>Formulario de baja de TP:</h3>

<form name="formularioBajaTP" method="POST" action="../servicios/ServicioBajaTP.php">
	<select name="trabajoPractico">
	<?php
	foreach($datos as $TP)
	{
		echo "<option value=".$TP["id"].">".$TP["nombre"]."</option>";
	}
	?>
	</select>	
	<input type="submit" value="Eliminar">
</form>

</body>
</html>