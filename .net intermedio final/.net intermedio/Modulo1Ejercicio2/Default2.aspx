<%@ Page Title="" Language="C#" MasterPageFile="~/CursosBecas.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="lblCodigo" runat="server" Text="Código:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCategoria" runat="server" Text="Categoria:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="cboCategoria" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFecha" runat="server" Text="Fecha alta:"></asp:Label>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="chkActivo" runat="server" Text="Activo" />
                </td>
                <td>
                    <asp:Button ID="btnAceptar" runat="server" onclick="btnAceptar_Click" 
                        Text="Aceptar" />
                </td>
            </tr>
        </table>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

