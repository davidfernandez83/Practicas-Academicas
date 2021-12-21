<?php

$notas=Array
(
  $nota1=8,
  $nota2=9,
  $nota3=5,
  $nota4=7
);

$suma = 0;

foreach($notas as $valor)
{
  $suma += $valor;
}

$promedio=$suma/count($notas);

echo "Promedio: ".$promedio;

//var_dump($notas);

?>