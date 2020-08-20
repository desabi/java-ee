/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vista;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import modelo.Libro;

/**
 *
 * @author desab
 */
public class MainList {
    public static void main(String[] args) {
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("LibroPU");
        EntityManager em = emf.createEntityManager(); 
        
        // Libro, con L mayuscula por que asi se llama la clase Entidad
        List<Libro> listaLibros = em.createQuery("SELECT l FROM Libro l", Libro.class).getResultList();
        
        for (Libro libro : listaLibros) {
            System.out.println(libro.toString());
        }
        
        em.close();
        emf.close();
        
    }    
}
