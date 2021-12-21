<?php

require_once("../clases/Conexion.php");
$Conexion=new Conexion();
$TP=$_POST["trabajoPractico"];

$Conexion->query("UPDATE `trabajo_practico` SET `activo`=0 WHERE id=".$TP);
var_dump($Conexion);

?>