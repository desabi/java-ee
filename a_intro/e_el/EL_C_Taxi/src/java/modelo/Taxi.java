
package modelo;

/**
 *
 * Autor:    Abi
 * Archivo:  Taxi.java
 * Paquete:  modelo
 * Fecha:    29/01/2017
 * Hora:     02:24:53 PM
 *
 */

public class Taxi {
    
    private String sitio;
    private int numero;
    private Chofer chofer;

    public String getSitio() {
        return sitio;
    }

    public void setSitio(String sitio) {
        this.sitio = sitio;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public Chofer getChofer() {
        return chofer;
    }

    public void setChofer(Chofer chofer) {
        this.chofer = chofer;
    }
    
    
}
