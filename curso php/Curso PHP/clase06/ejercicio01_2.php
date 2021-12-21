<?php

function buscar_ventas($marca)
{
	$unidades_ford=array(3,2,47,1000);
	$datos=array();
	
	switch($marca)
	{
		case "ford":
			$datos=$unidades_ford;
			break;
	}
	$promedio=calcular_prom_ventas($datos);
	$max_ventas=calcular_max_ventas($datos);
	$resultados_de_ventas=array();
	$resultados_de_ventas["unidades"]=$datos;
	$resultados_de_ventas["promedio"]=$promedio;
	$resultados_de_ventas["maximo"]=$max_ventas;
	return $resultados_de_ventas;
}

function calcular_prom_ventas($unidades)
{
	$acumulador=0;
	foreach($unidades as $venta)
	{
		$acumulador=$acumulador+$venta;
	}
	$resultado=$acumulador/sizeof($unidades);
	return $resultado;
}

function calcular_max_ventas($unidades)
{
	$maximo=$unidades[0];
	foreach($unidades as $venta)
	{
		if($venta>$maximo){$maximo=$venta;}
	}
	return $maximo;
}

$informacion_de_ventas=array();
$informacion_de_ventas=buscar_ventas("ford");
$ventas_anuales=$informacion_de_ventas[0];

foreach($ventas as $mes=>$unidades)
{
	echo "Las ventas de ".$mes." son: ".$unidades."<br>";
}
echo "El promedio de ventas es: ".$informacion_de_ventas[1];
echo "El maximo de ventas es: ".$informacion_de_ventas[2];



?>