<html>
<body>

<head>
  <link rel="stylesheet" type="text/css" href="styles.css">
</head>

 <?php 
	require_once("../clases/Conexion.php");
	$conexion = new Conexion();
	$trabajosPracticos = $conexion->query("SELECT * FROM trabajo_practico WHERE id=1");
 ?>

<div align="center">
	<h1>Trabajos Practicos</h1><br>

	<form name="formTps" method="post" action="../servicios/servicioGuardarTp.php">
		<table class="sample">
			<tr>
				<th>ID</th>
				<th>Nombre</th>
				<th>Nota</th>
				<th>Comentario</th>
				<th>Editar</th>
			</tr>
			<?php
			foreach($trabajosPracticos as $TP)
			{
				echo "<td>".$TP["id"]."<td>";
				echo "<td>".$TP["nombre"]."<td>";
				echo "<td>".$TP["nota"]."<td>";
				echo "<td>".$TP["comentario"]."<td>";
				echo "<td><a href='formModificacionTP.php'>Editar</a><td>";
			}
			?>
		
		</table>
	</form>
</div>



</body>
</html>