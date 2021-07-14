﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletePost.aspx.cs" Inherits="BeeWork.deletePost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Posts</title>
    <link rel="stylesheet" href="public/style/deletePost.css" type="text/css" />
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
                    <li><a href="#">Acerca</a></li>
                    <li><a href="addPost.aspx">Agregar Empleo</a></li>
                    <li id="EliminarEmpleo" runat="server"><a href="#">Eliminar Empleo</a></li>
                    <asp:Button ID="btnCerrarSesion" runat="server" CssClass="btnCerrarSesion" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" />
                </ul>
            </nav>
        </header>
        <div>
            <h1 style="margin: 10px 30px 30px 30px">&nbsp;Empleos</h1>
        </div>
        <div style="margin: 10px 30px 30px 30px; text-align: center;">
            <asp:GridView ID="gvPosts" runat="server" CssClass="gvPosts" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="145px" style="margin-top: 20px" Width="1150px" DataKeyNames="ID" OnSelectedIndexChanged="gvPosts_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    
                    <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                    <asp:BoundField DataField="Posicion" HeaderText="Posicion" SortExpression="Posicion" />
                    <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" SortExpression="Ubicacion" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:BoundField DataField="ComoAplicar" HeaderText="ComoAplicar" SortExpression="ComoAplicar" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" >
                        <ControlStyle CssClass="btnBorrar"></ControlStyle>
                    </asp:CommandField>
                    
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_a7736e_beeworkConnectionString %>" 
                SelectCommand="SELECT * FROM [Post]" 
                DeleteCommand="DELETE FROM [Post] WHERE [ID] = @ID" >
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
