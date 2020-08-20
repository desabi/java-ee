<%-- 
    Document   : PersonaJSP
    Created on : 4/06/2017, 08:01:56 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Varios Objetos con EL</title>
    </head>
    <body>
        
        <h1>DATOS DE LA PERSONA</h1>
        
        <p>Nombre: ${persona.nombre} </p>
        <p>Nombre: ${persona["nombre"]} </p>
        
        <h2>DATOS DEL PERRO</h2>
        
        <p>Nombre: ${persona.perro.nombre} </p>
        <p>Nombre: ${persona.perro["nombre"]} </p>
        
        <h2>JUGUETES DEL PERRO </h2>
        
        <h3>JUGUETE 1</h3>
        <p> ${persona.perro.juguetes[0].nombre} </p>
        <p> ${persona.perro.juguetes[0]["nombre"]} </p>
        
        <h3>JUGUETE 2</h3>
        <p> ${persona.perro.juguetes["1"].nombre} </p>
        <p> ${persona.perro.juguetes["1"]["nombre"]} </p>
        
        <h3>JUGUETE 3</h3>
        <p> ${persona.perro.juguetes[2].nombre} </p>
        <p> ${persona.perro.juguetes[2]["nombre"]} </p>
        
    </body>
</html>
