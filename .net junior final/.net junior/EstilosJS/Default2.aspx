<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Prueba</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <table class="style1">
        <tr>
            <td>
                <input id="Text1" type="text" /></td>
        </tr>
        <tr>
            <td>
                <input id="Text2" type="text" /></td>
        </tr>
        <tr>
            <td>
                <input id="Button1" type="button" value="Sumar" onclick="Sumar()" /></td>
        </tr>
        <tr>
            <td>
                Total:
                <input id="Text3" type="text" /></td>
        </tr>
    </table>
</body>
 <script type='text/javascript' >
     function Sumar() {
         var dato1 = document.getElementById("Text1").value;
         var dato2 = document.getElementById("Text2").value;
         if (dato1 == "")
             dato1 = "0";
         if (dato2 == "")
             dato2 = "0";

         if (isNaN(dato1) || isNaN(dato2))
             alert("Los valores deben ser numérico");
         else {
             var Suma = parseFloat(dato1) + parseFloat(dato2);
             document.getElementById("Text3").value = Suma;
             document.getElementById("Text1").focus();
             document.getElementById("Text1").className = "style1";
         }
     }
 </script> 
</html>

</html>
