<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Provincias de la Argentina<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Provincia:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="3"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" MaxLength="50"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Territorio:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" MaxLength="5"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Grabar" />
        <br />
        <asp:Label ID="lblErrores" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
