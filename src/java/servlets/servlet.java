/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alumno
 */
@WebServlet(name = "servlet", urlPatterns = {"/servlet"})
public class servlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
        HttpSession sesion = request.getSession();
        String nom = request.getParameter("nomb");
        String pass = request.getParameter("psw");
        if(nom.equals("Jose") && pass.equals("1234")) {
            String mens = "CORRECTO";
            response(response, nom, mens);
            sesion.setAttribute("nombre", nom);
        }
        else {
            String mens = "INCORRECTO";
            response(response, nom, mens);
        }
        
        
    }
    
    private void response(HttpServletResponse resp, String nom, String msg)
			throws IOException {
        PrintWriter out = resp.getWriter();
	if(msg.equals("CORRECTO")) {
            resp.sendRedirect("calculadora.jsp");
        }
        else {
            resp.sendRedirect("inicioS.jsp?res=12");
        }
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
