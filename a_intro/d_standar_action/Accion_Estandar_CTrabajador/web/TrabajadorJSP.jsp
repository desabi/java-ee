<%-- 
    Document   : TrabajadorJSP
    Created on : 25/01/2017, 10:49:43 AM
    Author     : Abi
--%>

<%@page import="modelo.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trabajador JSP Vista </title>
    </head>
    <body>
        <%
            /* Obtener el atirbuto unTrabajador del servlet */
            Trabajador trabajadorX = (Trabajador) request.getAttribute("unTrabajador");
            
            /* Obtener los datos del trabajador */
            out.print("El nombre es: " + trabajadorX.getNombre() +"<br>");
            out.print("El sueldo por hora es: " + trabajadorX.getSueldoPorHora() + "<br>" );
            out.print("Las horas trabajadas son: " + trabajadorX.getHorasTrabajadas() + "<br>");
            
            double sueldoTotal = trabajadorX.getSueldoPorHora() * trabajadorX.getHorasTrabajadas();
            out.print("Sueldo total: " + sueldoTotal);
            
        %>
        
    </body>
</html>
