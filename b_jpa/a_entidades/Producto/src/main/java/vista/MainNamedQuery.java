
package vista;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import modelo.Producto;
import service.BDUtil;

/**
 *
 * @author desab
 */
public class MainNamedQuery {
    public static void main(String[] args) {
        
        BDUtil bdUtil = new BDUtil();
        EntityManager em = bdUtil.getEntityManager();
        
        /* 1er NamedQuery: getID1 */
        System.out.println("\nNAMED QUERY 1");
        TypedQuery<Producto> query1 = em.createNamedQuery("getID1", Producto.class);
        Producto producto1 = query1.getSingleResult();        
        System.out.println("\nproducto1 = " + producto1 + "\n\n");
        
        /* 2do NamedQuery: todos */
        System.out.println("NAMED QUERY 2");
        TypedQuery<Producto> query2 = em.createNamedQuery("todos", Producto.class);
        List<Producto> listaProductos = query2.getResultList();
        for (Producto producto : listaProductos) {
            System.out.println(producto.toString() + "\n");
        }
        
        /* 3er NamedQuery: getProducto */
        System.out.println("NAMED QUERY 3");
        TypedQuery<Producto> query3 = em.createNamedQuery("getProducto", Producto.class);
        query3.setParameter("idBuscado", 3);
        Producto producto3 = query3.getSingleResult();
        System.out.println("producto3 = " + producto3 + "\n");
        
        bdUtil.cerrar();
        
    }
}
