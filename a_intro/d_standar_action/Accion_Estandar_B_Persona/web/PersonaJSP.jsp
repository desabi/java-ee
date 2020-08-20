<%-- 
    Document   : PersonaJSP
    Created on : 25/01/2017, 08:39:11 AM
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
        <h2>Datos de la persona</h2>
        <% 
            Object suNombre = request.getAttribute("elNombre");
            Object suEdad = request.getAttribute("laEdad");
            Object suEstatura = request.getAttribute("laEstatura");
            Object suTelefono = request.getAttribute("elTelefono");
            
            out.print("El nombre de la persona es:  " + suNombre + "<br>");
            out.print("La edad de la persona es:  " + suEdad + "<br>");
            out.print("La estatura de la persona es:  " + suEstatura + "<br>");
            out.print("El telefono de la persona es:  " + suTelefono + "<br>");
        
        %>
    </body>
</html>
