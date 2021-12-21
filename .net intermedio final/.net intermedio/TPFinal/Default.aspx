<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="ObjectDataSource1" ForeColor="Black" 
            GridLines="Vertical">
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Alta" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Baja" />
        <asp:Button ID="Button3" runat="server" Text="Modificacion" />
        <asp:Button ID="Button4" runat="server" Text="Consulta" />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="Consulta" TypeName="DatosClientes"></asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
