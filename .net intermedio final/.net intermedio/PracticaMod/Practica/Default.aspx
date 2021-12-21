<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" Width="100%" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Cliente" HeaderText="Cod.">
                <ItemStyle Width="10%" />
                </asp:BoundField>
                <asp:BoundField DataField="RazonSocial" HeaderText="Razón Social">
                <ItemStyle Width="60%" />
                </asp:BoundField>
                <asp:BoundField DataField="CUIT" HeaderText="CUIT">
                <ItemStyle Width="20%" />
                </asp:BoundField>
                <asp:BoundField DataField="FhAlta" DataFormatString="{0: dd/MM/yyyy}" 
                    HeaderText="F.Alta">
                <ItemStyle Width="10%" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <table class="style1">
            <tr>
                <td style="width:25%; text-align:Center">
                    <asp:Button ID="btnAlta" runat="server" Text="Alta" onclick="btnAlta_Click" />
                </td>
                <td style="width:25%; text-align:Center">
                    <asp:Button ID="btnModif" runat="server" Text="Modificación" 
                        onclick="btnModif_Click" />
                </td>
                <td style="width:25%; text-align:Center">
                    <asp:Button ID="btnBaja" runat="server" Text="Baja" onclick="btnBaja_Click" />
                </td>
                <td style="width:25%; text-align:Center">
                    <asp:Button ID="btnConsulta" runat="server" Text="Consulta" 
                        onclick="btnConsulta_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
                <asp:Label ID="lblErrores" runat="server" ForeColor="Red"></asp:Label>
            </p>
    </form>
</body>
</html>
