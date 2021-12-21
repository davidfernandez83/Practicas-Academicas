<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Text1" type="text" maxlength="50" value="dato" />
        
        <p>E-mail:
    <input type="text" name="mail" readonly="readonly"  value="example@example.com" />
    <strong>readonly</strong>=<em>readonly</em> y 
    <strong>value</strong>=<em>example@example.com</em>.
    </p>
    <p>Contraseña:
    <input type="password" name="password" />
    <strong>type</strong>=<em>password</em>
    </p>
    <p>Iniciales:
    <input type="text"  name="inicial" size="5" maxlength="2" />
    <strong>size</strong>=<em>3</em> y 			       
    <strong>maxlength</strong>=<em>2</em>
    </p>
    <p>No foco:
    <input type="text" disabled="disabled" value="jo jo" />
    <strong>disabled</strong>=<em>disabled</em> y 	     	    
    <strong>value</strong>=<em>jo jo</em>
    </p>
    
    
    <p>Sobre su edad:
       <input type="radio" name="edad" value="mayor" />MAYOR
       <input type="radio" name="edad" value="menor" />MENOR
    </p>
    <p>&nbsp;</p>
        <table class="style1">
            <tr>
                <td style="width: 20%">
                    Su genero:
                </td>
                <td>
        <input type="radio" name="genero" value="hombre" checked="checked" />HOMBRE</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
&nbsp;<input type="radio" name="genero" value="mujer" />MUJER
                </td>
            </tr>
        </table>


    </div>
    </form>
</body>
</html>
