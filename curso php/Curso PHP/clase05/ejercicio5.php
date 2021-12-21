<?php
$char="A";
echo verificarCaracter($char);

function verificarCaracter($char)
{
	$numero = intval($char);
	return (($numero>=0)&&($numero<=9));
}




?>