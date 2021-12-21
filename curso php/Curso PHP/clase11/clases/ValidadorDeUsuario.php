<?php
class Validador
{
	private $usuarios;
	function __construct()
	{
		$this->usuarios=array();
		$archivo=fopen("../recursos/usuarios.txt","r");
		while(!feof($archivo))
		{
			$usuarioYPassword = Array();
			$usuarioYPassword=explode(",",trim(fgets($archivo)));
			$this->usuarios[$usuarioYPassword[0]]=$usuarioYPassword[1];
		}
		//$this->usuarios=array("Juan"=>"1234","Pedro"=>"a123","Matias"=>"f44","Tomas"=>"x000asd");
	}
	function existeUsuario($nombre)
	{
		return isset($this->usuarios[$nombre]);
	}
	function usuarioValido($nombre,$password)
	{
		return ($this->usuarios[$nombre]==$password);
	}
	public function sePudoLogear($usr,$pass)
	{
		return (existeUsuario($usr)&&usuarioValido($usr,$pass));
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
			$this->crearUsuario($usr,$pass);
			$gestionadoCorrectamente = true;
		}else
		{
			$gestionadoCorrectamente=$this->usuarioValido($usr,$pass);
		}
		return gestionadoCorrectamente;
	}
	
	public function puedeGuardarUsuario($usuario,$password)
	{
		if(!$this->existeUsuario($usuario))
		{
			$archivo=fopen("../recursos/usuarios.txt","a");
			fwrite($archivo,"<br>".$usuario.",".$password);
			fclose($archivo);
			return true;
		}else return false;
	}
}
?>