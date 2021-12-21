<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Autenticacion.aspx.cs" Inherits="Autenticacion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 38%;
            border-left-style: solid;
            border-left-width: 4px;
            border-right: 4px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 4px;
            border-bottom: 4px solid #C0C0C0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblContraseña" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnAceptar" runat="server" onclick="btnAceptar_Click" 
                        Text="Aceptar" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        <asp:Label ID="lblErrores" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Red"></asp:Label>
    </p>
    </form>
</body>
</html>
