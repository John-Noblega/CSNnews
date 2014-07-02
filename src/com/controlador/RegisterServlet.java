package com.controlador;

//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import com.entidades.Usuario;


@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		String nombreU = req.getParameter("username");
		String password = req.getParameter("password");
		
		String nombre = req.getParameter("name");
		String correo = req.getParameter("email");
		//String fecha = req.getParameter("fecha");
		String correo2 = req.getParameter("email");
		
		/*Date fechaNa = null;
		System.out.println(fecha);
		try {
			fechaNa = new SimpleDateFormat("yyyy-MM-dd").parse(fecha);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			System.out.println("jiujauauauahauha");
			e1.printStackTrace();
		}
		*/
		resp.setContentType("text/html");
		
		Usuario nuevo = new Usuario(nombreU,nombre, correo, correo2, password);
		
		PersistenceManager pm = PersistenceMF.get().getPersistenceManager();
		try{
			pm.makePersistent(nuevo);
			req.getRequestDispatcher("index.jsp").forward(req,resp);

		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrio un error, <a href='registro.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
		}
	}
	
}
