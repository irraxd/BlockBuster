<%-- 
    Document   : error
    Created on : 02-jul-2017, 20:13:46
    Author     : usuario
--%>
<%
    String error = (String)request.getSession().getAttribute("error");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ah ocurrido un ERROR !!!</h1>
        <h2>Problema: <%=error%>  </h2>
    </body>
</html>
