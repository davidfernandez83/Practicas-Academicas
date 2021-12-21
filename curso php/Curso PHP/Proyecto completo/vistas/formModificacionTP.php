<?php 
require_once("../clases/Conexion.php");

$idTP=$_GET["id"];

$Conexion = new Conexion();
$datos = $Conexion->query("SELECT * FROM trabajo_practico WHERE id=".$idTP);

?>
 
 <html>
 
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

 <body>
 
<div align="center">
	<h1>Formulario de modificacion de TP</h1>

	<form name="formModificacionTP" method="POST" action="../servicios/servicioModificarTP.php">
		<input type="hidden" name="idTP" value="<?php echo $datos[0]["id"];?>">
		<p>NOMBRE DEL TP: <input type="text" name="nombreTP" required="required" value="<?php echo $datos[0]["nombre"];?>"></p>
		<p>NOTA: <input type="text" name="notaTP" value="<?php echo $datos[0]["nota"];?>"></p>
		<p>COMENTARIOS:<br>
		<textarea name="comentarioTP" cols=35 rows=5><?php echo $datos[0]["comentario"];?></textarea></p>
		<input type="submit" value="Modificar">
	</form>
</div>

 </body>
 </html>