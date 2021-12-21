<?php 
	class Prueba{

		private function __construct(){
			echo "solo por instanciar";
		}
	
		public function mostrarTexto(){
			echo "método invocado";
			echo "<br>";
			$this->privado();
		}

		private function privado(){
			echo "método Privado";
		} 

		static function estatico(){
			echo "método estático";
		}
	}



//	$x = new Prueba(); // constructor privado
//	$x->mostrarTexto(); // porque no hay instancia

	Prueba::estatico();
	

?>