<?php


function buscarVentas($marca)
{
	switch ($marca)
	{
		case "ford":
			$ventas = array("enero"=>50,"febrero"=>40,"marzo"=>35);
			$promedio = $ventas["enero"]+$ventas["febrero"]+$ventas["marzo"]/count($ventas);
			$valor2=0;
			foreach($ventas as $valor)
			{
				if($valor>$valor2) $valor2=$valor;
			}
			$maximo=$valor2;
			$buscar = array($ventas,$promedio,$maximo);
			return $buscar;
			break;
		case "chevrolet":
			$ventas = array("enero"=>50,"febrero"=>40,"marzo"=>35);
			$promedio = $ventas["enero"]+$ventas["febrero"]+$ventas["marzo"]/count($ventas);
			$valor2=0;
			foreach($ventas as $valor)
			{
				if($valor>$valor2) $valor2=$valor;
			}
			$maximo=$valor2;
			$buscar = array($ventas,$promedio,$maximo);
			return $buscar;
			break;
	}
}

$ventas = buscarVentas("chevrolet");
var_dump($ventas);

$ventas_anuales=$ventas[0];

foreach($ventas_anuales as $mes=>$unidades)
{
	echo "Las ventas de: ".$mes." son: ".$unidades."<br>";
}
echo "El promedio de ventas es: ".$ventas[1]."<br>";
echo "El maximo de ventas es: ".$ventas[2]."<br>";

?>