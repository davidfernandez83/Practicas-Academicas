<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

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
    
    </div>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="lblCodigo" runat="server" Text="Código:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigo" runat="server" MaxLength="3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnAceptar" runat="server" onclick="btnAceptar_Click" 
        Text="Aceptar" />
    <p>
        <asp:Label ID="lblErrores" runat="server" ForeColor="Red"></asp:Label>
    </p>
    </form>
</body>
</html>
