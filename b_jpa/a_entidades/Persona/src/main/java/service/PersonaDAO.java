/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import modelo.Persona;

/**
 *
 * @author desab
 */
public class PersonaDAO {
    
    private final EntityManagerFactory emf;
    private final EntityManager em;
    
    public PersonaDAO(){
        emf = Persistence.createEntityManagerFactory("personaPU");
        em = emf.createEntityManager();
    }

    public EntityManager getEm() {
        return em;
    }
        
    public void create(Persona persona){
        em.getTransaction().begin();
        em.persist(persona);
        em.getTransaction().commit();
    }
    
    public Persona read(Integer id) {
        return em.find(Persona.class, id);
    }
    
    public List<Persona> read() {
        List<Persona> listaPersonas = em.createQuery("SELECT p FROM Persona p", Persona.class).getResultList();        
        return listaPersonas;
    }
    
    public void update(Persona persona) {
        em.getTransaction().begin();
        em.merge(persona);
        em.getTransaction().commit();
    }
    
    public void delete(Integer id) {
        Persona persona = this.read(id);
        
        em.getTransaction().begin();
        em.remove(persona);
        em.getTransaction().commit();        
    }
    
    public void close() {        
        em.close();
        emf.close();
    }

    
}
