<html>

<head>
<meta http-equiv="Content_Type" content="text/html"; charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>

<h3>Datos del usuario</h3>

    <div id="tabs">

      <ul>

	    <li><a href="http://www.google.com/"><span>Google</span></a></li>
 
	   <li><a href="http://www.free-css.com/"><span>Información de usuario</span></a></li>
 
	   <li><a href="http://espndeportes.espn.go.com/"><span>Deportes</span></a></li>
 
      	   <li><a href="http://localhost/formulario/formLogin.php"><span>Registro de usuario</span></a></li>
 
      </ul>

    </div>



<form name="registroDeUsuario" method="post" action="../servicios/servicioLoginConSesion.php">

<p>Usuario: <input type="text" name="nombreUsr" maxlength=10 size=10 required="required"/></p>
<p>Password: <input type="password" name="passUsr" maxlength=10 size=10 required/></p>
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