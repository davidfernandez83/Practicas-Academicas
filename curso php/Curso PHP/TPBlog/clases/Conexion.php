<?php
 
class Conexion
{
	var $link = 0;
 	var $host;
 	var $user;
 	var $psw;
 	var $db;

        /*Crea la conexion con los parametros especificados.*/ 
	public function __construct()
        {
                /*Tambien se puede usar la IP: 127.0.0.1*/
 		$this->host = "localhost:3306";
 		$this->user = "root";
 		$this->psw = "";
 		$this->db = "blog";
 
		$this->link = mysql_connect($this->host,$this->user,$this->psw) 
			                     or die(mysql_error() ."No pudo conectarse al servidor");
 		if($this->db=="")
                {
 		      mysql_select_db($this->db,$this->link);
                }else{
                      mysql_select_db($this->db,$this->link);
                }
 
		return $this->link;
        }
      
 
	public function query($queryString)
	{
		$result = mysql_query($queryString);	
		$values = $this->mysql_fetch_all($result);
    	//var_dump($result);die;
		$valoresValidos = Array();
		foreach($values as $valor)
		{
			if($valor!=false)
			{
				$valoresValidos[]=$valor;
			}
		}
		return $valoresValidos;
	}
	
	public function queryModificacion($queryString)
	{
		$result = mysql_query($queryString);
		return $result;
	}

        private function mysql_fetch_all($result) {
		$all = array();
		while($all[] = mysql_fetch_assoc($result)){}
		return $all;
	}
}
 
?>
