<%-- 
    Document   : PersonaJSP
    Created on : 26/01/2017, 09:06:32 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DATOS DE LA PERSONA</title>
    </head>
    <body>
        <h1>DATOS OBTENIDOS DIRECTAMENTE DEL FORMULARIO</h1>
        
        <!-- Crear la accion estandar -->
        <jsp:useBean id="laPersona" class="modelo.Persona" scope="request" />
        
        <!-- Obtener datos del formulario -->
        <!-- Ya no se le coloca el atributo param -->
        <!-- Por que el nombre del campo en el formulario -->
        <!-- y el nombre del atributo en la clase son iguales -->
        <jsp:setProperty name="laPersona" property="nombre" />
        <jsp:setProperty name="laPersona" property="edad" />
        <jsp:setProperty name="laPersona" property="estatura" />
        <jsp:setProperty name="laPersona" property="telefono" />
        
        <!-- Imprimir los datos -->
        Nombre: <jsp:getProperty name="laPersona" property="nombre" /> <br>
        Edad: <jsp:getProperty name="laPersona" property="edad" /> <br>
        Estatura: <jsp:getProperty name="laPersona" property="estatura" /> <br>
        Telefono: <jsp:getProperty name="laPersona" property="telefono" /> <br>
        
    </body>
</html>
