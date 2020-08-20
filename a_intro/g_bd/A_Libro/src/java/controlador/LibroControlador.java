/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Libro;
import modelo.LibroDAO;

/**
 *
 * @author desab
 */
public class LibroControlador extends HttpServlet {

    private final String LIBRO_FORMULARIO = "LibroFormulario.jsp";
    private final String LIBRO_LISTAR = "LibroListar.jsp";

    private LibroDAO libroDAO;

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

        String destino = "";
        String accion = request.getParameter("accion");
        libroDAO = new LibroDAO();

        if (accion.equalsIgnoreCase("nuevo")) {
            destino = LIBRO_FORMULARIO;

        } else if (accion.equalsIgnoreCase("insertar")) {

            String titulo = request.getParameter("titulo");
            String autor = request.getParameter("autor");
            float precio = Float.parseFloat(request.getParameter("precio"));

            Libro libro = new Libro();            
            libro.setTitulo(titulo);
            libro.setAutor(autor);
            libro.setPrecio(precio);

            libroDAO.create(libro);

            listar(libroDAO, request);
            destino = LIBRO_LISTAR;

        } else if (accion.equalsIgnoreCase("editar")) {
          
            int id = Integer.parseInt(request.getParameter("id"));
            Libro libro = libroDAO.find(id);

            request.setAttribute("atributoLibro", libro);

            destino = LIBRO_FORMULARIO;

        } else if (accion.equalsIgnoreCase("actualizar")) {

            String titulo = request.getParameter("titulo");
            String autor = request.getParameter("autor");
            float precio = Float.parseFloat(request.getParameter("precio"));
            int id = Integer.parseInt(request.getParameter("id"));
        
            Libro libro = new Libro(id, titulo, autor, precio);
            libroDAO.update(libro);

            listar(libroDAO, request);
            destino = LIBRO_LISTAR;

        } else if (accion.equalsIgnoreCase("eliminar")) {

            int id = Integer.parseInt(request.getParameter("id"));
            
            libroDAO.delete(id);

            listar(libroDAO, request);
            destino = LIBRO_LISTAR;

        } else if (accion.equalsIgnoreCase("listar")){
            listar(libroDAO, request);
            destino = LIBRO_LISTAR;
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher(destino);
        requestDispatcher.forward(request, response);

    }

    private void listar(LibroDAO libroDAO, HttpServletRequest request ) {
        ArrayList<Libro> listaLibros = libroDAO.read();
        request.setAttribute("atributoListaLibros", listaLibros);
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
