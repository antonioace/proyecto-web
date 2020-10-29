package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductoDAO;
import dto.Producto;

/**
 * Servlet implementation class EliminarProducto
 */
@WebServlet("/EliminarProducto")
public class EliminarProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductoDAO productoDAO;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarProducto() {
        super();
        productoDAO=new ProductoDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		        //recuperamos los valores del formulario editarCliente
		        int idProducto = Integer.parseInt(request.getParameter("id"));
		     
Producto producto=productoDAO.findById(idProducto);
System.out.println(producto.getDescripcionGrande());
productoDAO.delete(producto);
	request.getRequestDispatcher("indexadmin.jsp").forward(request, response);	    
		        //Redirigimos hacia accion por default
		        
		    

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			}

}
