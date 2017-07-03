<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.*" 
        %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Block Buster WEB</title>
    </head>

    <body>

        <h1>Bienvenido a Block Buster Web</h1>

        <%
            Connection conn = null;
            Statement st = null;
            String url = "jdbc:mysql://localhost:3306/blockbuster";
            String user = "irraxd";
            String pass = "Irra12345";

            try {

                Class.forName("com.mysql.jdbc.Driver");
                conn = (Connection) DriverManager.getConnection(url, "root", "");
                st = conn.createStatement();
        %>

        <a href="iniciarSesion.jsp">Iniciar Sesión</a>
        <a href="registro.jsp">Registrarse</a>


        <%
            } catch (Exception ex) {

                out.print("Conexión MALA");
            }

        %>

    </body>
</html>
