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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" 
            ErrorMessage="El dato es obligatorio">*</asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="El dato debe ser numerico" 
            Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="TextBox3" 
            ErrorMessage="El dato debe ser numerico y mayor a cero" 
            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator3" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="La fecha debe ser anterior a hoy" 
            Operator="LessThanEqual" Type="Date">*</asp:CompareValidator>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator4" runat="server" 
            ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
            ErrorMessage="Las contraseñas deben ser iguales">*</asp:CompareValidator>
        <br />
        <asp:TextBox ID="TextBox7" runat="server" ontextchanged="TextBox7_TextChanged"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="EL dato debe estar entre 0 y 100" 
            MaximumValue="100" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
        <br />
        <asp:TextBox ID="TextBox8" runat="server" ontextchanged="TextBox7_TextChanged"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox8" ErrorMessage="El mail es incorrecto" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextBox9" runat="server" ontextchanged="TextBox7_TextChanged"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox9" ErrorMessage="El cuit es incorrecto" 
            ValidationExpression="\d{2}-\d{8}-\d{1}">*</asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextBox10" runat="server" ontextchanged="TextBox7_TextChanged"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ClientValidationFunction="ValidarMinCar" ControlToValidate="TextBox10" 
            ErrorMessage="El minimo de caracteres es 5" 
            onservervalidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Aceptar" />
    
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancelar" 
            CausesValidation="False" />

    </div>
    <script type="text/javascript" >
        function ValidarMinCar(source, args) {
            if (args.Value.length <= 5)
                args.IsValid = false;
            else
                args.IsValid = true;
        }
    </script>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False" />
    </form>
    </body>
</html>
