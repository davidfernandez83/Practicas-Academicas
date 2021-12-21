<html>

<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<?php 
require_once("../clases/Conexion.php");
$Conexion = new Conexion();
$trabajosPracticos = $Conexion->query("SELECT * FROM trabajo_practico WHERE activo=1");
//var_dump($trabajosPracticos);die;
?>

<div align="center">
	<h1>Trabajos Practicos</h1><br>

	<table class="sample">
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>Nota</th>
			<th>Comentario</th>
		</tr>
		<?php
		foreach($trabajosPracticos as $TP)
		{
			echo "<tr>";
			echo "<td>".$TP["id"]."</td>";
			echo "<td>".$TP["nombre"]."</td>";
			echo "<td>".$TP["nota"]."</td>";
			echo "<td>".$TP["comentario"]."</td>";
			echo "<td><a href='formModificacionTP.php?id=".$TP["id"]."'>Editar</a></td>";
			echo "<td><a href='../servicios/servicioBajaTP.php?id=".$TP["id"].
			 "'onclick='javascript:return confirm(\"¿Seguro desea eliminar el TP ".
			 $TP["nombre"]."?\")' >Eliminar</a></td>";
			echo "</tr>";
		}
		?>
	
	</table>
	<br>
	<a href="formAltaTP.php">Nuevo TP</a>
</div>



</body>
</html>