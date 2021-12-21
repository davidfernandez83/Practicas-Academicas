<?php

class Region{
	private $regID;
	private $regNombre;
	private $cantRegiones;

	public function listarRegiones(){
		$link=Conexion::conectar();
		$sql="SELECT regid, regnombre FROM regiones";
		$stmt=$link->prepare($sql);
		$stmt->execute();
		$resultado=$stmt->fetchAll(PDO::FETCH_ASSOC);
		return $resultado;
	}

	public function verRegionPorID($id){
		$link=Conexion::conectar();
		$sql="SELECT regid, regnombre FROM regiones WHERE regid=".$id;
		$stmt=$link->prepare($sql);
		$stmt->execute();
		$resultado=$stmt->fetch(PDO::FETCH_ASSOC);
		return $resultado;
	}

	public function getRegID(){
		return $this->regID;
	}
	public function setRegID($newRegID){
		$this->regID=$newRegID;
	}

	public function getRegNombre(){
		return $this->regNombre;
	}
	public function setRegNombre($newRegNombre){
		$this->regNombre=$newRegNombre;
	}

	public function getCantRegiones(){
		return $this->cantRegiones;
	}
	public function setCantRegiones($newCantRegiones){
		$this->cantRegiones=$newCantRegiones;
	}


}

?>