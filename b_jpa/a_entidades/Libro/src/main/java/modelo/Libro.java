package modelo;



import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author desab
 */
@Entity
public class Libro implements Serializable {

    @Id
    private int idLibro;
    private String titulo;
    private int paginas;

    public Libro() {
    }

    public Libro(int idLibro, String titulo, int paginas) {
        this.idLibro = idLibro;
        this.titulo = titulo;
        this.paginas = paginas;
    }

    public int getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(int idLibro) {
        this.idLibro = idLibro;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getPaginas() {
        return paginas;
    }

    public void setPaginas(int paginas) {
        this.paginas = paginas;
    }

    @Override
    public String toString() {
        return "Libro{" + "idLibro=" + idLibro + ", titulo=" + titulo + ", paginas=" + paginas + '}';
    }
    
}
