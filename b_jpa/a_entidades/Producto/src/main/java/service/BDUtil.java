package service;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author desab
 */
public class BDUtil {

    private EntityManagerFactory emf;
    private EntityManager em;

    public BDUtil() {
        emf = Persistence.createEntityManagerFactory("ProductoPU");
        em = emf.createEntityManager();
    }
    
    public EntityManager getEntityManager() {
        return em;
    }
    
    public void cerrar() {
        em.close();
        emf.close();
    }
    
}
