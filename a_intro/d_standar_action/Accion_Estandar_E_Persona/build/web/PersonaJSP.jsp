<%-- 
    Document   : PersonaJSP
    Created on : 26/01/2017, 08:20:41 AM
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
        
        <h1>Datos obtenidos directament del formulario</h1>
        
        <h2>Datos de la persona</h2>
        
        <!-- Crear la accion estandar -->
        <jsp:useBean id="laPersona" class="modelo.Persona" scope="request" />
        
        <!-- Obtener los datos del formulario -->
        <jsp:setProperty name="laPersona" property="nombre" param="campoNombre" />
        <jsp:setProperty name="laPersona" property="edad" param="campoEdad" />
        <jsp:setProperty name="laPersona" property="estatura" param="campoEstatura" />
        <jsp:setProperty name="laPersona" property="telefono" param="campoTelefono" />
        
        <!-- Imprimir los datos -->
        Nombre: <jsp:getProperty name="laPersona" property="nombre" /> <br>
        Edad: <jsp:getProperty name="laPersona" property="edad" /> <br>
        Estatura: <jsp:getProperty name="laPersona" property="estatura" /> <br>
        Telefono: <jsp:getProperty name="laPersona" property="telefono" /> <br>
        
    </body>
</html>
