<?

//$numeros=array(1...40);

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
			echo $nnumero." es primo";
		}
	}
}
	
	
?>