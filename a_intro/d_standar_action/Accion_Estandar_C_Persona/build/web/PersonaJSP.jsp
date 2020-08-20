<%-- 
    Document   : PersonaJSP
    Created on : 25/01/2017, 10:31:23 AM
    Author     : Abi
--%>

<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
        /* Obtener el atributo unaPersona del servlet */
        Persona personaX = (Persona) request.getAttribute("unaPersona");
        
        /* Obtener los datos de unaPersona */
        out.print("El nombre es es: " + personaX.getNombre() + "<br>");
        out.print("La edad es: " + personaX.getEdad() + "<br>");
        out.print("La estatura es: " + personaX.getEstatura() + "<br>" );
        out.print("El telefono es: " + personaX.getTelefono() + "<br>" );
        
        %>
    </body>
</html>
