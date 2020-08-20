
package modelo;

/**
 *
 * @author Abi
 */
public class Persona {
    
    private String nombre;
    private Calzado[] calzados;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Calzado[] getCalzados() {
        return calzados;
    }

    public void setCalzados(Calzado[] calzados) {
        this.calzados = calzados;
    }
        
}
