<?php

$numero1 = -68;
$numero2 = -174;
$suma=($numero1+$numero2);
$resta=($numero1-$numero2);
$multiplicacion=($numero1*$numero2);
$division=($numero1/$numero2);

echo "Suma: ".$suma."<BR>";
echo "Resta: ".$resta."<BR>";
echo "Multiplicacion: ".$multiplicacion."<BR>";
echo "Division: ".$division."<BR>";

if($suma>$multiplicacion)
{
  echo"La suma es mayor que la multiplicacion";
}
if($multiplicacion>$suma)
{
  echo "La multiplicacion es mayor que la suma";
}

?>