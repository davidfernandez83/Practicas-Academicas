<?php
require_once("../clases/Conexion.php");

$Conexion = new Conexion();

$consulta=$Conexion->query("select * from cursophp_alumnos");

var_dump($consulta[0]);

?>