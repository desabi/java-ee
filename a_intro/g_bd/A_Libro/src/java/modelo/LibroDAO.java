package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList; 
import util.ConexionMySQL;

/**
 *
 * Autor: abi Fecha: 21/05/2018 Hora: 03:37:23 PM
 *
 */
public class LibroDAO {

    public void create(Libro elLibro) {

        /* Crear la consulta */
        String consultaINSERT = "INSERT INTO libro VALUES (?, ?, ?, ?)";

        /* Obtener los datos del libro */
        String titulo = elLibro.getTitulo();
        String autor = elLibro.getAutor();
        float precio = elLibro.getPrecio();

        /* Ontener la sentencia preparada */
        PreparedStatement sentenciaPreparada = ConexionMySQL.getSentenciaPreparada(consultaINSERT);

        try {

            sentenciaPreparada.setString(1, null);
            sentenciaPreparada.setString(2, titulo);
            sentenciaPreparada.setString(3, autor);
            sentenciaPreparada.setFloat(4, precio);

            int ejecucionINSERT = sentenciaPreparada.executeUpdate();

            System.out.println("ejecucionINSERT = " + ejecucionINSERT);

            sentenciaPreparada.close();

        } catch (SQLException e) {
            System.out.println("Error en: Libro.create(Libro elLibro)");
            System.out.println("\n\nEl error es:\n\n" + e);
        }

    }

    public ArrayList<Libro> read() {
        
        ArrayList<Libro> libros = new ArrayList<>();
        Libro elLibro;
        
        /* Crear la consulta */
        String consultaSELECT = "SELECT idlibro, titulo, autor, precio FROM libro";
        
        /* Obtener los registros */
        ResultSet registros = ConexionMySQL.getRegistros(consultaSELECT);
        
        try {
            
            while(registros.next()){
                
                int idLibro = registros.getInt("idlibro");
                String titulo = registros.getString("titulo");
                String autor = registros.getString("autor");
                float precio = registros.getFloat("precio");
                
                elLibro = new Libro(idLibro, titulo, autor, precio);
                
                libros.add(elLibro);
            }
            
            registros.close();
            
        } catch (SQLException e) {
            System.out.println("Error en: Libro.read()");
            System.out.println("\n\nEl error es:\n\n" + e);
        }
        
        return libros;
    }
    
    public void update(Libro elLibro) {
        
        /* Crear la consulta */
        String consultaUPDATE = "UPDATE libro SET titulo = ?, autor = ?, precio = ? WHERE idlibro = ? ";
        
        /* Obtener la sentencia preparada */
        PreparedStatement sentenciaPreparada = ConexionMySQL.getSentenciaPreparada(consultaUPDATE);
        
        try {            
            sentenciaPreparada.setString(1, elLibro.getTitulo());
            sentenciaPreparada.setString(2, elLibro.getAutor());
            sentenciaPreparada.setFloat(3, elLibro.getPrecio());
            sentenciaPreparada.setInt(4, elLibro.getIdLibro());
            
            int ejecucionUPDATE = sentenciaPreparada.executeUpdate();
            System.out.println("ejecucionUPDATE = " + ejecucionUPDATE);
            
            sentenciaPreparada.close();
            
        } catch (SQLException e) {
            System.out.println("Error en: Libro.update(Libro elLibro)");
            System.out.println("\n\nEl error es:\n\n" + e);
        }
    }
    
    public void delete(int idLibro) {
        
        /* Crear la consulta */
        String consultaDELETE = "DELETE FROM libro WHERE idlibro = ?";
        
        /* Obtener la sentencia preparada */
        PreparedStatement sentenciaPreparada = ConexionMySQL.getSentenciaPreparada(consultaDELETE);
        
        try {
            sentenciaPreparada.setInt(1, idLibro);
            
            int ejecutionDELETE = sentenciaPreparada.executeUpdate();
            System.out.println("ejecutionDELETE = " + ejecutionDELETE);
            
            sentenciaPreparada.close();
        } catch (SQLException e) {
            System.out.println("Error en: Libro.delete()");
            System.out.println("\n\nEl error es:\n\n" + e);
        }
    }

    public Libro find(int idLibro) {
        Libro elLibro = null;
        
        /* Crear la consulta */
        String consultaSELECT = "SELECT idlibro, titulo, autor, precio FROM libro WHERE idlibro = ?";
        
        /* Obtener la sentencia preparada */
        PreparedStatement sentenciaPreparada = ConexionMySQL.getSentenciaPreparada(consultaSELECT);
        
        try {
            sentenciaPreparada.setInt(1, idLibro);
        } catch (SQLException ex) {
            System.out.println("Error al establecer el id: \n\n" + ex);
        }
        
        try {
            ResultSet resultado = sentenciaPreparada.executeQuery();
            
            while (resultado.next()) {
                int id = resultado.getInt("idlibro");
                String titulo = resultado.getString("titulo");
                String autor = resultado.getString("autor");
                float precio = resultado.getFloat("precio");
                
                elLibro = new Libro(id, titulo, autor, precio);
            }
            
            resultado.close();
            sentenciaPreparada.close();
            
        } catch (SQLException ex) {
            System.out.println("Error al obtener el resultado\n\n"+ex);
        }
        
        return elLibro;
    }
}
