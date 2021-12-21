<?php

$Numeros = Array(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);

foreach($Numeros as $Numero)
{
	$modulo=$Numero%2;
	if ($modulo ==0)
	{
		echo "<BR>".$Numero." es par";
	}
	else
	{
		echo "<BR>".$Numero." es impar";
	}
	if ($Numero==10){echo " (mitad de ciclo)";}
	
}

echo "<BR><B>Rango 8-17: </B>";

foreach($Numeros as $Numero)
{
	if($Numero>7 && $Numero<18)
	{
		if($Numero==8)
		{
			echo "INICIO ";
		}
		
		echo ", ".$Numero;
		
		if($Numero==17)
		{
			echo " FINAL";
		}
	}
}



?>