<%@ Page Title="" Language="C#" MasterPageFile="~/Prueba.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    
    <table class="style1">
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        </td>
    </tr>
</table>
  
    
</asp:Content>

