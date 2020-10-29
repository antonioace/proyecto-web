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
 * Servlet implementation class AgregarProducto
 */
@WebServlet("/AgregarProducto")
public class AgregarProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductoDAO productoDAO;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarProducto() {
        super();
        productoDAO=new ProductoDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer precio=Integer.parseInt(request.getParameter("precio"));
		String descripcion=request.getParameter("descripcion");
		String descripcionGrande=request.getParameter("descripcionGrande");
		String nombre=request.getParameter("nombre");
		Integer idCategoria=Integer.parseInt(request.getParameter("idCategoria"));
		String imagen=request.getParameter("imagen");
		Producto producto = new Producto(precio,descripcion,descripcionGrande,nombre,idCategoria,imagen);
		productoDAO.insert(producto);
		request.getRequestDispatcher("indexadmin.jsp").forward(request, response);
		
	}

}
