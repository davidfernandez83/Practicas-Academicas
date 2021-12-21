<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea></div>
    </form>
    <p>
        Elija Provincia:
        <select name="provincia">
            <option>Buenos Aires</option>
            <option>Córdoba</option>
            <option>Mendoza</option>
            <option>Salta</option>
        </select>
    </p>
    <p>
        <label>
            <input type="checkbox" />
            Con label</label></p>
    <p>
        <input type="checkbox" />
        Sin label</p>
<fieldset>
        <legend>Información personal</legend>
        <label>
            Nombre:
            <input type="text" /></label>
        <label>
            Apellido:
            <input type="text" /></label>
        <label>
            <input type="checkbox" />
            Soltero</label>
    </fieldset>
    <fieldset>
        <legend>Información académica</legend>
        <label>
            Universidad:
            <input type="text" /></label>
        <label>
            <input type="checkbox" />
            Título obtenido</label>
    </fieldset>

</body>
</html>
