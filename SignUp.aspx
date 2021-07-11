<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BeeWork.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign Up</title>
    <link rel="stylesheet" href="public/style/signUp.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <section class="form-login">
            <h5>Registrarse</h5>
            <input type="text" id="Nombre" class="controls" name="Nombre" placeholder="Nombre"/>
            <input type="text" id="Apellido" class="controls" name="Apellido" placeholder="Apellido"/>
            <input type="text" id="Correo" class="controls" name="Correo" placeholder="Correo"/>
            <input type="text" id="User" class="controls" name="Usuario" placeholder="Usuario"/>
            <input type="password" id="password" class="controls" name="password" placeholder="Contraseña"/>
            <input type="text" id="tipoUser" class="controls" name="TipoUsuario" placeholder="Tipo de Usuario"/>
            <input type="submit" class="buttons" value="Registrarse"/>
            <p><a href="Login.aspx">¿Ya tienes cuenta? Inicia Sesión</a></p>
    </section>
    </form>
</body>
</html>
