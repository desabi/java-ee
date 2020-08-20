
package com.abi;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;

public class Primero extends HttpServlet {
	
	public void doGet(HttpServletRequest solicitud, HttpServletResponse respuesta)
	throws IOException, ServletException {
		
		respuesta.setContentType("text/html");
		PrintWriter salida = respuesta.getWriter();
		
		salida.println("<html>");
		salida.println("<head>");
		salida.println("<title>Utilizando dos Servlets: Primero.java</title>");
		salida.println("</head>");
		salida.println("<body>");
		salida.println("<h1>Este es el servlet: Primero.java</h1>");
		salida.println("</body>");
		salida.println("</html>");
	}
}