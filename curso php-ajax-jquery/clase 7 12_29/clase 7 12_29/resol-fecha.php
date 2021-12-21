<?php 
	$diaMes = date("d");
	$nSemana = date("w"); // número del día de la semana empezando en 0
	if ($nSemana == 0) {
		$semana = "Domingo";
	}
	else if($nSemana == 1) {
		$semana = "Lunes";
	}
	else if($nSemana == 2) {
		$semana = "Martes";
	}
	else if($nSemana == 3) {
		$semana = "Miércoles";
	}
	else if($nSemana == 4) {
		$semana = "Jueves";
	}
	/*...*/


	switch ($nSemana){
		case 0:
			$semana = "Domingo";
			break;
		case 1:
			$semana = "Lunes";
			break;
		case 2:
			$semana = "Martes";
			break;			
		case 3:
			$semana = "Miércoles";
			break;					
		case 4:
			echo "Jueves";
			break;					
		case 5:
			echo "Viernes";
			break;			
		default:
			echo "Sábado";
			break;			
	}

	$anio = date("Y");

?>
<!DOCTYPE html>
<html>
<head>
	<title>fecha</title>
</head>
<body>

		<?php 
			echo "Hoy es ", $semana, " ", $diaMes, " de ", $mes, " de ", $anio;
		?> 

</body>
</html>