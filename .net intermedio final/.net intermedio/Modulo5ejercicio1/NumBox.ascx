<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NumBox.ascx.cs" Inherits="NumBox" %>
<asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ControlToValidate="txtNumero" ErrorMessage="El campo es obligatorio">*</asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server" 
    ErrorMessage="Ingrese solo numeros" Type="Integer" 
    ControlToValidate="txtNumero" Operator="DataTypeCheck">*</asp:CompareValidator>
