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
public class MainCreate {
    public static void main(String[] args) {
        
        PersonaDAO personaDAO = new PersonaDAO();        
        Persona laPersona = new Persona();
        
        laPersona.setNombre("Andrea");
        laPersona.setEdad(25);
        laPersona.setEstatura(1.65F);
        
        personaDAO.create(laPersona);
        personaDAO.close();
        
        
    }
}
