<%-- 
    Document   : TecnologiasJSP
    Created on : 6/06/2017, 08:15:22 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FORMULARIOS Y JSTL</title>
    </head>
    <body>
        <h1>FORMULARIOS Y JSTL</h1>
        
        <h2>Tecnologías Seleccionadas</h2>
        
        <p>Nombre: ${param.nombre}</p>
        
        <p>
            <!-- SE utiliza paramValues para cuando son varios elementos -->
            
            <!-- Esto solo mostrara las tres primeros tecnologias  -->
            ${paramValues.tecnologias[0]} <br />
            ${paramValues.tecnologias[1]} <br />
            ${paramValues.tecnologias[2]} <br />
            
            <!-- Si seleccionamos una, solo muestra una -->
            <!-- Si seleccionamos tres, muestra las tres seleccionados -->
            <!-- Pero si seleccionamos todas, solo mostrara las 3 primeras -->
            
            <!-- Lo que necesitamos hacer es crear un array y guardar ahi los valores seleccionados -->    
            <!-- Para despues recorrerlos -->
            <!--
                ¿Como logramos esto?
                
                1ra: Con JSP (utilizando un ciclo for)
                2da: con JSTL utlizando un foreach (mas adelante se vera)
            -->
        </p>
    </body>
</html>
