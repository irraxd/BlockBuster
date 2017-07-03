<%-- 
    Document   : exito
    Created on : 02-jul-2017, 21:44:38
    Author     : usuario
--%>

<%
    String exito = (String)request.getSession().getAttribute("exito");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Proceso Exitoso !!!</h1>
        <h2>Mensaje: <%=exito%>  </h2>
    </body>
</html>
