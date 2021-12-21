<?php

class personaEnojada extends Persona
{
	function __construct ($nombre)
	{
		$this->nombre=$nombre;
	}

	function devolverSaludoA($alguien)
	{
		echo "En verdad ";
		$alguien->decirNombre;
		echo " ando enojado";
	}
}









?>