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
session_start();

//borrar variable de sesion
unset($_SESSION['numero']);
//borrar todas
session_unset();

//borrar sesion
session_destroy();

?>

</body>
</html>