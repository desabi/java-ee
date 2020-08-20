<%-- 
    Document   : PersonaJSP
    Created on : 23/05/2017, 04:14:49 PM
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
        
        <h1>DATOS DE LA PERSONA</h1>
        
        <p>Datos Personales</p>
        
        Nombre  : ${unaPersona.nombre}   <br />
        Edad    : ${unaPersona.edad}     <br />
        Telefono: ${unaPersona.telefono} <br />
        
        <p>Dirección</p>
        Estado : ${unaPersona.direccion.estado} <br />
        Ciudad : ${unaPersona.direccion.ciudad} <br />
        Colonia: ${unaPersona.direccion.colonia} <br />
        
    </body>
</html>
