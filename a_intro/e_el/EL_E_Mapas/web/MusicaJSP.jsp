<%-- 
    Document   : MusicaJSP
    Created on : 4/06/2017, 07:13:07 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Utilizando Mapas con EL</title>
    </head>
    <body>
        
        <h1>Utilizando Mapas con EL</h1>
        
        <!-- Imprimir el mapa completo -->
        <p> ${musica} </p>
        
        <!-- Imprimir el primer genero -->
        
        <!-- se pone el nombre del genero -->
        <!-- e imprimie el nombre del grupo de ese genero -->
        <p> ${musica.rock} </p>
        
        <!-- otra forma de acceder es asi: -->
        <p> ${musica["rock"]} </p>
        
        
        <p> ${musica.reggae} </p>
        <p> ${musica["reggae"]} </p>
        
        <p> ${musica.metal} </p>
        <p> ${musica["metal"]} </p>
        
        <p> ${musica.power} </p>
        <p> ${musica["power"]} </p>
        
        <!--
            Con mapas y objetos (beans) 
            podemos utilizar ambos
            el punto . y los corchetes []
        -->        
        
    </body>
</html>
