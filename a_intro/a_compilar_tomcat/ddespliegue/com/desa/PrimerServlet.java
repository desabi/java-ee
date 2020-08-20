
package com.desa;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;

public class PrimerServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest solicitud, HttpServletResponse respuesta)
	throws IOException, ServletException {
		
		respuesta.setContentType("text/html");
		PrintWriter salida = respuesta.getWriter();
		
		salida.println("<html>");
		salida.println("<head>");
		salida.println("<title>Paquete: com.desa </title>");
		salida.println("</head>");
		salida.println("<body>");
		salida.println("<h1>Paquete: com.desa</h1>");
		salida.println("<h1>Servlet: PrimerServlet.java</h1>");
		salida.println("</body>");
		salida.println("</html>");	
		
	}
	
}
