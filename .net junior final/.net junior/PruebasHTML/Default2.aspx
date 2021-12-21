<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Button1_onclick() {

        }

        function Submit1_onclick() {

        }

// ]]>
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <input name="fuma" type="checkbox" checked="checked" value="si" />
            Fumador
            <input name="deporte" type="checkbox" value="si" />
            Deportista
        </p>
        <p>
            <input id="Button1" type="button" value="button" onclick="return Button1_onclick()" /></p>
        <p>
            <input id="Reset1" type="reset" value="reset" /></p>
        <p>
            <input id="Submit1" type="submit" value="submit" onclick="return Submit1_onclick()" /></p>
        <p>
            <input type="text" value="Soy el original" />
            <input type="reset" />
        </p>
    </div>
    </form>
    <form method="get" action="http://www.google.com/search">
    <p>
        <input name="q" type="text" />
        <input type="submit" value="Busca en Google" /></p>
    </form>
</body>
</html>
