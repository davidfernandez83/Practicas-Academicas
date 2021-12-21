<?php

$nombreUsuario=$_POST["nombreUsr"];
$passwordUsuario=$_POST["passUsr"];
$edadUsuario=$_POST["edadUsr"];
$sexoUsuario=$_POST["grupoSexo"];
$deporteFavorito=$_POST["deporte"];
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

<body>

<table name="tablaDeUsuario">
<tr>
	<th>Usuario</th>
	<th>Edad</th>
	<th>Sexo</th>
	<th>Deporte</th>
</tr>
<tr>
<?php
echo "<td>".$nombreUsuario."</td>";
echo "<td>".$edadUsuario."</td>";
echo "<td>".$sexoUsuario."</td>";
echo "<td>".$deporteFavorito."</td>";
?>
</tr>
</table>

</body>


</html>