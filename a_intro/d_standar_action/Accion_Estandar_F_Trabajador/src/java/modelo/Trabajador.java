
package modelo;

/**
 *
 * Autor:    Abi
 * Archivo:  Trabajador.java
 * Paquete:  modelo
 * Fecha:    26/01/2017
 * Hora:     09:16:17 AM
 *
 */

public class Trabajador {
    
    private String nombre;
    private double sueldoPorHora;
    private double horasTrabajadas;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getSueldoPorHora() {
        return sueldoPorHora;
    }

    public void setSueldoPorHora(double sueldoPorHora) {
        this.sueldoPorHora = sueldoPorHora;
    }

    public double getHorasTrabajadas() {
        return horasTrabajadas;
    }

    public void setHorasTrabajadas(double horasTrabajadas) {
        this.horasTrabajadas = horasTrabajadas;
    }
    
    
}
