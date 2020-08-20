<%-- 
    Document   : index
    Created on : 22/05/2018, 04:28:58 PM
    Author     : desab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP: CRUD MySQL</title>
    </head>
    <body>
        
        <h1>LISTADO DE LIBROS</h1>
        <h2>CRUD</h2>
               
        <% response.sendRedirect("LibroControlador?accion=listar"); %>
        
    </body>
</html>
