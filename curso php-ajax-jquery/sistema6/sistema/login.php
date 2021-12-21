<?php
$usu_login=$_POST['usu_login'];
$usu_clave=$_POST['usu_clave'];

require 'conexion.php';
$sql="SELECT usu_nombre FROM usuarios WHERE usu_login='".$usu_login."' AND usu_clave='".$usu_clave."'";
$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
$cantidad=mysqli_num_rows($resultado);

if($cantidad==0){
	header("location:form-login.php?error=1");
} else{
	//rutina de autenticacion

	//ingresar a sistema
	header("location:admin.php");
}





?>