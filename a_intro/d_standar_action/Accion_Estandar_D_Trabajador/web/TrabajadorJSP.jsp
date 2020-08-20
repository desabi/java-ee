<%-- 
    Document   : TrabajadorJSP
    Created on : 25/01/2017, 11:52:25 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TRABAJADOR JSP VISTA </title>
    </head>
    <body>
        
        <h2>Datos del Trabajador</h2>
        
        <!-- Crear la accion estandar -->       
        <jsp:useBean id="unTrabajador" class="modelo.Trabajador" scope="request" />
        
        <!-- imprimir los datos -->
        Nombre: <jsp:getProperty name="unTrabajador" property="nombre" /> <br>
        Sueldo Por Hora: <jsp:getProperty name="unTrabajador" property="sueldoPorHora" /> <br>
        Horas Trabajadas <jsp:getProperty name="unTrabajador" property="horasTrabajadas" /> <br>
        
        <h2>Sueldo del trabajador </h2>
        
    </body>
</html>
