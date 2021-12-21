<?php
require_once("../clases/Conexion.php");
require_once("../clases/Direccionador.php");

$Conexion=new Conexion();
$Direccionador=new Direccionador();

$idTP=$_GET["id"];

$Conexion->query("UPDATE `trabajo_practico` SET `activo`=0 WHERE id=".$idTP);
$Direccionador->direccionarA("../vistas/formTrabajosPracticos.php");

?>