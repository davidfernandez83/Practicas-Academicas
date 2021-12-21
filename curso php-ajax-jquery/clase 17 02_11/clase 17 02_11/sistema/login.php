<?php
$usu_login=$_POST['usu_login'];
$usu_clave=$_POST['usu_clave'];

require 'conexion.php';
$sql="SELECT usu_nombre FROM usuarios WHERE usu_login='".$usu_login."' AND usu_clave='".$usu_clave."'";
$resultado=mysqli_query($link,$sql) or die(mysqli_error($link));
$cantidad=mysqli_num_rows($resultado);


if($cantidad==0){
	header("location:form-login.php?error=0");
} else{
	$fila=mysqli_fetch_assoc($resultado);
	//rutina de autenticacion
	session_start();
	$_SESSION['login']=1;
	$_SESSION['nombre']=$fila['usu_nombre'];

	//ingresar a sistema
	header("location:admin.php");
}

?>