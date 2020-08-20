/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Juguete;
import modelo.Perro;
import modelo.Persona;

/**
 *
 * @author Abi
 */
public class PersonaServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            /* Crear la persona */
            Persona laPersona = new Persona();
            laPersona.setNombre("ABI DS");
            
            
            /* Crear el perro */
            Perro elPerro = new Perro();
            elPerro.setNombre("Rex");
            
            
            /* Crear los juguetes */
            Juguete juguete1 = new Juguete();
            juguete1.setNombre("Hueso de Plastico");
            
            Juguete juguete2 = new Juguete();
            juguete2.setNombre("Plato Volador");
            
            Juguete juguete3 = new Juguete();
            juguete3.setNombre("Pelota");
            
            Juguete[] losJuguetes = {juguete1, juguete2, juguete3};
            /* Colocar los juguetes para el perro */
            elPerro.setJuguetes(losJuguetes);
            
            
            /* Colocar el Perro a la persona */
            laPersona.setPerro(elPerro);
            
            request.setAttribute("persona", laPersona);
            
            RequestDispatcher vista = request.getRequestDispatcher("PersonaJSP.jsp");
            vista.forward(request, response);
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