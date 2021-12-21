<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NumBox.ascx.cs" Inherits="NumBox" %>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ControlToValidate="TextBox1" ErrorMessage="El dato es obligatorio">*</asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server" 
    ControlToValidate="TextBox1" ErrorMessage="El dato debe ser numerico" 
    Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
