<%-- 
    Document   : PersonaJSP
    Created on : 25/01/2017, 11:15:57 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PERSONA JSP VISTA</title>
    </head>
    <body>
        
        <!-- Crear la accion estandar -->
        <jsp:useBean id="unaPersona" class="modelo.Persona" scope="request" />
        
        <!-- Imprimir los datos -->
        Nombre: <jsp:getProperty name="unaPersona" property="nombre" /> <br>
        Edad: <jsp:getProperty name="unaPersona" property="edad" /> <br>
        Estatura <jsp:getProperty name="unaPersona" property="estatura" /> <br>
        telefono <jsp:getProperty name="unaPersona" property="telefono" /> <br>
        
    </body>
</html>
