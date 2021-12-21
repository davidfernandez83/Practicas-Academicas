<?PHP

date_default_timezone_set('America/Buenos_Aires');

$fecha=time();

echo date("d/M/y",$fecha)."<br>";
echo date("h:i:s")."<br>";

$fecha1=time();
$fecha2=mktime(10,40,0,6,18,2012);

diferenciaFechas($fecha1,$fecha2);

function diferenciaFechas($fecha1, $fecha2)
{
	$diferencia=$fecha1-$fecha2;
	echo "Segundos: ".$diferencia."<br>";
	echo "Dias: ".floor($diferencia/60/60/24);
}



?>