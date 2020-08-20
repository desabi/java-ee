<%-- 
    Document   : TaxiJSP
    Created on : 29/01/2017, 02:31:27 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DATOS DEL TAXI</title>
    </head>
    <body>
        
        <h1>DATOS DEL TAXI</h1>
        
        <h2>Taxi: </h2>
        <!-- Se utiliza unTaxi por que asi se llama el atributo en el Servlet -->
        Sitio:   ${unTaxi.sitio} <br />
        Numero:  ${unTaxi.numero} <br />
        
        <h2>Chofer: </h2>
        <!-- Se utilizaria elChofer por que asi se llama el objeto en el servlet -->
        <!-- Pero no lo acepta, no muestra la informacion -->
        
        <!-- Se utiliza chofer para que funcione -->
        Nombre:    ${unTaxi.chofer.nombre} <br />
        Telefono:  ${unTaxi.chofer.telefono} <br />
        
    </body>
</html>
