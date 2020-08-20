<%-- 
    Document   : LibroVista
    Created on : 4/12/2016, 04:10:47 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>INFORMACION DEL LIBRO</h1>

        <!-- Crear el bean  -->
        <jsp:useBean id="libro_id" class="modelo.Libro" scope="request" >
            <!-- Establecer los datos -->
            <jsp:setProperty name="libro_id" property="titulo" param="campoTitulo" />
            <jsp:setProperty name="libro_id" property="precio" param="campoPrecio" />
        </jsp:useBean>

        <!-- Imprimir los datos -->
        Nombre: <jsp:getProperty name="libro_id" property="titulo" /> <br />
        Precio: <jsp:getProperty name="libro_id" property="precio" />

    </body>
</html>
