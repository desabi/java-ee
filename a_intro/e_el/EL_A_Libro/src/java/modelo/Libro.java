
package modelo;

/**
 *
 * Autor:    Abi
 * Archivo:  Libro.java
 * Paquete:  modelo
 * Fecha:    26/01/2017
 * Hora:     01:17:57 PM
 *
 */

public class Libro {
    
    private String titulo;
    private String autor;
    private double precio;

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

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }    
    
}