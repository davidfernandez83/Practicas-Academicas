<?php

$Personas=Array($P1="Juan",$P2="Pedro",$P3="Rosita");
$Mascotas=Array($M1="Firulai",$M2="Pancho",$M3="Boby");
$dueños=Array($M1=>$P1, $M2=>$P2, $M3=>$P3);

foreach($dueños as $clave=>$valor)
{
  echo $clave." es la mascota de ".$valor."<BR>";
}

?>