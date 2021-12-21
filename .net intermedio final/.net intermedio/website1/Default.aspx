<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" MaintainScrollPositionOnPostback="true"  %>

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
    
        <input id="Text1" type="text" runat="server"  />
        <input id="Button1" type="button" value="Aceptar" /><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Button" />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                        Text="Etiqueta para textos"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Grupo1" 
                        Text="Opcion 1" />
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Grupo1" 
                        Text="Opcion 2" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="Aceptar" 
                        onclick="Button3_Click" />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/Imagenes/backover.jpg" />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="http://www.microsoft.com">HyperLink</asp:HyperLink>
                    <asp:ListBox ID="ListBox1" runat="server">
                        <asp:ListItem>Opcion 1</asp:ListItem>
                        <asp:ListItem>Opcion 2</asp:ListItem>
                    </asp:ListBox>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="277px">
                        <asp:ListItem>Opcion 1</asp:ListItem>
                        <asp:ListItem>Opcion2</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Opcion 1" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                        BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                        ShowGridLines="True" Width="220px">
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                            ForeColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Opcion 1</asp:ListItem>
                        <asp:ListItem>Opcion 2</asp:ListItem>
                        <asp:ListItem>Opcion3</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:BulletedList ID="BulletedList1" runat="server">
                    </asp:BulletedList>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
