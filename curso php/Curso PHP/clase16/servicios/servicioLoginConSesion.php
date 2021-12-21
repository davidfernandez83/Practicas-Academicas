<?php

require_once("../clases/Direccionador.php");
require_once("../clases/ValidadorDeUsuario.php");
require_once("../clases/Conexion.php");

$usuario=$_POST["nombreUsr"];
$password=$_POST["passUsr"];
$deporte=$_POST["deporte"];
$sexo=$_POST["grupoSexo"];

$pathHome="../vistas/mostrarDatosUsuario.php";
$pathLogin="../vistas/formLogin.php";
$gestion=false;

$Validador= new Validador();
$Direc = new Direccionador();
$Conexion = new Conexion();


$usuarios=$Conexion->query("SELECT * FROM `usuarios` WHERE nombre='".$usuario."' AND password=".$password);
var_dump($usuarios);die;
$existeUsuario=false;

if(count($usuario)>0){$existeUsuario=true;}

if($existeUsuario)
{
	session_start();
	$_SESSION['nombreUsuario']=$usuario;
	$_SESSION['deporte']=$deporte;
	$_SESSION['sexo']=$sexo;
	$Direc->direccionarA("../vistas/formTrabajosPracticos.php");
}
else
{
	$Direc->direccionarA($pathLogin);
}


/*
if ($Validador->existeUsuario($usuario)&&$Validador->usuarioValido($usuario,$password))
{
	$Direc->direccionarA($pathHome);
}
else
{
	$gestion=$Validador->puedeGuardarUsuario($usuario, $password);
	if ($gestion)
	{
		echo "Usuario guardado";
		echo "<br><a href='../vistas/formLogin.php'>Volver al formulario</a>";
	}
	else
	{
		$Direc->direccionarA($pathLogin);
	}
}*/
?>