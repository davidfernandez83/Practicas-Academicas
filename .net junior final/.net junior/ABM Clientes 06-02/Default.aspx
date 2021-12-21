<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ABM CLIENTES</title>
    <style type="text/css">
        .style1
        {
            width: 212px;
        }
        .style2
        {
            width: 112px;
        }
        .style3
        {
            width: 86px;
        }
    </style>
</head>
<body>
    <h1>
        <u>ABM Clientes</u></h1>
    <form id="ABMClientes" runat="server">
    <div>
        <table>
            <tr>
                <td class="style3">
                    Codigo:
                </td>
                <td>
                    <input type="text" id="codigo" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Razon social:
                </td>
                <td>
                    <input type="text" id="RSocial" />
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    <fieldset style="width: 246px; margin-right: 0px">
                        <legend>Impuestos</legend>
                        <table>
                            <tr>
                                <td class="style2">
                                    CUIT:
                                </td>
                                <td>
                                    <input type="text" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    IVA:
                                </td>
                                <td>
                                    <select>
                                        <option>Responsable inscripto</option>
                                        <option>Monotributo</option>
                                        <option>Exento</option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    Contrase&ntilde;a:
                </td>
                <td>
                    <input type="password" />
                </td>
            </tr>
            <tr>
                <td>
                    Tipo:
                </td>
                <td>
                    <input id="Radio1" type="radio" name="tipo" />Mayorista
                    <input id="Radio2" type="radio" name="tipo" checked="checked" />Minorista
                </td>
            </tr>
            <tr>
                <td>
                    <input id="Checkbox1" type="checkbox" checked="checked" />Activo
                </td>
            </tr>
            <tr>
                <td>
                    Observaciones:
                </td>
                <td>
                    <textarea rows="5"></textarea>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
