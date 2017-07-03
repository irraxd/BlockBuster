<%-- 
    Document   : registro
    Created on : 02-jul-2017, 18:23:51
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRO</title>
    </head>
    <body>
        <h1>REGISTRO DE SOCIO BLOCKBUSTER</h1>
        
        <form action="registro.do" method="post">
            <table>
                <tr>
                    <td>Name: </td><td><input type="text" name="txtName" /></td>
                </tr>
                <tr>
                    <td>Lastname: </td><td><input type="text" name="txtLast" /></td>
                </tr>
                <tr>
                    <td>Nickname: </td><td><input type="text" name="txtNick" /></td>
                </tr>
                <tr>
                    <td>Password: </td><td><input type="password" name="txtPass" /></td>
                </tr>
                <tr>
                    <td>Repeat Password: </td><td><input type="password" name="txtPass2" /></td>
                </tr>
                <tr>
                    <td>E-Mail:</td><td><input type="text" name="txtMail" /></td>
                </tr>
                <tr>
                    <td>Repeat E-Mail:</td><td><input type="text" name="txtMail2" /></td>
                </tr>
                <tr>
                    <td></td><td><input type="submit" value="Registrar" /></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
