/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vista;

import service.PersonaDAO;

/**
 *
 * @author desab
 */
public class MainDelete {
    public static void main(String[] args) {
        
        PersonaDAO personaDAO = new PersonaDAO();
        
        personaDAO.delete(5);
        
        personaDAO.close();
        
    }
    
}
