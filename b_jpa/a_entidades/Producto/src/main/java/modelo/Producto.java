
package modelo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author desab
 */
@Entity
@NamedQueries(
        { 
            @NamedQuery(name = "getID1", query = "SELECT p FROM Producto p WHERE p.idProducto = 1"),
            @NamedQuery(name = "todos", query = "SELECT p FROM Producto p"),
            @NamedQuery(name = "getProducto", query = "SELECT p FROM Producto p WHERE p.idProducto = :idBuscado")
        }
)
public class Producto implements Serializable {
    
    @Id
    @GeneratedValue
    private Integer idProducto;
    private String nombre;
    private Double precio;
    private Integer cantidad;

    public Producto() {
    }

    public Producto(Integer idProducto, String nombre, Double precio, Integer cantidad) {
        this.idProducto = idProducto;
        this.nombre = nombre;
        this.precio = precio;
        this.cantidad = cantidad;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return "Producto{" + "idProducto=" + idProducto + ", nombre=" + nombre + ", precio=" + precio + ", cantidad=" + cantidad + '}';
    }
    
    
}
