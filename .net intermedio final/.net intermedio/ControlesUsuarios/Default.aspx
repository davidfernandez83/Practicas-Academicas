<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="NumBox.ascx" tagname="NumBox" tagprefix="uc1" %>

<%@ Register src="WebUserControl.ascx" tagname="WebUserControl" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:NumBox ID="NumBox1" runat="server" MaxLength="5" 
            MensajeErrorNumerico="El valor 1 debe ser numerico" 
            MensajeErrorRequerido="El valor 1 es obligatorio" />
        <br />
        <uc1:NumBox ID="NumBox2" runat="server" MaxLength="10" 
            MensajeErrorNumerico="El valor 2 debe ser numerico" 
            MensajeErrorRequerido="El valor 2 es obligatorio" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Sumar" onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ShowMessageBox="True" ShowSummary="False" />
    
    </div>
    <uc2:WebUserControl ID="WebUserControl1" runat="server" />
    </form>
</body>
</html>
