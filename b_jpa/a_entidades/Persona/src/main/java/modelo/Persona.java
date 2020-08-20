
package modelo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

/**
 *
 * @author desab
 */
@Entity
@NamedQuery(name = "getID1", query = "SELECT p FROM Persona p WHERE p.idPersona = 1")

public class Persona implements Serializable {
    
    @Id
    @GeneratedValue
    private Integer idPersona;
    private String nombre;
    private Integer edad;
    private Float estatura;

    public Persona() {
    }

    public Persona(Integer idPersona, String nombre, Integer edad, Float estatura) {
        this.idPersona = idPersona;
        this.nombre = nombre;
        this.edad = edad;
        this.estatura = estatura;
    }

    public Integer getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(Integer idPersona) {
        this.idPersona = idPersona;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public Float getEstatura() {
        return estatura;
    }

    public void setEstatura(Float estatura) {
        this.estatura = estatura;
    }

    @Override
    public String toString() {
        return "Persona{" + "idPersona=" + idPersona + ", nombre=" + nombre + ", edad=" + edad + ", estatura=" + estatura + '}';
    }        
    
}
