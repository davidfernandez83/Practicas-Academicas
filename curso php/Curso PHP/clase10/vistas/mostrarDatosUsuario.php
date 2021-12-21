<?php
$nombreUsuario="";
$passwordUsuario="";
$edadUsuario="";
$sexoUsuario="";
$deporteFavorito="";
if(isset($_POST["nombreUsr"]))$nombreUsuario=$_POST["nombreUsr"];
if(isset($_POST["passUsr"]))$passwordUsuario=$_POST["passUsr"];
if(isset($_POST["edadUsr"]))$edadUsuario=$_POST["edadUsr"];
if(isset($_POST["grupoSexo"]))$sexoUsuario=$_POST["grupoSexo"];
if(isset($_POST["deporte"]))$deporteFavorito=$_POST["deporte"];
/*
echo "Nombre de usuario: ".$nombreUsuario."<br>";
echo "Edad: ".$edadUsuario."<br>";
if ($sexoUsuario=="M")
{
	echo "Sexo masculino <br>";
}
else
{
	echo "Sexo femenino <br>";
}
if (isset($_POST["recMail"]))
{
	echo "Desea recibir emails <br>";
}
echo "Deporte favorito: ".$deporteFavorito."<br>";
*/
?>
<html>

<head>

  <link rel="stylesheet" type="text/css" href="styles.css">
 
</head>
 
<body>

<table name="tablaDeUsuario" class="sample">
<tr>
	<th>Usuario</th>
	<th>Edad</th>
	<th>Sexo</th>
	<th>Deporte</th>
	<th>Recibir mails</th>
</tr>
<tr>
<?php
echo "<td>".$nombreUsuario."</td>";
echo "<td>".$edadUsuario."</td>";
echo "<td>".$sexoUsuario."</td>";
echo "<td>".$deporteFavorito."</td>";
if(isset($_POST["recMail"]))
{
	echo "<td>SI</td>";
	}
	else
	{
		echo "<td>NO</td>";
	}
	
?>
</tr>
</table>

<a href="formLogin.php">Volver al formulario</a>

</body>


</html>