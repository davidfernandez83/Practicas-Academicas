<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MisEstilos.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 1px solid #008000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>Parrafo de prueba</p>
    
    <p class="importantes">Parrafo de temas importantes</p>
    
    <p class="EstiloPrueba">Parrafo con un estilo comun a todos los controles</p>
    <h1 class="EstiloPrueba">Titulos con estilo </h1>
    </div>
    <table class="style1">
        <tr>
            <td>
                <input id="Text1" type="text" 
                    style="text-align:right; color:Olive; border-color: Blue; border-style: solid" 
                    value="dato" /></td>
            <td>
                <input id="Button1" type="button" value="Archivo js" onclick="NombreFuncion()" /></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
    <script type="text/javascript" >
        /* Escritura de cabecera
        Para probar un comentario de bloque */

        document.write("Escrito con document.write");
        document.write("<h1>Este es el encabezado</h1>");
    </script>
    <script type="text/javascript" src="MiScript.js"></script>
</body>
</html>
