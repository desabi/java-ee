<%-- 
    Document   : index
    Created on : 25/05/2018, 09:23:43 PM
    Author     : desab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%-- <% response.sendRedirect("LibroControlador?accion=listar"); %> --%>
        <% response.sendRedirect("PersonaControlador?accion=listar"); %>
    </body>
</html>
