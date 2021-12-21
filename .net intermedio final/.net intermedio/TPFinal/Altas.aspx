<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Altas.aspx.cs" Inherits="Altas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 193px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="lblCliente" runat="server" Text="Cliente:" Font-Names="Verdana"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCliente" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="txtCliente" 
                        ErrorMessage="El campo Cliente debe ser numerico" Operator="DataTypeCheck" 
                        Type="Integer" ValidationGroup="altas">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblRazonSocial" runat="server" Text="Razon social:" 
                        Font-Names="Verdana"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRazonSocial" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblCUIT" runat="server" Text="CUIT:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCUIT" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToValidate="txtCUIT" ErrorMessage="El campo CUIT debe ser numerico" 
                        Operator="DataTypeCheck" Type="Integer" ValidationGroup="altas">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblDomicilio" runat="server" Text="Domicilio:" 
                        Font-Names="Verdana"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDomicilio" runat="server" ValidationGroup="altas"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblFhAlta" runat="server" Text="Fecha de alta:" 
                        Font-Names="Verdana"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFhAlta" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblTipoResp" runat="server" Text="Tipo de responsable:" 
                        Font-Names="Verdana"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTipoResp" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblContacto" runat="server" Text="Contacto:" 
                        Font-Names="Verdana"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtContacto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblMail" runat="server" Text="Mail:" Font-Names="Verdana"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtMail" 
                        ErrorMessage="El campo Mail no contiene datos validos" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="altas">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblSaldo" runat="server" Text="Saldo:" Font-Names="Verdana"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSaldo" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ControlToValidate="txtSaldo" 
                        ErrorMessage="El campo Saldo debe ser numerico decimal" 
                        Operator="DataTypeCheck" Type="Currency" ValidationGroup="altas">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="ACEPTAR" onclick="Button1_Click" 
                        ValidationGroup="altas" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="CANCELAR" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Red" 
        Font-Bold="True" ForeColor="White" ValidationGroup="altas" />
    </form>
</body>
</html>
