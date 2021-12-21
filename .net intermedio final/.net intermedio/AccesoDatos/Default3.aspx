<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" 
        PageSize="20">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="CountryRegionCode" HeaderText="Codigo" 
                SortExpression="CountryRegionCode">
            <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Nombre" SortExpression="Name">
            <ItemStyle Width="60%" />
            </asp:BoundField>
            <asp:BoundField DataField="ModifiedDate" HeaderText="Fecha">
            <ItemStyle Width="20%" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="TraerPaises" TypeName="DllAccesoDatos.Class1">
    </asp:ObjectDataSource>
    </form>
</body>
</html>
