package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;
import dao.UsuarioDAO;
import dto.Admin;
import dto.Usuario;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet("/UsuarioController")
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioDAO usuarioDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsuarioController() {
		super();
		usuarioDAO = new UsuarioDAO();

		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = request.getParameter("action");
		System.out.println(request.getParameter("action"));
		switch (action) {
		case "insertar":
			this.insertarUsuario(request, response);
			break;
		case "iniciar":
			this.iniciaSesion(request, response);
			break;
		default:
			
		}

		{
			

		}
	}

	protected void insertarUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String correo = request.getParameter("correo");
		String cedula = request.getParameter("cedula");
		String telefono = request.getParameter("telefono");
		String contraseña = request.getParameter("contraseña");

		usuarioDAO.insert(new Usuario(nombre, apellido, correo, cedula, telefono, contraseña));
		;

		
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}


	protected void iniciaSesion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		

		UsuarioDAO usuarioDAO = new UsuarioDAO();
		Usuario usuario = usuarioDAO.exist(request.getParameter("cedula"), request.getParameter("contrasenia"));
		
		System.out.println(usuario);
		if (usuario.getCedula() != null) {
			request.getSession().setAttribute("usuario", usuario);
/**
 * 			RequestDispatcher dispatcher= request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
 */
			System.out.println("lo encontro");
			request.getSession().removeAttribute("mensaje");
			response.sendRedirect("index.jsp");
		} else {
			// mandar mensaje de error
			request.getSession().setAttribute("mensaje", "error contraseña incorrecta");
			response.sendRedirect("inicioSesion.jsp");
			
		}

	}

}
