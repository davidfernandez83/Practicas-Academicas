<?php

$Arreglo = array("color1" => "azul", "color2" => "rojo", "color3" => "verde", "color4" => "negro", "color5" => "blanco");

unset($Arreglo["color1"]);
$Arreglo["color6"]="Amarillo";
echo "Color 4: ".$Arreglo["color4"]."<BR>";

var_dump($Arreglo);


?>