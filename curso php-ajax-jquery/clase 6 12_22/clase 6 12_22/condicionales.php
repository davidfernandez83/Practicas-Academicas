<?php
$numero = $_GET['numero'];

if ($numero<200) {
	$im="ok.png";
}
else{
	$im="error.png";
}

?>

<html>
<body>
<img src="imagenes/<?php echo $im; ?>" alt="imagen 1">
</body>
</html>