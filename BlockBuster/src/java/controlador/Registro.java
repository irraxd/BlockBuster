/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Conexion;
import modelo.Usuario;

/**
 *
 * @author usuario
 */
public class Registro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nick = (request.getParameter("txtNick")).trim();
        String pass = (request.getParameter("txtPass")).trim();
        String pass2 = (request.getParameter("txtPass2")).trim();
        String mail = (request.getParameter("txtMail")).trim();
        String mail2 = (request.getParameter("txtMail2")).trim();
        String name = (request.getParameter("txtName")).trim();
        String lastName = (request.getParameter("txtLast")).trim();
        String error = "";
        String exito = "";

        if (nick.equals("") || pass.equals("") || pass2.equals("") || mail.equals("")
                || mail2.equals("") || name.equals("") || lastName.equals("")) {
            error = "Debe completar todos los campos...";
            request.getSession().setAttribute("error", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);

        } else if (pass.equals(pass2)) {

            if (mail.equals(mail2)) {

                Usuario usr = new Usuario(0, nick, pass, mail, name, lastName, 0);
                Conexion con = new Conexion();

                
                
                if ( con.insertarUsuario(usr)  > 0) {

                    exito = "Se ha registrado existosamente !!!";
                    request.getSession().setAttribute("exito", exito);
                    request.getRequestDispatcher("exito.jsp").forward(request, response);

                } else {
                    error = "Ah habido un error en la base de datos";
                    request.getSession().setAttribute("error", error);
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }

            } else {

                error = "Los correos deben ser idénticos...";
                request.getSession().setAttribute("error", error);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }

        } else {

            error = "Las contraseñas deben ser idénticas...";
            request.getSession().setAttribute("error", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
