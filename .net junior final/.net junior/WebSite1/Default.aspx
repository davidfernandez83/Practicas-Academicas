<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulo para mostrar en el browser</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- Comentario
    siempre es comentario de bloque
    -->
    
    <p>Esto es un parrafo</p>
    <p>Otro parrafo</p>
    <a href="http://www.microsoft.com">Microsoft</a>
    <a href="http://www.example.com"><img src="Imagenes/MS.JPG" alt="Texto si la imagen no la encuentra" /></a>
    
    <h1>Encabezado con etiqueta h1</h1>
    <h2>Encabezado con etiqueta h2</h2>
    <h3>Encabezado con etiqueta h3</h3>
    <h4>Encabezado con etiqueta h4</h4>
    <h5>Encabezado con etiqueta h5</h5>
    <h6>Encabezado con etiqueta h6</h6>

    <p>Este es un texto <strong>resaltado</strong></p>
    <p>Una corriente filosofica afirma que lo que progresa es la <strong><em>tecnologia</em></strong>, el hombre no.</p>
 
    <span>Provincias</span> <span>Buenos Aires</span> <span>mendoza</span>
    <br />
    <a href="mailto:mail@example.com">Correo de ejemplo</a>
    
    <img src="Imagenes/MS.JPG" alt="Texto si la imagen no la encuentra" height="100" width="100" />
 
 
    <p>Este texto debería quedar a la izquiera de la imagen de Microsoft
    <img src="Imagenes/MS.JPG" alt="Microsoft" height="40" width="40" style="float:right "/></p>
    </div>
    </form>
</body>
</html>
