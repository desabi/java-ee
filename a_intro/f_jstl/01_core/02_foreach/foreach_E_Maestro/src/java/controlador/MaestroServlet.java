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
import modelo.Maestro;
import modelo.Materia;

/**
 *
 * @author Abi
 */
public class MaestroServlet extends HttpServlet {

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
            
            /* Crear el Maestro */
            Maestro unMaestro = new Maestro();
            
            unMaestro.setNombre("abi ds");
            unMaestro.setProfesion("Ing. en Sistemas");
            
            /* Crear las materias */
            Materia materia1 = new Materia();
            Materia materia2 = new Materia();
            Materia materia3 = new Materia();
            Materia materia4 = new Materia();
            
            materia1.setNombre("Automatas");
            materia1.setHoras(4);
            
            materia2.setNombre("Computacion");
            materia2.setHoras(3);
            
            materia3.setNombre("Redes");
            materia3.setHoras(5);
            
            materia4.setNombre("Estructura de Datos");
            materia4.setHoras(2.5);
            
            /* Crear un arreglo de materias */
            Materia[] materias = {materia1, materia2, materia3, materia4};
            
            /* Colocar las materias al maestro */
            unMaestro.setMaterias(materias);
            
            request.setAttribute("elMaestro", unMaestro);
            
            RequestDispatcher vista = request.getRequestDispatcher("MaestroVista.jsp");
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
