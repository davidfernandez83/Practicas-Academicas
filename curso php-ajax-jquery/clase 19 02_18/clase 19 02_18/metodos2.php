<?php

class Persona{
	private $nombre;
	private $apellido;

	public function setNombre($newNombre){
		$this->nombre=$newNombre;
	}

	public function setApellido($newApellido){
		$this->apellido=$newApellido;
	}

    /**
     * Gets the value of nombre.
     *
     * @return mixed
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Gets the value of apellido.
     *
     * @return mixed
     */
    public function getApellido()
    {
        return $this->apellido;
    }

	public function verDatos(){
		echo "Tu nombre es: ",$this->nombre;
		echo "<br>";
		echo "Tu apellido es: ",$this->apellido;


	}


}

$per1 = new Persona();
$per1->setNombre("David");
$per1->setApellido("Fernandez");

$per1->verDatos();

?>