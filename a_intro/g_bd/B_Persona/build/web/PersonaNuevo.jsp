<%-- 
    Document   : PersonaFormulario
    Created on : 7/06/2018, 12:22:41 PM
    Author     : desab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Persona Nuevo</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Persona: Nuevo</h1>
        
        <form action="PersonaControlador?accion=insertar" method="post">
            Nombre   <input type="text" name="nombre" required="" /> <br>
            Edad     <input type="text" name="edad" required="" /> <br>
            Estatura <input type="text" name="estatura" required="" /> <br>
            <input type="submit" value="Registrar" />
        </form>
    </body>
</html>
