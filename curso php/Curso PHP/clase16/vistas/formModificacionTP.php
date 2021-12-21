 <?php 
	require_once("../clases/Conexion.php");
	$conexion = new Conexion();
	$datos = $conexion->query("SELECT * FROM trabajo_practico WHERE id=1");
 ?>
 
 <html>
	 <body>
		<h3>Formulario de baja de TP:</h3>
		<form name="formulario_modificacion_tp" method="POST" action="../servicios/servicioModificarTP.php">
			<input type="hidden" name="id_tp" value="<?php echo $datos[0]["id"];?>">
			<p>NOMBRE DEL TP<input type="text" name="nombre_tp" required="required" value="<?php echo $datos[0]["nombre"];?>"></p>
			<p>NOTA<input type="text" name="nota_tp" value="<?php echo $datos[0]["nota"];?>"></p>
			<p>COMENTARIO</p>
			<textarea name="comentario_tp" cols="35" rows="10"><?php echo $datos[0]["comentario"];?></textarea></p>
			<input type="submit" value="MODIFICAR">
		</form>
	 </body>
 </html>