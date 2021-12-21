<html>
<body>

<head>
  <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<?php
$trabajosP=$_POST["trabajosPracticos"];
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
			</tr>
			<?php
			foreach($trabajosP as $TP)
			{
				echo
			}
			?>
		
		</table>
	</form>
</div>



</body>
</html>