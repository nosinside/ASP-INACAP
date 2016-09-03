<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="restaurarLibro.aspx.cs" Inherits="Libros.restaurarLibro" %>

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
                <h1>Restauración de Libros</h1>
                <p>En esta sección, realizaremos la restauración de los libros.</p>
                <p>
                    <asp:Label ID="lblISBM" runat="server" Text="ISBN"></asp:Label>
                &nbsp;<asp:TextBox ID="txtISBM" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfISBN" runat="server" ControlToValidate="txtISBM" ErrorMessage="*" ForeColor="Tomato">Requerido</asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
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
