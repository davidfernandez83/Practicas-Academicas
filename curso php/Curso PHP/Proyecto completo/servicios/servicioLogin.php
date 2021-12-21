<?php

require_once("../clases/Direccionador.php");
require_once("../clases/ValidadorDeUsuario.php");

$usuario=$_POST["nombreUsr"];
$password=$_POST["passUsr"];
$pathHome="../vistas/mostrarDatosUsuario.php";
$pathLogin="../vistas/formLogin.php";
$gestion=false;

$Validador= new Validador();
$Direc = new Direccionador();

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
}
?>