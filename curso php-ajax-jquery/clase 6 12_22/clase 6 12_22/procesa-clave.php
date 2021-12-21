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
$clave = $_POST['clave'];

if ($clave=="pass") {
	echo "Clave correcta";
}
else{
	echo "Clave incorrecta";
}


?>
	
</body>
</html>