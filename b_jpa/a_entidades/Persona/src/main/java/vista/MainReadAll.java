
package vista;

import java.util.List;
import modelo.Persona;
import service.PersonaDAO;

/**
 *
 * @author desab
 */
public class MainReadAll {
    public static void main(String[] args) {
        
        PersonaDAO personaDAO = new PersonaDAO();
        
        List<Persona> personas = personaDAO.read();
        
        System.out.println(personas);
        
        personaDAO.close();
    }
}
