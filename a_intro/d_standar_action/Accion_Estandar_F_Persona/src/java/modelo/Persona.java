
package modelo;

/**
 *
 * Autor:    Abi
 * Archivo:  Persona.java
 * Paquete:  modelo
 * Fecha:    26/01/2017
 * Hora:     09:05:20 AM
 *
 */

public class Persona {
    
    private String nombre;
    private int edad;
    private double estatura;
    private long telefono;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public double getEstatura() {
        return estatura;
    }

    public void setEstatura(double estatura) {
        this.estatura = estatura;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }
    
    
}
