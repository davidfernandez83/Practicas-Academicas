<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="primera_web_asp.net._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 400px;
        }
        .style2
        {
            width: 100%;
            height: 200px;
            border: 2px solid #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center" class="style1">
        <tr>
            <td>
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUsuario" runat="server" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblContraseña" runat="server" Text="Contraseña:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtContraseña" runat="server" MaxLength="10" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
