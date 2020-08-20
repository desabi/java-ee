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
public class MainUpdate {    
    public static void main(String[] args) {
        
        Persona persona = new Persona();
        PersonaDAO personaDAO = new PersonaDAO();
        
        persona.setIdPersona(2);
        persona.setNombre("Diana Diaz");
        persona.setEdad(20);
        persona.setEstatura(1.58F);                
        
        personaDAO.update(persona);           
        
        personaDAO.close();
    }    
}
