<?php
$alumno=$_POST["nombreAlumno"];
$edad=$_POST["edadAlumno"];
$trabajoPractico=$_POST["tpAlumno"];

require_once("../clases/Conexion.php");
$conexion = new Conexion();
$datos = $conexion->query("INSERT INTO `cursophp_alumnos`(`nombre`, `edad`, `id_trabajo_practico`) VALUES ('".$alumno."',".$edad.",".$trabajoPractico.")");
var_dump($datos);
echo "Alumno: ".$alumno."<br>";
echo "Edad: ".$edad."<br>";
echo "Trabajo practico: ".$trabajoPractico."<br>";

?>