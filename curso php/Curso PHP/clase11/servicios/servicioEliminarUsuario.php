<?php

require_once("../clases/Direccionador.php");
require_once("../clases/ValidadorDeUsuario.php");

$usuario=$_POST["nombreUsr"];
$password=$_POST["passUsr"];
$pathHome="../vistas/mostrarDatosUsuario.php";
$pathLogin="../vistas/formLogin.php";
$archivo="../recursos/usuarios.txt","r";
$usuarios=fopen($archivo, "r+");

$usuarioEncontrado=false;

		while(!feof($archivo) || !$usuarioEncontrado)
		{
			$usuarioYPassword = Array();
			$usuarioAParsear=fgets($usuarios);
			$usuarioYPassword=explode(",",trim(fgets($usuarioAParsear)));
			if(($usuarioYPassword[0]==$usuario)&&($usuarioYPassword[1]==$password));
			{
				fseek($usuarios,-strlen($usuarioAParsear));
				for($i=0;$i<=strlen($usuarioAParsear);$i++)
				{
					$usuarioBorrado.="*";
				}
				fwrite($usuarios,$usuarioBorrado);
				fclose($usuarios);
				$usuarioEncontrado=true;
			}
		}










?>