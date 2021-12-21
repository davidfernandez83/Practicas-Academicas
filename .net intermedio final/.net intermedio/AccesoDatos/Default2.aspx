<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" 
        onpageindexchanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="CountryRegionCode" HeaderText="Codigo">
            <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Nombre">
            <ItemStyle Width="60%" />
            </asp:BoundField>
            <asp:BoundField DataField="ModifiedDate" DataFormatString="{0:dd/MM/yyyy}" 
                HeaderText="Fecha">
            <ItemStyle Height="20%" HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    </form>
</body>
</html>
