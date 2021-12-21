<?php
require_once("../clases/Conexion.php");
require_once("../clases/Direccionador.php");

$idAlumno=$_POST["idAlumno"];
$alumno=$_POST["nombreAlumno"];
$edad=$_POST["edadAlumno"];
$trabajoPractico=$_POST["tpAlumno"];
//var_dump($trabajoPractico);die;

$conexion = new Conexion();
$datos = $conexion->query("UPDATE `cursophp_alumnos` SET `nombre`=`".$alumno."`,`edad`=".$edad.",`id_trabajo_practico`=".$trabajoPractico." WHERE id=".$idAlumno);
var_dump($datos);die;

$direccionador = new Direccionador();
$direccionador->direccionarA("http://localhost/vistas/formModificacionAlumno.php");

/*var_dump($datos);


echo "Alumno: ".$alumno."<br>";
echo "Edad: ".$edad."<br>";
echo "Trabajo practico: ".$trabajoPractico."<br>";
*/
?>