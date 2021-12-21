<?php
//libro design patterns - gans of four


require_once("../clases/persona.php");
require_once("../clases/personaEnojada.php");

$unaPersona=new Persona("Juan");
$otraPersona=new Persona("Pedro");
$unaPersonaEnojada = new personaEnojada("Matias");

//$unaPersona->saludar();
//$unaPersona->decirNombre();

$unaPersona->saludarA($unaPersonaEnojada);



?>