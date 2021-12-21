<?php

$numeros=array();

for ($i=0;$i<40;$i++)
{
	$numeros[$i]=$i+1;
}
print_r ($numeros."<br>");

foreach($numeros as $numero)
{
	$esPrimo=true;
	for($i=2;$i<$numero;$i++)
	{
		if(($numero%$i)==0)
		{
			$esPrimo=false;
		}
		if($esPrimo)
		{
			echo $numero." es primo <br>";
		}
	}
}
	
	
?>