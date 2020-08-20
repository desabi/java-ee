
package vista;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import modelo.Producto;
import service.BDUtil;

/**
 *
 * @author desab
 */
public class MainSelect {
    public static void main(String[] args) {
        
        BDUtil bdUtil = new BDUtil();        
        EntityManager em = bdUtil.getEntityManager();
        
        /* 1er consulta */
        TypedQuery<Producto> consulta0 = em.createQuery("SELECT p FROM Producto p", Producto.class);
        List<Producto> productos = consulta0.getResultList();
        
        for (Producto producto : productos) {
            System.out.println(producto.toString());
        }
        
        /* 2da consulta */
        TypedQuery<Producto> consulta1 = em.createQuery("SELECT p FROM Producto p WHERE p.idProducto = :idBuscado", Producto.class);
        consulta1.setParameter("idBuscado", 2);
        Producto producto1 = consulta1.getSingleResult();
        System.out.println("producto1 = " + producto1);
        
        
        bdUtil.cerrar();
        
    }
}
