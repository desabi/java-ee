<%-- 
    Document   : PersonaJSP
    Created on : 23/05/2017, 04:50:11 PM
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
        
        <h1>Datos de la Persona</h1>
        
        <p>
            Nombre   : ${unaPersona.nombre}   <br />
            Edad     : ${unaPersona.edad}     <br />
            Telefono : ${unaPersona.telefono} <br />
        </p>
        
    </body>
</html>
