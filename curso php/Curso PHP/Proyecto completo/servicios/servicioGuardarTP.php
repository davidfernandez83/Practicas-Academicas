<?php
require_once("../clases/Conexion.php");
require_once("../clases/Direccionador.php");

$nombreTP=$_POST["nombreTP"];
$notaTP=$_POST["notaTP"];
$comentariosTP=$_POST["comentariosTP"];


$Conexion=new Conexion();
$Direccionador=new Direccionador();

$datos=$Conexion->queryModificacion("INSERT INTO `trabajo_practico`(`nombre`, `nota`, `comentario`) VALUES ('".$nombreTP."','".$notaTP."','".$comentariosTP."')");
//var_dump($datos);die;
$Direccionador->direccionarA("../vistas/formTrabajosPracticos.php");
?>