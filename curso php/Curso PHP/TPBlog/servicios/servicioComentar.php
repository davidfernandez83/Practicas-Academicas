<?php
if(ISSET($_POST["nombreComentario"]))$nombre=$_POST["nombreComentario"];
if(ISSET($_POST["webComentario"]))$web=$_POST["webComentario"];
if(ISSET($_POST["contenidoComentario"]))$contenido=$_POST["contenidoComentario"];
if(ISSET($_POST["idPost"]))$idPost=$_POST["idPost"];
//echo $contenido;die;

require_once("../clases/Conexion.php");
require_once("../clases/Direccionador.php");
$Conexion = new Conexion();
$Direccionador=new Direccionador();

if(substr($web,0,4)!="http")
{
	$web="http://".$web;
}

$resultado=$Conexion->queryModificacion("INSERT INTO `comentarios`(`nombre`, `web`, `contenido`, `id_post`)
	VALUES ('".$nombre."','".$web."','".$contenido."',".$idPost.")");
//var_dump($resultado);
$Direccionador->direccionarA("../vistas/post.php?id=".$idPost)

?>