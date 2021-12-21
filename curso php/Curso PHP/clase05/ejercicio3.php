<?php

function convertirLetra(&$texto)
{
	$texto=strtoupper(substr($texto,0,1)).substr($texto,1);
	return $texto;
}


$texto="hola mundo";

echo convertirLetra($texto);

?>