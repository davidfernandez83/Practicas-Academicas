<?php
	$titulo = "Contacto";
	//capturamos datos enviados por el form
	$nombre=$_POST['nombre'];
	$email=$_POST['email'];
	$mensaje=$_POST['mensaje'];

	//configuramos datos de email a enviar
	$destinatario="cybercorehw@gmail.com";
	$asunto="Email enviado desde mi sistema";

	// cuerpo de email
	$cuerpo = "<div style=\"background-color:#ace2fa; width:550px; padding:15px; margin:auto;
		border:1px solid #008\">";   // esta línea genera un div para dar formato.
	$cuerpo .= "Nombre: ". $nombre ."<br>";
	$cuerpo .= "Email: ". $email . "<br>";
	$cuerpo .= "Consulta: " . $mensaje;
	$cuerpo .= "</div>";  // está línea cierra el div

	// encabezados adicionales
	$headers  = "MIME-Version: 1.0" . "\r\n";
	$headers .= "Content-type: text/html; charset=utf-8" . "\r\n";  // los headers son necesarios para dar formato html
	$headers .= "From: Nombre Remitente <remitente@example.com>" . "\r\n";

	//Enviamos el email
	mail($destinatario,$asunto,$cuerpo,$headers);

?>
<?php include "encabezado.php"; ?>
</head>
<body>
	<div id="top"><img src="imagenes/top.png" alt="encabezado" width="980" height="80"></div>
	<div id="nav">
		<?php  include "menu.php"; ?>
	</div>
	<div id="main">
		<h1><?php echo $titulo ; ?></h1>
		<!-- inicio del desarrollo -->
		
		<div id="sinresultado">
			Gracias <?php echo $nombre; ?> por contactarnos
		</div>
		
		
	</div>
	<div id="pie">
		<?php  include "pie.php"  ?>
	</div>
	
</body>
</html>