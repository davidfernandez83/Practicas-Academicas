<?php
require_once("../clases/Conexion.php");

$Conexion = new Conexion();

$consulta=$Conexion->Query("select * from user");

var_dump($consulta);




?>