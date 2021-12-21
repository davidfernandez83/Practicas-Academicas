<?php

class Persona{
	//propiedades
	private $nombre="David";
	private $apellido="Fernandez";

	//metodos
	public function verDatos(){
		return "Tu nombre es: ".$this->nombre;
	}


}

//instanciar un objeto a partir de la clase Persona
$per1 = new Persona();

echo $per1->verDatos(),"<br>";
//$per1->nombre=33;
//echo $per1->nombre;



?>