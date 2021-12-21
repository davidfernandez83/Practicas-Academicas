<?php
require_once("../clases/Conexion.php");
require_once("../clases/Direccionador.php");

$idAlumno=$_GET["id"];
$Conexion=new Conexion();
$Conexion->queryModificacion("UPDATE `cursophp_alumnos` SET `activo`=0 WHERE id=".$idAlumno);
$Direccionador=new Direccionador();
$Direccionador->direccionarA("../vistas/formAlumnos.php");

?>