<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/> 
<html>
 <head>
  <title>Registro De Usuario</title>	
  <link rel="stylesheet" type="text/css" href="../estilos/styles.css">
 </head> 
 <body> 
  <h3>Registro de Usuario</h3>
  <form name="cuenta_de_usuario" METHOD="POST" action="mostrar_datos_de_usuario.php">
    <div id="tabs">
      <ul>
	    <li><a href="http://www.google.com/"><span>Google</span></a></li>
	    <li><a href="http://localhost/formularios/mostrar_datos_de_usuario.php"><span>Info De usuario</span></a></li>
	    <li><a href="http://espndeportes.espn.go.com/"><span>Deportes</span></a></li>
      </ul>
    </div>
    </br>
    </br>	
    <p>Nombre: <input type="text" name="nombre" maxlength="10" tabindex=1 size=30 required="required"/></p>	
    <p>Apellido: <input type="text" name="apellido" maxlength="10" tabindex=2 size=30 /></p>
    <p>Nombre de usuario: <input type="text" name="nombre_usuario" tabindex=4 size=22 /></p>
    <p>Contraseña: <input type="password" name="contraseña" tabindex=5 size=28 /></p>
    Deporte : <!--<select name="deporte_favorito" tabindex=3 >
	        <option value="Futbol">Futbol</option>
	        <option value="Rugby">Rugby</option>
	        <option value="Natación">Natación</option>
	        <option value="Tenis">Tenis</option>
	        <option value="Paddle">Paddle</option>
	        <option value="Voley">Voley</option>
	      </select> -->
    <select name="deporte_favorito" tabindex=3 > 
      <?php
	$deportes = array("Futbol","Rugby","Natación","Tenis","Paddle","Voley");	
	foreach($deportes as $deporte)
       { ?>
		 <option value="<?php echo $deporte;?>"><?php echo $deporte ;?></option>
       <?php } ?>
    </select>
     </br>
     </br>
     	Sexo: <input type="radio" name="grupo1" value="M"> M 
    	      <input type="radio" name="grupo1" value="F"> F 
    </br>
    </br>
    <input type="submit" name="loguear_usuario" value="Ingresar"/>
  </form>
 </body>
</html>
