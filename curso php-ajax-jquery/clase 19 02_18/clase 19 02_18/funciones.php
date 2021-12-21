<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	<?php
		//declaracion
		function negrita($frase){
			echo "<b>",$frase,"</b><br>";
		}

		//llamado a ejecucion
		negrita("Hola mundo");
		negrita("PHP y MySQL");
		negrita(13*3);

		function multiplicar($num,$factor){
			//echo $num*2;
			$resultado=$num*$factor;
			echo $resultado;
		}

		function suma($n1,$n2){
			$resultado=$n1+$n2;
			return $resultado;
		}

		echo suma(4,3),"<br>";
		negrita(suma(4,3));

		 //°C= (°F - 32) / 1.8 

		function conversor($f){
			if(is_numeric($f))
			{
				$resultado=($f-32)/1.8;
				return round($resultado,2);
			}
			else
			{
				return "ERROR valor incorrecto";
			}
		}

		echo conversor(0);

	?>
</body>
</html>