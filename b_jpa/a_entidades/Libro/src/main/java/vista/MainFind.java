/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vista;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import modelo.Libro;

/**
 *
 * @author desab
 */
public class MainFind {
    public static void main(String[] args) {
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("LibroPU");
        EntityManager em = emf.createEntityManager();        
        
        // Read
        Libro libroBuscado = em.find(Libro.class, 4);
        System.out.println(libroBuscado.toString());
        
        em.close();
        emf.close();
        
    }    
}
