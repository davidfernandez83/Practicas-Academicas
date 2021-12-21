<?php
if(ISSET($_POST["idPost"]))$id=$_POST["idPost"];
if(ISSET($_POST["tituloPost"]))$titulo=$_POST["tituloPost"];
if(ISSET($_POST["contenidoPost"]))$contenido=$_POST["contenidoPost"];
$preview=substr($contenido,0,500);

require_once("../clases/Conexion.php");
require_once("../clases/Direccionador.php");
$Conexion = new Conexion();
$Direccionador=new Direccionador();

$resultado=$Conexion->queryModificacion("UPDATE `posts` SET `titulo`='".$titulo."',
	`preview`='".$preview."',`contenido`='".$contenido."' WHERE `id`=".$id);
$Direccionador->direccionarA("../vistas/post.php?id=".$id)

?>