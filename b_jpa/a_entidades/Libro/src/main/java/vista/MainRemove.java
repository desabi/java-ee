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
public class MainRemove {
    public static void main(String[] args) {
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("LibroPU");
        EntityManager em = emf.createEntityManager(); 
        
        // Buscar el libro a eliminar
        Libro libroBuscado = em.find(Libro.class, 3);
        
        // Delete
        em.getTransaction().begin();
        em.remove(libroBuscado);
        em.getTransaction().commit();
        
        em.close();
        emf.close();
        
    }
}
