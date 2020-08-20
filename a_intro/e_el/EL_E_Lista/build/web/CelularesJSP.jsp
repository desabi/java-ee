<%-- 
    Document   : CelularesJSP
    Created on : 3/06/2017, 08:54:24 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Celulares</title>
    </head>
    <body>
        <h1>Lista de Celulares</h1>
        
        <p>Mostrar todos</p>
        ${celulares}
        
        <p> 1ro: ${celulares[0]}</p>
        <p> 2do: ${celulares["1"]}</p>
        <p> 3ro: ${celulares[2]}</p>
        <p> 4to: ${celulares["3"]}</p>
        
    </body>
</html>
