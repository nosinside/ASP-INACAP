<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingresoLibros.aspx.cs" Inherits="Libros.ingresoLibros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav>
        <a href="ingresoLibros.aspx">Ingreso de libros</a> | <a href="realizarPrestamo.aspx">Realizar prestamo</a> | <a href="restaurarLibro.aspx">Restaurar Libros</a> | <a href="resumenLibros.aspx">Resumen de Libros</a> |
    </nav>
        <section>
            <article>
                <h1>Ingreso de Libros</h1>
                <p>en esta sección se deben ingresar los libros al Sistema</p>
                <p>
                    <asp:Label ID="lblISBM" runat="server" Text="ISBN"></asp:Label>
                &nbsp;<asp:TextBox ID="txtISBM" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfISBN" runat="server" ControlToValidate="txtISBM" ErrorMessage="*" ForeColor="Tomato">Requerido</asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="lblTitulo" runat="server" Text="Titulo"></asp:Label>
                &nbsp;<asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfTitulo" runat="server" ControlToValidate="txtTitulo" ErrorMessage="*" ForeColor="Tomato">Requerido</asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="Label3" runat="server" Text="Autor"></asp:Label>
                &nbsp;<asp:TextBox ID="txtAutor" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfAutor" runat="server" ErrorMessage="Requerido" ForeColor="Tomato" ControlToValidate="txtAutor"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="lblEditorial" runat="server" Text="Editorial"></asp:Label>
&nbsp;
                    <asp:DropDownList ID="txtEditorial" runat="server">
                        <asp:ListItem Value="Castillana"></asp:ListItem>
                        <asp:ListItem>Rincon del Vago</asp:ListItem>
                        <asp:ListItem>Taringa</asp:ListItem>
                        <asp:ListItem>Marcianito 100% Real</asp:ListItem>
                        <asp:ListItem>1 Link Mega / Rapidshare</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="rfEditorial" runat="server" ErrorMessage="Requerido" ForeColor="Tomato" ControlToValidate="txtEditorial"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="lblMensaje" runat="server" Text="mensaje"></asp:Label>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" />
                </p>

            </article>
        </section>
    </div>
    </form>
</body>
</html>
