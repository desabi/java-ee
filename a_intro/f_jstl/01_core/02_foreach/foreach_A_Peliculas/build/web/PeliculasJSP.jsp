<%-- 
    Document   : PeliculasJSP
    Created on : 5/06/2017, 07:14:55 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>UTILIZANDO SCRIPTING</h1>
        
        <% 
            out.print("Imprimiendo los datos del arreglo");
            
            /* Obtener el arreglo del servlet */
            String[] elementos = (String[]) request.getAttribute("listaPeliculas");
            
            /* Imprimir de manera manual */
            out.print("<p>"+elementos[0]+"</p>");
            out.print("<p>"+elementos[1]+"</p>");
            out.print("<p>"+elementos[2]+"</p>");
            out.print("<p>"+elementos[3]+"</p>");
            
            /* Imprimir con un for */
            for (int i = 0; i < elementos.length; i++) {
                out.print("<p>" + elementos[i] + "</p>");
            }
            
        %>
        
        <!-- Para poder utilizar JSTL tenemos que importar una libreria -->
        <!--
            0. Importar la libreria con el taglib, mirar arriba en la importacion
            1. Clic derecho en bibliotecas
            2. Agregar archivo jar
            3. seleccionar dos librerias
                taglibs-standard-impl-1.2.5
                taglibs-standard-spec-1.2.5
            4. Aceptar
        -->
        
        <h2>UTILIZANDO JSTL</h2>
        
        <c:forEach var="pelicula" items="${listaPeliculas}" >
            <p> ${pelicula} </p>
        </c:forEach>
        
    </body>
</html>
