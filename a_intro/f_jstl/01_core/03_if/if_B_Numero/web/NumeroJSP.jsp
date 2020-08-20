<%-- 
    Document   : NumeroJSP
    Created on : 30/06/2017, 11:01:04 AM
    Author     : Abi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>verificacion del numero</title>
    </head>
    <body>
        
        <h1>VERIFICACION DEL NUMERO</h1>
        
        El numero escrito es: <c:out value="${param.numero}" /> <br /> <br />
        
        <!-- Esto solo se mostrara cuando el numero sea positivo -->
        <c:if test="${param.numero > 0}">
            El numero es <c:out value="${param.numero}" /> positivo 
        </c:if>
        
    </body>
</html>
