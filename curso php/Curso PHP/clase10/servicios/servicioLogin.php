<?php

require_once("../clases/Direccionador.php");
require_once("../clases/ValidadorDeUsuario.php");

$usuario=$_POST["nombreUsr"];
$password=$_POST["passUsr"];
$pathHome="../vistas/mostrarDatosUsuario.php";
$pathLogin="../vistas/formLogin.php";

$Validador= new Validador();
$direc = new Direccionador();

if ($Validador->existeUsuario($usuario)&&$Validador->usuarioValido($usuario,$password))
{
	$direc->direccionarA($pathHome);
}
else
{
	$direc->direccionarA($pathLogin);
}
?>