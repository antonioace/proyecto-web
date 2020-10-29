package controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EmpresaDAO;
import dto.Empresa;

/**
 * Servlet implementation class EmpresaController
 */
@WebServlet("/EmpresaController")
public class EmpresaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private EmpresaDAO empresaDAO;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpresaController() {
        super();
        empresaDAO=new EmpresaDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	// TODO Auto-generated method stub//entrra por defecto aqui
	
		
		
		
		
		
		
	
	
		//response.getWriter().append("Served at: ").append(request.getContextPath());


	
		
//	}

//**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//(Empresa) request.getSession().getAttribute("empresa");
		 String action=request.getParameter("action");
		 switch (action) {
		case "actualizar":
			this.actualizar(request,response);
			break;

		default:
			actionDefault(request, response);
			break;
		}
	
	

	}
	
	public void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
HttpSession sesion=request.getSession();
		
		
		//request.setAttribute("empresa", empresaDAO.findById(1));
		Empresa em = empresaDAO.findById(1);
		em.setNombre(request.getParameter("nombre"));
	    em.setTelefono(request.getParameter("telefono"));
		em.setInformacion(request.getParameter("informacion"));
		em.setEmail(request.getParameter("email"));
		empresaDAO.update(em);
		
		
		
		
		sesion.setAttribute("empresa",	empresaDAO.findById(1) );
		
	response.sendRedirect(request.getContextPath()+"/registro.jsp");
		
		
		
		
		
	}
	
	protected void actionDefault(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession sesion=request.getSession();
		request.setAttribute("empresa", empresaDAO.findById(1));
		request.getRequestDispatcher("registro.jsp").forward(request,response);
		
	
		
		
		
		
		
		
	}
	}
	
	

