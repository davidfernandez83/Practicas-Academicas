<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigo" runat="server" Width="93px" MaxLength="8"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="txtCodigo_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtCodigo">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtCodigo" ErrorMessage="Debe ingresar el código">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Razón Social:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRazon" runat="server" Width="316px" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtRazon" ErrorMessage="La razón es obligatoria">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="CUIT:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCUIT" runat="server" MaxLength="13"></asp:TextBox>
                <cc1:MaskedEditExtender ID="txtCUIT_MaskedEditExtender" runat="server" 
                    ClearMaskOnLostFocus="False" CultureAMPMPlaceholder="" 
                    CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99-99999999-9" TargetControlID="txtCUIT">
                </cc1:MaskedEditExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtCUIT" ErrorMessage="Debe ingresar el CUIT">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Domicilio:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDomicilio" runat="server" Width="316px" MaxLength="100"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Fh.Alta:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFhAlta" runat="server" MaxLength="10"></asp:TextBox>
                <cc1:CalendarExtender ID="txtFhAlta_CalendarExtender" runat="server" 
                    DaysModeTitleFormat="dd/MM/yyyy" Enabled="True" Format="dd/MM/yyyy" 
                    PopupButtonID="btnAbrirCalendario" TargetControlID="txtFhAlta" 
                    TodaysDateFormat="dd/MM/yyyy">
                </cc1:CalendarExtender>
                <asp:Button ID="btnAbrirCalendario" runat="server" CausesValidation="False" 
                    Text="..." />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Tipo Responsable:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlTipoResp" runat="server" Width="229px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Contacto:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContacto" runat="server" Width="316px" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtContacto" ErrorMessage="El contacto es obligatorio">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Mail:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="316px" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtMail" ErrorMessage="El mail es obligatorio">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtMail" ErrorMessage="El mail es incorrecto" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Saldo Máximo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSaldo" runat="server" MaxLength="12"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="txtSaldo_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="txtSaldo" 
                    ValidChars="0123456789.">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtSaldo" ErrorMessage="Debe ingresar el saldo">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="txtSaldo" ErrorMessage="El saldo debe ser mayor a cero" 
                    Operator="GreaterThan" Type="Double" ValidationGroup="0">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Aceptar" 
                    onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancelar" 
                    CausesValidation="False" onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    <div>
    
                <asp:Label ID="lblErrores" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
