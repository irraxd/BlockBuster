<%-- 
    Document   : cargarDinero
    Created on : 03-jul-2017, 3:00:02
    Author     : usuario
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Usuario"%>
<%
    ArrayList<Usuario> usrList = (ArrayList<Usuario>) request.getSession().getAttribute("usuario");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cargar Dinero a la Cuenta de Block Buster</h1>
        
        
        <form action="cargarDinero.do" method="post">
            <table> <tr>
                    <td>Elegir monto a cargar: </td><td><select name="cbxMontos">
                            <option value="100">$100</option>
                            <option value="500">$500</option>
                            <option value="1000">$1000</option>
                            <option value="5000">$5000</option>
                            <option value="10000">$10000</option>
                        </select></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Cargar Dinero" /></td>>
                </tr>

            </table>
        </form>
        
    </body>
</html>
