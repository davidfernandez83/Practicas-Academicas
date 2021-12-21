<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
            runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox2">
        </asp:FilteredTextBoxExtender>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" 
            DaysModeTitleFormat="dd/MM/yyyy" Enabled="True" Format="dd/MM/yyyy" 
            PopupButtonID="Button1" TargetControlID="TextBox3" 
            TodaysDateFormat="dd/MM/yyyy">
        </asp:CalendarExtender>
        <asp:Button ID="Button1" runat="server" Text="..." />
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:AutoCompleteExtender ID="TextBox4_AutoCompleteExtender" runat="server" 
            DelimiterCharacters="" Enabled="True" ServicePath="" TargetControlID="TextBox4">
        </asp:AutoCompleteExtender>
        <br />
        
    
    </div>
    </form>
</body>
</html>
