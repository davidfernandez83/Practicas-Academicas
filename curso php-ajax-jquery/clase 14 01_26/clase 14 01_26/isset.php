<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

		<?php 
			//$x = array("a", "b", "c");
			//echo $x['kiwi'];
			
			//$error = $_GET['error'];   capturamos dato enviado por $_GET

			if ( isset($_GET['error']) ) {    // pregunto SI EL DATO $_GET EXISTE
		?>

		<p>
			
		el dato enviado es: <?php //echo $error ?>
		</p>
		<?php 
			}
		 ?>
</body>
</html>