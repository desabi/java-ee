/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vista;

import modelo.Persona;
import service.PersonaDAO;

/**
 *
 * @author desab
 */
public class MainNamedQuery {
    public static void main(String[] args) {
        
        PersonaDAO personaDAO = new PersonaDAO();
        
        Persona persona = personaDAO.getEm().createNamedQuery("getID1", Persona.class).getSingleResult();
        System.out.println("persona = " + persona);
        
        personaDAO.close();
        
    }
}
