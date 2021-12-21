<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Nombre.aspx.cs" Inherits="Nombre" %>

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
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="lblNombre" runat="server" Text="Ingrese su nombre:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" Width="223px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNombre" ErrorMessage="El campo es obligatorio">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnAceptar" runat="server" onclick="btnAceptar_Click" 
                    Text="Aceptar" />
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
