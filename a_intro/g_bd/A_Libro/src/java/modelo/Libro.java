package modelo;

/**
 *
 * Autor: abi Fecha: 21/05/2018 Hora: 03:32:01 PM
 *
 */
public class Libro {

    private int idLibro;
    private String titulo;
    private String autor;
    private float precio;

    public Libro() {
    }

    public Libro(int idLibro, String titulo, String autor, float precio) {
        this.idLibro = idLibro;
        this.titulo = titulo;
        this.autor = autor;
        this.precio = precio;
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

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

}
