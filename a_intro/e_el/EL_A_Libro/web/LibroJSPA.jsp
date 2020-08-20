<%-- 
    Document   : LibroJSPA
    Created on : 26/01/2017, 01:43:25 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos</title>
    </head>
    <body>
        <h1>DATOS DEL LIBRO</h1>
        
        <!-- Crear la accion estandar -->
        <jsp:useBean id="unLibro" class="modelo.Libro" scope="request" />
        
        <!-- Imprimir los datos -->
        Titulo: <jsp:getProperty name="unLibro" property="titulo" /> <br>
        Autor: <jsp:getProperty name="unLibro" property="autor" />   <br>
        Precio: <jsp:getProperty name="unLibro" property="precio" /> <br>
        
    </body>
</html>
