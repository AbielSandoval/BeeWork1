<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acerca.aspx.cs" Inherits="BeeWork.Acerca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Acerca</title>
    <link rel="stylesheet" href="public/style/acerca.css" type="text/css" />
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
                    <li><a href="Index.aspx">Inicio</a></li>
                    <li><a href="addPost.aspx">Agregar Empleo</a></li>
                    <li id="EliminarEmpleo" runat="server"><a href="deletePost.aspx">Eliminar Empleo</a></li>
                    <asp:Button ID="btnCerrarSesion" runat="server" CssClass="btnCerrarSesion" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" />
                </ul>
            </nav>
        </header>
        <div>
            <h1 style="margin: 10px 30px 30px 30px; font-family: Arial; color: white; padding-top: 20px; padding-right: 20px; padding-bottom: 20px; width: 1000px;">¿Quiénes somos?</h1>
            <p style="color: white; font-family: Arial; margin-right: 30px; margin-bottom: 30px; margin-left: 30px; width: 1100px;">
                Beework es una empresa que tiene la finalidad de ayudar a los jóvenes que se desarrollan en el ámbito de la tecnología y se encuentran desempleados, a la misma vez le damos las facilidades a buscadores de personal para enriquecer y facilitar el proceso de admisión y búsqueda de nuevos empleados.
            </p>
            <h1 style="font-family: Arial; color: white; margin-right: 30px; margin-bottom: 30px; margin-left: 30px; width: 1100px;">
                Historia
            </h1>
            <p style="font-family: Arial; color: white; margin-right: 30px; margin-bottom: 30px; margin-left: 30px; width: 1100px;">
                Tres jóvenes vieron la necesidad de falta de empleo en los diferentes ambientes en los que se encontraban y desarrollaban como jóvenes, aún más  en un mundo donde la tecnología se está volviendo el arma principal de la sociedad, tanto para bien como para mal, viendo la necesidad de surtir empleos y empleados de manera confiada y segura,  construir un portal web para la cumplir ambas necesidades en el área de la tecnología era la opción más viable para la solución de la problemática. Y así nació la empresa de empleos Beework un portal para buscar empleos y ayudar a los empleadores a llenar las vacantes disponibles de manera segura y confiada.
            </p>
            <p style="font-family: Arial; color: white; margin-right: 30px; margin-bottom: 30px; margin-left: 30px; width: 1100px;">
                Para sugerencias u/u opiniones contactarnos:<br />
                <a href="Beework00@gmail.com">Beework00@gmail.com</a>
            </p>
        </div>
    </form>
</body>
</html>
