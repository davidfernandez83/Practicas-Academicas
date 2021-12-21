<?php

function potencia($a,$b)
{
	if($b==0) return 1;
	if($b==1) return $a;
	$resultado=$a;
	for($i=2;$i<=$b;$i++)
	{
		$resultado=$resultado*$a;
	}
	return $resultado;
}

echo potencia(2,2);

?>