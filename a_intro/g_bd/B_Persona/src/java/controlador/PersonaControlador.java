/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import service.PersonaJpaController;
import service.exceptions.NonexistentEntityException;
import modelo.Persona;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author desab
 */
public class PersonaControlador extends HttpServlet {

    private final String PERSONA_NUEVO = "PersonaNuevo.jsp";
    private final String PERSONA_EDITAR = "PersonaEditar.jsp";
    private final String PERSONA_LISTA = "PersonaLista.jsp";

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
        PersonaJpaController personaJPAController = new PersonaJpaController();

        if (accion.equalsIgnoreCase("nuevo")) {
            destino = PERSONA_NUEVO;

        } else if (accion.equalsIgnoreCase("insertar")) {

            /* Obtener los datos del formulario */
            String nombre = request.getParameter("nombre");
            int edad = Integer.parseInt(request.getParameter("edad"));
            float estatura = Float.parseFloat(request.getParameter("estatura"));

            Persona persona = new Persona();
            persona.setNombre(nombre);
            persona.setEdad(edad);
            persona.setEstatura(estatura);

            personaJPAController.create(persona);

            List<Persona> listaPersonas = personaJPAController.findPersonaEntities();
            request.setAttribute("atributoListaPersonas", listaPersonas);
            destino = PERSONA_LISTA;

        } else if (accion.equalsIgnoreCase("editar")) {

            int id = Integer.parseInt(request.getParameter("id"));
            Persona persona = personaJPAController.findPersona(id);

            request.setAttribute("atributoPersona", persona);

            destino = PERSONA_EDITAR;

        } else if (accion.equalsIgnoreCase("actualizar")) {

            try {
                /* Obtener los datos del formulario */
                int id = Integer.parseInt(request.getParameter("id"));
                String nombre = request.getParameter("nombre");
                int edad = Integer.parseInt(request.getParameter("edad"));
                float estatura = Float.parseFloat(request.getParameter("estatura"));

                Persona persona = new Persona(id, nombre, edad, estatura);

                personaJPAController.edit(persona);
            } catch (Exception ex) {
                Logger.getLogger(PersonaControlador.class.getName()).log(Level.SEVERE, null, ex);
            }

            List<Persona> listaPersonas = personaJPAController.findPersonaEntities();
            request.setAttribute("atributoListaPersonas", listaPersonas);
            destino = PERSONA_LISTA;

        } else if (accion.equalsIgnoreCase("eliminar")) {
            try {
                int id = Integer.parseInt(request.getParameter("id"));                          
                
                personaJPAController.destroy(id);
                
            } catch (NonexistentEntityException ex) {
                Logger.getLogger(PersonaControlador.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            List<Persona> listaPersonas = personaJPAController.findPersonaEntities();
            request.setAttribute("atributoListaPersonas", listaPersonas);
            destino = PERSONA_LISTA;
            
        } else if (accion.equalsIgnoreCase("listar")) {

            List<Persona> listaPersonas = personaJPAController.findPersonaEntities();
            request.setAttribute("atributoListaPersonas", listaPersonas);
            destino = PERSONA_LISTA;
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher(destino);
        requestDispatcher.forward(request, response);

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
