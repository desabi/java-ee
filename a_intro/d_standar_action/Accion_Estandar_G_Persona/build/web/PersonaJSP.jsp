<%-- 
    Document   : PersonaJSP
    Created on : 26/01/2017, 10:07:31 AM
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
        
        <h1>DATOS OBTENIDOS DEL FORMULARIO</h1>
        
        <!-- Crear la accion estandar -->
        <jsp:useBean id="persona" class="modelo.Persona" scope="request" />
        
        <!-- Obtener los datos del formulario -->
        <!-- Se coloca un asterisco para indicar que se obtienen todos los campos -->
        <!-- Deben tener el mismo nombre en el formulario y la clase -->
        <jsp:setProperty name="persona" property="*" />
        
        <!-- Imprimir los datos -->
        Nombre:   <jsp:getProperty name="persona" property="nombre" /> <br>
        Edad:     <jsp:getProperty name="persona" property="edad" /> <br>
        Estatura: <jsp:getProperty name="persona" property="estatura" /> <br>
        Telefono: <jsp:getProperty name="persona" property="telefono" /> <br>
        
    </body>
</html>
