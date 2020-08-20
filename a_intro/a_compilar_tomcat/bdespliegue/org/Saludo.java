package org;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;

public class Saludo extends HttpServlet {
	
	public void doGet(HttpServletRequest solicitud, HttpServletResponse respuesta) 
	throws IOException, ServletException {
		
		respuesta.setContentType("text/html");
		PrintWriter salida = respuesta.getWriter();
		
		salida.println("<html>");
		salida.println("<head>");
		salida.println("<title>Usando paquetes</title>");
		salida.println("</head>");
		salida.println("<body>");
		salida.println("<h1>Nombre del paquete: <b>org</b> </h1>");
		salida.println("<h2>Nombre del servlet: <b>Saludo.java</b> </h2>");
		salida.println("</body>");
		salida.println("</html>");
		
	}
	
}