<%-- 
    Document   : TrabajadorJSP
    Created on : 25/01/2017, 08:59:22 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String suNombre = (String) request.getAttribute("elNombre");
            String suSueldoPorHora = (String) request.getAttribute("elSueldoPorHora");
            String susHorasTrabajadas = (String) request.getAttribute("lasHorasTrabajadas");
            
            out.print("El nombre del empleado es: " + suNombre + "<br>");
            out.print("El sueldo por hora es: " + suSueldoPorHora + "<br>");
            out.print("Las horas trabajadas fueron: " + susHorasTrabajadas);
        %>
    </body>
</html>
