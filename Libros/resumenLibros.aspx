<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resumenLibros.aspx.cs" Inherits="Libros.resumenLibros" %>
<%@ Import Namespace="Libros" %>
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
        <a href="ingresoLibros.aspx">Ingreso de libros</a> | <a href="realizarPrestamo.aspx">Realizar prestamo</a> | <a href="restaurarLibro.aspx">Restaurar Libros</a> | <a href="resumenLibros.aspx">Resumen de Libros</a> | <a href="devolverLibro.aspx">Devolver libros</a>
    </nav>
            <section>
            <article>
                <h1>Resumen de libros en Base de datos</h1>
                <p>Lista de libros en base de datos.</p>
                
                <table>
                    <tr>
                        <th>ISBN</th>
                        <th>Titulo</th>
                        <th>Cantidad de prestamos</th>
                        <th>Cantidad total de prestamos</th>
                        <th>Cantidad de restauraciones</th>
                    </tr>
                    <%foreach (clsLibros aux in clsLibros.librero)
                      {
                    %>
                    <tr>
                        <th><%= aux.isbm %></th>
                        <th><%= aux.titulo%></th>
                        <th><%= aux.cantidadPrestamos %></th>
                        <th><%=aux.cantidadGlobalPrestamos %></th>
                        <th><%=aux.cantidadRestauraciones %> </th>
                    </tr>
                    <% 
                      }%>
                </table>
                

            </article>
        </section>
    </div>
    </form>
</body>
</html>
