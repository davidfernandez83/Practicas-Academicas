<?php
if(ISSET($_POST["tituloPost"]))$titulo=$_POST["tituloPost"];
if(ISSET($_POST["contenidoPost"]))$contenido=$_POST["contenidoPost"];
//echo $contenido;die;

$preview=substr($contenido,0,500);

require_once("../clases/Conexion.php");
require_once("../clases/Direccionador.php");
$Conexion = new Conexion();
$Direccionador=new Direccionador();

$resultado=$Conexion->queryModificacion("INSERT INTO `posts`(`titulo`,`preview`,`contenido`)
	VALUES ('".$titulo."','".$preview."','".$contenido."')");
//var_dump($resultado);
$Direccionador->direccionarA("../index.php");

?>