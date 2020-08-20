<%-- 
    Document   : ColoresJSP
    Created on : 6/06/2017, 09:03:57 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FORMULARIOS Y EL</title>
    </head>
    <body>
        <h1>FORMULARIOS Y EL</h1>
        
        <h2>COLORES SELECCIONADOS</h2>
        
        <p> Hola: ${param.nombre} </p>
        
        <%
            String[] coloresSeleccionados = request.getParameterValues("colores");
            
            for (int i = 0; i < coloresSeleccionados.length; i++) {
                out.print(coloresSeleccionados[i]+"<br />");
            }
        %>
    </body>
</html>
