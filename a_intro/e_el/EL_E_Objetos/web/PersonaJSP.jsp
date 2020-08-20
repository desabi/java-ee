<%-- 
    Document   : PersonaJSP
    Created on : 4/06/2017, 07:35:28 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Objetos/Beans y EL</title>
        
    </head>
    <body>
        
        <h2>Datos del Objeto/JavaBean</h2>
        
        <p> ${unaPersona.nombre} </p>
        <p> ${unaPersona["nombre"]} </p>
        
        <p> ${unaPersona.edad} </p>
        <p> ${unaPersona["edad"]}</p>
        
        <p> ${unaPersona.estatura} </p>
        <p> ${unaPersona["estatura"]} </p>
        
        <p> ${unaPersona.telefono} </p>
        <p> ${unaPersona["telefono"]} </p>
        
    </body>
</html>
