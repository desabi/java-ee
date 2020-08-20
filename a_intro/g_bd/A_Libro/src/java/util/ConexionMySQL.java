package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * Autor:    abi
 * Fecha:    21/05/2018
 * Hora:     03:33:01 PM
 *
 */

public class ConexionMySQL {

    public static Connection getConexion() {

        Connection conexion = null;

        try {

            /* 1ro: Cargar el controlador */
            Class.forName("com.mysql.jdbc.Driver");

            /* 2do: Conectar a la bd */
            String url = "jdbc:mysql://localhost/javabd";
            String usuario = "root";
            String contrasena = "";

            conexion = DriverManager.getConnection(url, usuario, contrasena);
            //System.out.println("CONEXION REALIZADA CON EXITO.");

        } catch (ClassNotFoundException | SQLException e) {

            System.out.println("Error en: ConexionMySQL.getConexion()");
            System.out.println("\n\nEl error es: " + e);

        }

        return conexion;

    }


    /**
     * <b>Método que inserta/actualiza/elimina datos mediante una sentencia
     * preparada (PreparedStatement)</b> <br><br>
     *
     * String sql = "INSERT INTO tabla VALUES (?, ?, ?, ?, ...)"; <br> <br>
     *
     * String sql = "UPDATE tabla SET columna1=?, columna2=?, columna3=? WHERE
     * id=?"; <br> <br>
     * String sql = "UPDATE tabla SET columna1=?, columna2=?, columna3=? WHERE
     * columnax=?"; <br> <br>
     *
     * String sql = "DELETE FROM tabla WHERE id=?; <br> <br>
     * String sql = "DELETE FROM tabla WHERE campox=?"; <br> <br>
     *
     * PreparedStatement sentencia = ConexionMySQL.getSentenciaPreparada(String
     * sql);
     *
     * @param consultaSQL especificar la consulta sql (INSERT, UPDATE o DELETE)
     * @return retorna la sentencia preparada
     */
    public static PreparedStatement getSentenciaPreparada(String consultaSQL) {

        /* 1ro: Obtener la conexion */
        Connection conexion = getConexion();

        /* 2do: Crear la sentencia preparada */
        PreparedStatement sentenciaPreparada = null;

        try {

            /* 3ro: Obtener la sentencia preparada a partir de la consulta*/
            sentenciaPreparada = conexion.prepareStatement(consultaSQL);

        } catch (SQLException e) {

            System.out.println("Error en:\n\nConexionMySQL.getSentenciaPreparada(String consulta)");
            System.out.println("\n\nEl error es:\n\n" + e);

        }

        return sentenciaPreparada;

    }
    
    /**
     *
     * <b>Método obtiene los resultados/registros de una consulta SELECT.</b> <br>
     *
     * @param consultaSELECT Especificar la consulta SELECT
     * @return El metodo devuelve los registros obtenidos de la consulta SELECT
     */
    public static ResultSet getRegistros(String consultaSELECT) {

        /* 1ro: Obtener conexion */
        Connection conexion = getConexion();
        
        /* 2do: Crear un Resultset para guardar todos los registros obtenidos */
        ResultSet resultados = null;

        try {

            /* 3ro: creat la sentencia */
            Statement sentencia = conexion.createStatement();
            
            /* 4to: Ejecutar la consulta y obtener los resultados */
            resultados = sentencia.executeQuery(consultaSELECT);

        } catch (SQLException e) {

            System.out.println("Error en:\n\nConexionMySQL.getRegistros(String consultaSELECT)");
            System.out.println("\n\nEl error es:\n\n" + e);

        }

        return resultados;

    }
    
}
