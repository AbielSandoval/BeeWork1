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
            <h1>Bee Work</h1>
            <div class="logo">
                <img src="https://agenciakrakendigital.com/casadelasabejas/wp-content/uploads/2019/06/Casa-de-las-Abejas-miel-en-Quito-388x456.png" alt="Avatar" />
            </div>
            <h5>Registrarse</h5>
            <div style="height: auto">
                <asp:TextBox ID="txtNombre" runat="server" class="controls" name="Nombre" placeholder="Nombre"></asp:TextBox>
                <asp:TextBox ID="txtApellido" runat="server" class="controls" name="Apellido" placeholder="Apellido"></asp:TextBox>
                <asp:TextBox ID="txtCorreo" runat="server" class="controls" name="Correo" placeholder="Correo"></asp:TextBox>
                <asp:TextBox ID="txtUsuario" runat="server" class="controls" name="Usuario" placeholder="Usuario"></asp:TextBox>
                <asp:TextBox ID="txtContraseña" type="password" runat="server" class="controls" name="password" placeholder="Contraseña"></asp:TextBox>
                <p><asp:Label ID="lblError" CssClass="lblError" runat="server" ></asp:Label></p>
                <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" type="submit" class="buttons" OnClick="btnRegistrarse_Click"/>
                <p><a href="Login.aspx">¿Ya tienes cuenta? Inicia Sesión</a></p>
            </div>

            



            <%--<input type="text" id="Nombre" class="controls" name="Nombre" placeholder="Nombre"/>
            <input type="text" id="Apellido" class="controls" name="Apellido" placeholder="Apellido"/>
            <input type="text" id="Correo" class="controls" name="Correo" placeholder="Correo"/>
            <input type="text" id="User" class="controls" name="Usuario" placeholder="Usuario"/>
            <input type="password" id="password" class="controls" name="password" placeholder="Contraseña"/>
            <input type="submit" class="buttons" value="Registrarse"/>
            <p><a href="Login.aspx">¿Ya tienes cuenta? Inicia Sesión</a></p>--%>
    </section>
    </form>
</body>
</html>
