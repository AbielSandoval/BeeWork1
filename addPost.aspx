<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addPost.aspx.cs" Inherits="BeeWork.addPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Empleo</title>
    <link rel="stylesheet" href="public/style/addPost.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
        <div class="logo-header">
            <img src="https://agenciakrakendigital.com/casadelasabejas/wp-content/uploads/2019/06/Casa-de-las-Abejas-miel-en-Quito-388x456.png"/>
        </div>
        <a href="index.aspx" class="title">Bee Work</a>
        <nav class="nav-menu">
            <ul>
                <li><a href="index.aspx">Inicio</a></li>
                <li><a href="acerca.aspx">Acerca</a></li>
                <li id="EliminarEmpleo" runat="server"><a href="deletePost.aspx">Eliminar Empleo</a></li>
                <asp:Button ID="btnCerrarSesion" runat="server" CssClass="btnCerrarSesion" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" />
            </ul>
        </nav>
    </header>
    <section class="form-addPost">
            <h5>Agregar Empleo</h5>
            <div style="height: auto">
                <p><asp:Label ID="lblError1" CssClass="lblError" runat="server" ></asp:Label></p>
                <asp:TextBox ID="txtCompany" runat="server" class="controls" name="Company" placeholder="Company"></asp:TextBox>
                <asp:TextBox ID="txtLogo" runat="server" class="controls" name="Logo" placeholder="Logo"></asp:TextBox>
                <asp:TextBox ID="txtDireccionURL" runat="server" class="controls" name="DireccionURL" placeholder="DireccionURL"></asp:TextBox>
                <asp:TextBox ID="txtPosicion" runat="server" class="controls" name="Posicion" placeholder="Posicion"></asp:TextBox>
                <asp:TextBox ID="txtUbicacion" runat="server" class="controls" name="Ubicacion" placeholder="Ubicacion"></asp:TextBox>
                <asp:DropDownList ID="cbCategoria" runat="server" class="controls" name="Categoria" DataSourceID="SqlDataSource1" DataTextField="Categoria" DataValueField="Categoria"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_a7736e_beeworkConnectionString %>" SelectCommand="SELECT [Categoria] FROM [Categoria]"></asp:SqlDataSource>
                <asp:TextBox ID="txtDescripcion" runat="server" class="controls" name="Descripcion" placeholder="Descripcion" TextMode="MultiLine"></asp:TextBox>
                <asp:TextBox ID="txtComoAplicar" runat="server" class="controls" name="ComoAplicar" placeholder="ComoAplicar"></asp:TextBox>
                <asp:TextBox ID="txtEmail" runat="server" class="controls" name="Email" placeholder="Email"></asp:TextBox>
                <p><asp:Label ID="lblError" CssClass="lblError" runat="server" ></asp:Label></p>
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" type="submit" class="buttons" OnClick="btnAgregar_Click" />

            </div>
            <%--<input type="text" id="Company" class="controls" name="Company" placeholder="Company">
            <input type="text" id="Logo" class="controls" name="Logo" placeholder="Logo">
            <input type="text" id="DireccionURL" class="controls" name="DireccionURL" placeholder="DireccionURL">
            <input type="text" id="Posicion" class="controls" name="Posicion" placeholder="Posicion">
            <input type="text" id="Ubicacion" class="controls" name="Ubicacion" placeholder="Ubicacion">

            <input type="text" id="Descripcion" class="controls" name="Descripcion" placeholder="Descripcion">
            <input type="text" id="ComoAplicar" class="controls" name="ComoAplicar" placeholder="ComoAplicar">
            <input type="text" id="Email" class="controls" name="Email" placeholder="Email">
            <input type="submit" class="buttons" id="btnaddPost" value="Agregar">--%>
    </section>
    </form>
</body>
</html>
