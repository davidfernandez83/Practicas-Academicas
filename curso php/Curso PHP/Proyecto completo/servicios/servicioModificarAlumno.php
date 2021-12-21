<?php
require_once("../clases/Conexion.php");
require_once("../clases/Direccionador.php");

$id=$_POST["idAlumno"];
$alumno=$_POST["nombreAlumno"];
$edad=$_POST["edadAlumno"];
$idTP=$_POST["tpAlumno"];
//var_dump($edad);die;

$Conexion = new Conexion();
$datos = $Conexion->queryModificacion("UPDATE `cursophp_alumnos` SET `nombre`='".$alumno."',
 `edad`=".$edad.", `id_trabajo_practico`=".$idTP." WHERE `id`=".$id);
//var_dump($datos);die;

$Direccionador = new Direccionador();
$Direccionador->direccionarA("../vistas/formAlumnos.php");


?>