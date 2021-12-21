<?php

require_once("../clases/Conexion.php");
require_once("../clases/Direccionador.php");
$Conexion = new Conexion();
$trabajos=$Conexion->query("select * from cursophp_alumnos");
$direccionador= new Direccionador();
$direccionador->direccionarA("")



?>