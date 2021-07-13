<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BeeWork.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Home</title>
    <link rel="stylesheet" href="public/style/index.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="logo-header">
                <img src="https://agenciakrakendigital.com/casadelasabejas/wp-content/uploads/2019/06/Casa-de-las-Abejas-miel-en-Quito-388x456.png" />
            </div>
            <asp:Label ID="lblTUsuario" runat="server" CssClass="lblTUsuario" Text=""></asp:Label>
            <a href="Index.aspx" class="title">Bee Work</a>
            <nav class="nav-menu">
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#">Acerca</a></li>
                    <li><a href="#">Agregar Empleo</a></li>
                    <li id="EliminarEmpleo" runat="server"><a href="#">Eliminar Empleo</a></li>
                    <asp:Button ID="btnCerrarSesion" runat="server" CssClass="btnCerrarSesion" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" />
                </ul>
            </nav>
        </header>
    </form>
</body>
</html>
