<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 100%;
            border: 1px double #FF00FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="left" class="style1">
            <tr>
                <td>
                    <input id="Text1" type="text" />
                </td>
                <td>
                    <input id="Text3" type="text" />
                </td>
            </tr>
            <tr>
                <td>
                    <table border="1">
                        <tr>
                            <th>
                                Nombre
                            </th>
                            <th colspan="2">
                                Telefono
                            </th>
                        </tr>
                        <tr>
                            <td>
                                Juan Perez
                            </td>
                            <td>
                                555 77 854
                            </td>
                            <td>
                                555 77 855
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">
                                Donald Trump
                            </td>
                            <td>
                                555 11 789
                            </td>
                            <td>
                                555 11 790
                            </td>
                        </tr>
                        <tr>
                            <td>
                                555 11 791
                            </td>
                            <td>
                                555 11 792
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="style2">
                        <tr>
                            <th>
                                Titulo1
                            </th>
                            <th colspan="2">
                                Titulo2
                            </th>
                        </tr>
                        <tr>
                            <td>
                                Dato 1
                            </td>
                            <td>
                                Dato 2
                            </td>
                            <td>
                                Algo aca
                            </td>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
