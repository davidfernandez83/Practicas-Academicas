<?php

$usuario=$_POST["usuario"];
$pelicula=$_POST["pelicula"];
$fecha=date("d");
$fechaDevolucion=mktime(0,0,0,6,$fecha+3,2012);

//echo "fecha ".$fecha."<br>";

echo $usuario." alquilo la pelicula ".$pelicula."<br>";
echo "Fecha de devolucion: ".date("d/m/y",$fechaDevolucion);


?>