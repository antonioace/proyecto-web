package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;
import dto.Admin;

/**
 * Servlet implementation class adminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AdminDAO adminDAO = new AdminDAO();
		Admin admin = adminDAO.exist(request.getParameter("usuario"), request.getParameter("contrasenia"));
		if (admin != null) {
			request.getSession().setAttribute("admin", admin);
			System.out.print("si existe");
			System.out.print(request.getContextPath());
			request.getSession().removeAttribute("mensaje");
			RequestDispatcher dispatcher= request.getRequestDispatcher("indexadmin.jsp");
	dispatcher.forward(request, response);
		} else {
			// mandar mensaje de error
			request.getSession().setAttribute("mensaje", "error contraseña incorrecta");
			response.sendRedirect(request.getContextPath()+"/inicioSesionAdmin.jsp");

		}
		
		
		
	}

}
