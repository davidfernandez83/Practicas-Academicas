<!DOCTYPE html>
<html>
<head>
	<title>subtes</title>
</head>
<body>

	La línea elegida es: 
<?php 
	$linea = $_POST['linea'];

	if ($linea == "a") {
		echo '<img src="subtes/sub-a.gif" alt="subte línea A">';
	}
	else if ($linea == "b") {
		echo '<img src="subtes/sub-b.gif" alt="subte línea B">';
	}
	else if ($linea == "c") {
		echo '<img src="subtes/sub-c.gif" alt="subte línea C">';
	}

?>
<br>
<?php 
	switch ($linea){
		case "a":
			echo '<img src="subtes/sub-a.gif" alt="subte línea A">';
			break;
		case "b":
			echo '<img src="subtes/sub-b.gif" alt="subte línea B">';
			break;
		case "c":
			echo '<img src="subtes/sub-c.gif" alt="subte línea C">';
			break;

	}
?>
<br>

	<img src="subtes/sub-<?php echo $linea; ?>.gif" alt="subte línea <?php echo strtoupper($linea); ?>">

</body>
</html>