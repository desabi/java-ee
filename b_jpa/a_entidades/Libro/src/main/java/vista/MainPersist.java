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
public class MainPersist {

    public static void main(String[] args) {
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("LibroPU");
        EntityManager em = emf.createEntityManager();
        
        Libro libro = new Libro();
        libro.setTitulo("Just For Fun");
        //libro.setPaginas(468);

        // Create
        em.getTransaction().begin();
        em.persist(libro);
        em.getTransaction().commit();
        System.out.println("Persistido: " + libro);
        
        em.close();
        emf.close();

    }
}
