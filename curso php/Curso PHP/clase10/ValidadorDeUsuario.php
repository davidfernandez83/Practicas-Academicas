<?php

class ValidadorDeUsuario {

	private $usuarios;
	
	function __construct() 
	{
		$this->usuarios = array();
		$archivoALeer = fopen("../recursos/usuarios.txt","r");
		
		while(!feof($archivoALeer))
		{
				$usuarioYPassword = array();
				$usuarioYPassword = explode(",",trim(fgets($archivoALeer)));
				$this->usuarios[$usuarioYPassword[0]] = $usuarioYPassword[1];
		}
		fclose($archivoALeer);
		
	}

	public function existe_usuario($usuario)
	{
		if(isset($this->usuarios[$usuario]))
		{	
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public function es_password_correcto($usuario,$password)
	{
		if(isset($this->usuarios[$usuario]) &&($this->usuarios[$usuario] == $password))
		{	
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public function puede_guardar_usuario($usuario,$password)
	{
		if(!$this->existe_usuario($usuario))
		{
				$archivoAEscribir = fopen("../recursos/usuarios.txt","a");
				fwrite($archivoAEscribir, "\n".$usuario.",".$password);
				fclose($archivoAEscribir);
				return true;
		}
		else
		{
			return false;
		}
	}
	
}
?>