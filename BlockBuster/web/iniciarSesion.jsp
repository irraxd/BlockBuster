<%-- 
    Document   : iniciarSesion
    Created on : 02-jul-2017, 18:10:22
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LOGIN DE SOCIO BLOCKBUSTER</h1>
        
        <form action="login.do" method="post">
            <table>
                <tr>
                    <td>Nickname: </td><td><input type="text" name="txtNick" /></td>
                </tr>
                <tr>
                    <td>Password: </td><td><input type="password" name="txtPass" /></td>
                </tr>
                <tr>
                    <td></td><td><input type="submit" value="Iniciar Sesión" /></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
