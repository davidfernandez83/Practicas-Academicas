<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AdvWorks2008CS %>" 
            SelectCommand="select * from person.countryregion"></asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="CountryRegionCode" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" style="margin-right: 7px" Width="536px">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="CountryRegionCode" HeaderText="Codigo" 
                ReadOnly="True" SortExpression="CountryRegionCode">
            <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Nombre" SortExpression="Name">
            <ItemStyle Width="80%" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </form>
</body>
</html>
