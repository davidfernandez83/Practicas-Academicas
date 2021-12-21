<?php

$Alumno=Array
(
 "Nombre"=>"David",
 "Edad"=>29,
 "DNI"=>30111222,
 "Altura"=>1.80
);

$Alumno["Color de pelo"]="Negro";

foreach($Alumno as $clave=>$valor)
{
 echo $clave.": ".$valor."<BR>";
}


//var_dump($Alumno);

?>