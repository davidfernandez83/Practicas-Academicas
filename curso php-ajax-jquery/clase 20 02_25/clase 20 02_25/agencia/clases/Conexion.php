<?php

class Conexion{
	private function __construct(){}

	const SERVER  = 'localhost';
    const BASE    = 'agencia';
    const USUARIO = 'root';
    const CLAVE   = '';

	static function conectar()
	{
	    $opciones  = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");
	    //instanciamos la clase pdo
	    $link = new PDO('mysql:host='.self::SERVER.';dbname='.self::BASE, self::USUARIO, self::CLAVE, $opciones);
	    return $link;
	}
	
}

?>