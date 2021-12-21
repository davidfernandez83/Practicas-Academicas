<?php 

$destinatario  = "mail_destino@destino.com";

// subject
$asunto = "Asunto del mail";


// cuerpo de email
$cuerpo = "<div style=\"background-color:#ace2fa; width:550px; padding:15px; margin:auto; border:1px solid #008\">";   // esta línea genera un div para dar formato.

$cuerpo .= "Nombre: ". $nombre ."<br>";
$cuerpo .= "Email: ". $email . "<br>";
$cuerpo .= "Consulta: " . $consulta;

$cuerpo .= "</div>";  // está línea cierra el div


// encabezados adicionales
$headers  = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type: text/html; charset=utf-8" . "\r\n";  // los headers son necesarios para dar formato html
$headers .= "From: Nombre Remitente <remitente@example.com>" . "\r\n";

// Enviar email con formato HTML (ver $headers)
mail($destinatario, $asunto, $cuerpo, $headers);

 ?>