<?php 


		function foo(){
				echo "si se lee";
				return false;
				echo  "esto no se lee";
		} 

		foo();
	?>
			<br>
	<?php 

		function chequearMenorQue100($numero){

			if(	$numero < 100 ){
				return "es menor";
			}
			
			return "no es menor";
			
		}

		echo chequearMenorQue100(599);

 ?>
 	<br>

 <?php 
		function otraOpcion($numero){

			if(	$numero < 100 ){
				$salida = "es menor";
			}
			else{
				$salida = "no es menor";
			}
			
			return $salida;
			
		}

 ?>