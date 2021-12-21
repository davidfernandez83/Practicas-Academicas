<?php
class Validador
{
	$usuarios=array("Juan"=>"1234","Pedro"=>"a123","Matias"=>"f44","Tomas"=>"x000asd");
	private function existeUsuario($nombre)
	{
		return isset(this->usuarios[$nombre]);
	}
	private function usuarioValido($nombre,$password)
	{
		return (this->usuarios[$nombre]==$password)
	}
	public function sePudoLogear($usr,$pass)
	{
		return (existeUsuario($usr)&&usuarioValido($usr,$pass))
	}
	private function crearUsuario($usr,$pass)
	{
		$this->usuario[$usr]=$pass;
	}
	function gestionarUsuario($usr,$pass)
	{
		$gestionadoCorrectamente = false;
		if(!$this->existeUsuario($usr))
		{
			$this->crearUsuario($usr,$pass)
			$gestionadoCorrectamente = true;
		}else
		{
			$gestionadoCorrectamente=$this->usuarioValido($usr,$pass);
		}
		return gestionadoCorrectamente;
	}
	
	
	
}



?>