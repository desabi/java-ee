<%-- 
    Document   : LibroJSPB
    Created on : 26/01/2017, 01:35:14 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DATOS DEL LIBRO</title>
    </head>
    <body>
        <h1>DATOS DEL LIBRO USANDO EL</h1>
        
        <!-- obtenemos los datos del servlet -->
        <!-- Utilizamos expresion language -->
        Titulo: ${unLibro.titulo} <br>
        Autor:  ${unLibro.autor}  <br>
        Precio: ${unLibro.precio} <br>
        
    </body>
</html>
