<?php

require_once("../clases/persona.php");

$unaPersona=new Persona("Juan");
$otraPersona=new Persona("Pedro");

//$unaPersona->saludar();
//$unaPersona->decirNombre();

$unaPersona->saludarA($otraPersona);








?>