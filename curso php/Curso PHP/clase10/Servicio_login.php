<?php
	require_once("../clases/Direccionador.php");
	require_once("../clases/ValidadorDeUsuario.php");
	
	$usuario = $_POST['usuario'];
	$password = $_POST['password'];
	
	$pathHome = "http://localhost/formularios/mostrar_datos_de_usuario.php";
	$pathLogin = "http://localhost/formularios/form_cuenta_de_usuario.php";
	
	$validador = new ValidadorDeUsuario();
	$direc = new Direccionador();
	
	if($validador->existe_usuario($usuario) && $validador->es_password_correcto($usuario,$password))
	{
		$direc->direccionarA($pathHome);
	}
	elseif($validador->puede_guardar_usuario($usuario,$password))
	{
		$direc->direccionarA($pathHome);
	}
	else
	{
		$direc->direccionarA($pathLogin);
	}

?>