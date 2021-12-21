<?php

class Persona
{
	private $nombre;
	private $apellido;
	private $dni;
	private $edad;
	private $altura;
	
	function __construct ($nombre)
	{
		$this->nombre=$nombre;
	}
	
	public function decirNombre()
	{
		echo $this->nombre;
	}
	public function saludar()
	{
		echo "Hola, como estas? ";
	}
	public function saludarA($unaPersona)
	{
		echo "Hola ";
		$unaPersona->decirNombre();
		echo " como estas???";
	}
}





?>