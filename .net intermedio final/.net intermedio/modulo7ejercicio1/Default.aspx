<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="TraerPaises" TypeName="Class1"></asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" DataSourceID="ObjectDataSource1" PageSize="15" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Vertical">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="CountryRegionCode" HeaderText="Código" 
                SortExpression="CountryRegionCode">
            <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Nombre" SortExpression="Name">
            <ItemStyle Width="80%" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </form>
</body>
</html>
