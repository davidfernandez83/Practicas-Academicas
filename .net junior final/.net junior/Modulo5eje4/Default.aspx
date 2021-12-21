<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculo IVA javascript</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 2px solid #0000FF;
            background-color: #C0C0C0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    Gravado:</td>
                <td>
                    <input id="txtGravado" name="txtGravado" type="text" /><input id="btnCalcular" 
                        name="btnCalcular" type="button" value="Calcular IVA" onclick="Calcular()"/></td>
            </tr>
            <tr>
                <td>
                    IVA:</td>
                <td>
                    <input id="txtIVA" name="txtIVA" type="text" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
<script type="text/javascript">
    function Calcular() {
        var gravado = document.getElementById("txtGravado").value;
        var resultado = parseFloat(gravado) * 0.21;
        document.getElementById("txtIVA").value = resultado;
    }
</script>
</html>
