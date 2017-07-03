/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author usuario
 */
public class Conexion {

    Connection conn;
    Statement st;
    ResultSet rs;
    //String url = "jdbc:mysql://db4free.net:3306/blockbuster_oing";
    String url = "jdbc:mysql://localhost:3306/blockbuster";
    String user = "irraxd";
    String pass = "Irra12345";

    public Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection(url, "root", "");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int insertarUsuario(Usuario usr) {
        int queryInserted = 0;

        try {
            String query = "INSERT INTO USUARIO (NICK,NOMBRE,APELLIDO,CLAVE,CORREO)"
                    + "VALUES('" + usr.getNick() + "','" + usr.getName() + "','" + usr.getLastName() + "',"
                    + "'" + usr.getPass() + "','" + usr.getMail() + "')";

            st = conn.createStatement();

            queryInserted = st.executeUpdate(query);

        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);

        }

        return queryInserted;

    }
    
    public ResultSet consultarUser(String aux)
    {
        try {
            String query = "SELECT * FROM USUARIO WHERE NICK ='"+aux+"'";
            st = conn.createStatement();
            rs = st.executeQuery(query);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
                
       return rs;
    }
}
