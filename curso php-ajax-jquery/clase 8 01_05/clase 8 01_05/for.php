<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<?php

$alemanes[] = "Porsche";
$alemanes[] = "Mercedez Benz";
$alemanes[] = "RUF";
$alemanes[] = "Daimler";
$alemanes[] = "VolksWagen";
$alemanes[] = "BMW";
$alemanes[] = "Audi";

$cant=count($alemanes);

for($i=0;$i<$cant;$i++){
	echo $alemanes[$i],"<br>";
}

?>


</body>
</html>