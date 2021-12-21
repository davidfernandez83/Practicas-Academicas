<?php
$cadena="Esta es una cadena de caracteres";
echo "Longitud de la cadena: ".longitud($cadena);

function longitud($cadena)
{

	for($i=0;;$i++)
	{
		$char=substr($cadena,$i,1);
		if(!$char)
		{
			return $i;
		}
	}
}

?>