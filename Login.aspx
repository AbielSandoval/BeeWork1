<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BeeWork.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="public/style/login.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <section class="form-login">
            <h5>Ingresar</h5>
            <input type="text" id="User" class="controls" name="Usuario" placeholder="Usuario"/>
            <input type="password" id="password" class="controls" name="password" placeholder="Contraseña"/>
            <input type="submit" class="buttons" value="Ingresar"/>
            <p><a href="SignUp.aspx">¿No tienes cuenta? Registrate</a></p>
        </section>
    </form>
</body>
</html>
