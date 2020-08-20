<%-- 
    Document   : TaxiJSP
    Created on : 23/05/2017, 08:33:50 PM
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
        
        <h1>Datos del Taxi</h1>
        
        <p>
            Sitio  : ${unTaxi.sitio} <br/>
            Numero : ${unTaxi.numero} <br/>
            Chofer : ${unTaxi.chofer} <br/>        
        </p>
        
    </body>
    
</html>
