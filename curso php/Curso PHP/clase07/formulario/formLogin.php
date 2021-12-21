<html>

<head>
<meta http-equiv="Content_Type" content="text/html"; charset="UTF-8" />
</head>

<body>

<form name="registroDeUsuario" method="post" action="mostrarDatosUsuario.php">

<p>Usuario: <input type="text" name="nombreUsr" maxlength=10 size=10 required="required"/></p>
<p>Password: <input type="password" name="passUsr" maxlength=10 size=10/></p>
<p>Edad: <input type="text" name="edadUsr" maxlength=3 size=3/></p>
<p>Sexo: M<input type="radio" name="grupoSexo" value="M" checked="checked">  F<input type="radio" name="grupoSexo" value="F" /></p>
<p>Deporte:
<select name="deporte">
<?php
$deportes=array("futbol","basket","natacion","polo","rugby","tenis","voley","padle","handball");
foreach($deportes as $deporte)
{
	echo "<option value='".$deporte."'>".$deporte."</option>";
}?>
	<!--<option value="Natacion">Natacion</option>
	<option value="Rugby">Rugby</option>
	<option value="Polo">Polo</option>-->
</select></p>
<p>Recibir mail: <input type="checkbox" name="recMail" /></p>
<p><input type="submit" value="Ingresar" />

</form>


</body>




</html>