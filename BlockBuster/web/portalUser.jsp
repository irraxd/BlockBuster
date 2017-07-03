<%-- 
    Document   : portalUser
    Created on : 03-jul-2017, 2:14:02
    Author     : usuario
--%>

<%@page import="modelo.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Usuario> usrList = (ArrayList<Usuario>) request.getSession().getAttribute("usuario");
    request.getSession().setAttribute("usuario", usrList);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Portal de<%=" " + usrList.get(0).getNick()%> </title>
    </head>
    <body>
        <h1>Bienvenido,<%=" " + usrList.get(0).getName() + " " + usrList.get(0).getLastName()%> </h1>

        <p>Su saldo actual es de: $<%=usrList.get(0).getCredit()%> Pesos</p>
        <p>Haga click <a href="cargarDinero.jsp">aquí</a> para agregar más.</p>



        <a href="portalMail.jsp" target="_blank">Mi bandeja de correos</a>
        
    </body>
</html>
<%
            
            
        %>