<%-- 
    Document   : testeProduto
    Created on : 22/05/2018, 16:34:21
    Author     : Jaque
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, 
        DAOs.DAOUsuario,
        Entidades.Usuario, 
        java.text.NumberFormat" %>
<%
    Locale ptBr = new Locale("pt", "BR");

    DAOUsuario dao = new DAOUsuario();
    List<Usuario> usuarios = dao.listInOrderNome();
%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/png" href="fenix.png"/>
        <title>Lista de usuarios</title>

    </head>

    <body>

        Usuarios Cadastrados

        <!-- /.panel-heading -->
        <table border="1px" width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info" style="width: 100%;">
            <thead>
                <tr role="row">
                    <th>Id</th>
                    <th>Usuario</th>
                    <th>Nome</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Usuario u : usuarios) {
                %>
                <tr>
                    <td><label style="text-align: center"><%=u.getIdUsuario()%></label></td>
                    <td><%=u.getUsernameUsuario()%></td>
                    <td><%=u.getNomeUsuario()%></td>
                    <td><%=u.getEmailUsuario()%></td>
                </tr>
                <%}%>

            </tbody>
        </table>


    </body>

</html>
