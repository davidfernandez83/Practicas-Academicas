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
    const SERVER  = 'localhost';
    const BASE    = 'agencia';
    const USUARIO = 'root';
    const CLAVE   = '';

    $opciones  = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");

    //instanciamos la clase pdo
    $link = new PDO('mysql:host='.SERVER.';dbname='.BASE, USUARIO, CLAVE, $opciones);

    $sql="SELECT regid, regnombre FROM regiones";

    $stmt=$link->prepare($sql);
    $stmt->execute();

    $resultado=$stmt->fetchall();// metodo fetchall trae todos los registros

    foreach($resultado as $fila){
    	echo $fila['regid']," ",$fila['regnombre'],"<br>";
    }


?>

</body>
</html>