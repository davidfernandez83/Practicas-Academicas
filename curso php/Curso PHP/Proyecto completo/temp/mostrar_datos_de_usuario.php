<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/> 
<html>
 <head>
  <link rel="stylesheet" type="text/css" href="styles.css">
 </head> 
 <body>
  <h3>Datos del usuario</h3>
    <div id="tabs">
      <ul>
	    <li><a href="http://www.google.com/"><span>Google</span></a></li>
	    <li><a href="http://www.free-css.com/"><span>Información de usuario</span></a></li>
	    <li><a href="http://espndeportes.espn.go.com/"><span>Deportes</span></a></li>
      	<li><a href="http://localhost/formularios/form_cuenta_de_usuario.php"><span>Registro de usuario</span></a></li>
      </ul>
    </div>
    </br>
    </br>
    <p>El usuario se ha registrado con éxito, con los siguientes datos: <p>
    
 <p><label for="nombre">Nombre: </label><label for="valor_nombre"><?php echo $_POST['nombre'];
?></label></p>	
 <p><label for="nombre">Apellido: </label><label for="valor_nombre"><?php echo $_POST['apellido'];
?></label></p>	
 <p><label for="nombre">Nombre de Usuario: </label><label for="valor_nombre"><?php echo $_POST['nombre_usuario'];
?></label></p>	
 <p><label for="nombre">Deporte favorito: </label><label for="valor_nombre"><?php echo $_POST['deporte_favorito'];
?></label></p>	
    
   <table class="sample">
      <tr>
	<th>NOMBRE</th>
        <th>APELLIDO</th>
        <th>NOMBRE DE USUARIO</th>
        <th>DEPORTE FAVORITO</th>
        <th>SEXO</th>
      </tr>	
      <tr>
	<td><?php echo $_POST['nombre'];?></td>
        <td><?php echo $_POST['apellido'];?></td>
        <td><?php echo $_POST['nombre_usuario'];?></td>
        <td><?php echo $_POST['deporte_favorito'];?></td>
        <td><?php if($_POST['grupo1'] == "M"){echo "MASCULINO";}else{echo "FEMENINO";} ;?></td>
      </tr>
   </table>
   <br>
   <p>Temas de interés: </p>
   <br>
   <!--<?php if($_POST['grupo1'] == "M"){ ?>
   	<ol>
	  <li>Programación</li>
          <li>Electrónica</li>
          <li>Futbol</li>
        </ol>
   <?php } else { ?>
        <ol>
	  <li>Diseño Gráfico</li>
          <li>Moda</li>
          <li>Arte</li>
	</ol>
   <?php }; ?>-->
   <?php if($_POST['grupo1'] == "M"){ 
	$intereses = array("Programación","Electrónica","Futbol");	
	?>   	
	<ol>
	  <?php foreach($intereses as $interes){ ?>
	  <li><?php echo $interes; }; ?></li>
    </ol>
   <?php } else { 
        $intereses = array("Diseño Gráfico","Moda","Arte");	
        ?>  	
	<ol>
	  <?php foreach($intereses as $interes){ ?>
	  <li><?php echo $interes; }; ?></li>
    </ol>
   <?php } ; ?>
  </div>
  </body>  
</html>
