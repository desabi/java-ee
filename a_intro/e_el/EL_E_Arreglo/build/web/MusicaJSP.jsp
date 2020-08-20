 <%-- 
    Document   : MusicaJSP
    Created on : 24/05/2017, 02:55:29 PM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Musica Favorita</title>
    </head>
    
    <body>
        <h1>Musica Favorita</h1>
        
        <p> ${listaMusica} </p>
        
        <!-- Accedemos al primer elemento del arreglo -->
        <p> ${listaMusica[0]} </p>
        
        <!-- El indice 1 se puede colocar entre comillas, no hay problema -->
        <!-- Esta sintaxis no tiene nada que ver con java, Expresion Languaje es otra cosa -->
        <p> ${listaMusica["1"]}</p>
        
        <p> ${listaMusica[2]} </p>
        
        <p> ${listaMusica["3"]} </p>
        
        <p></p>
        
    </body>
    
</html>
