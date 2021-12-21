<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Width="219px">
        </asp:DropDownList>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    
    </div>
    </form>
</body>
</html>
