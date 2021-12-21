<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ejercicio.aspx.cs" Inherits="Ejercicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ABM de Clientes</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        #Text1
        {
            width: 80px;
        }
        #Text2
        {
            width: 244px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            ABM de Clientes</h1>
        <table class="style1">
            <tr>
                <td style="width: 20%">
                    Código:
                </td>
                <td>
                    <input id="Text1" type="text" tabindex="1" />
                </td>
            </tr>
            <tr>
                <td>
                    Razón Social:
                </td>
                <td>
                    <input id="Text2" type="text" tabindex="2" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <fieldset>
                        <legend>Impuestos:</legend>
                        
                        <table class="style1">
                            <tr>
                                <td style="width: 20%">
                                    CUIT:</td>
                                <td>
                                    <input id="Text3" type="text" tabindex="3" /></td>
                            </tr>
                            <tr>
                                <td>
                                    Condición IVA:</td>
                                <td>
                                    <select id="Select1" name="D1" tabindex="4">
                                        <option>Responsable Inscriptio</option>
                                        <option>Monotributista</option>
                                        <option>Exento</option>
                                    </select></td>
                            </tr>
                        </table>
                        
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    Contraseña:</td>
                <td>
                    <input id="Password1" type="password" tabindex="5" /></td>
            </tr>
            <tr>
                <td>
                    Tipo:</td>
                <td>
                    <input id="Radio1" type="radio" name="Tipo"  value="Mayorista" tabindex="6" /> Mayorista
                    <input id="Radio2" type="radio" name="Tipo" value="Minorista"  
                        checked="checked" tabindex="7" /> Minorista
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <input id="Checkbox1" type="checkbox" checked="checked" tabindex="8"  />Activo</td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    Observaciones:</td>
                <td>
                    &nbsp;
                    <textarea id="TextArea1" cols="20" name="S1" rows="2" tabindex="9"></textarea></td>
            </tr>
            <tr>
                <td>
                    <input id="Submit1" tabindex="10" type="submit" value="Aceptar" /></td>
                <td>
                    <input id="Submit2" tabindex="11" type="submit" value="Cancelar" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
