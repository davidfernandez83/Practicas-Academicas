<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <br />
        <input id="Text1" type="text" /></div>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Grabar Cookie" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Leer Cookie" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    </form>
</body>
</html>
