<?php

function convertirPalabra(&$texto)
{
	$texto=strtoupper(substr($texto,0,1)).strtolower(substr($texto,1));
	return $texto;
}


$texto="HOLa MUNDO";

echo convertirPalabra($texto);

?>