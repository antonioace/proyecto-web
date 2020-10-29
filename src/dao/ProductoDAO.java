package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import dto.Producto;

import util.Conexion;
import util.GenericDAO;

public class ProductoDAO implements GenericDAO<Producto> {

	private static final String UPDATE_SQL = "UPDATE producto SET precio=?,descripcion=?,descripcionGrande=?,nombre=?,idCategoria=?,imagen=? WHERE id=?;";
	private static final String INSERT_SQL = "INSERT INTO producto (precio,descripcion,descripcionGrande,nombre,idCategoria,imagen) VALUES (?,?,?,?,?,?);";
	private static final String SELECT_ALL_SQL = " SELECT * from producto ;";
	private static final String SELECT_ALL_SQL_BY_ID = "SELECT * from producto WHERE id=?;";
private static final String DELECT_SQL= "DELETE FROM producto WHERE  id=?;";
	@Override
	public void insert(Producto obj) {
		try {

			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement(INSERT_SQL);

			preparedStatement.setInt(1, obj.getPrecio());
			preparedStatement.setString(2, obj.getDescripcion());
			preparedStatement.setString(3, obj.getDescripcionGrande());
			preparedStatement.setString(4, obj.getNombre());
			preparedStatement.setInt(5, obj.getIdCategoria());
			preparedStatement.setString(6, obj.getImagen());

			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void delete(Producto obj) {
		try {
			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion().prepareStatement(DELECT_SQL);
			preparedStatement.setInt(1, obj.getId());

preparedStatement.execute();
		} catch (SQLException e) {;
			// TODO: handle exception
		}

	}

	@Override
	public void update(Producto obj) {
		try {
			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion().prepareStatement(UPDATE_SQL);
			preparedStatement.setInt(1,obj.getPrecio() );
			preparedStatement.setString(2,obj.getDescripcion() );
			preparedStatement.setString(3, obj.getDescripcionGrande());
			preparedStatement.setString(4,obj.getNombre() );
			preparedStatement.setInt(5, obj.getIdCategoria());
			preparedStatement.setString(6, obj.getImagen());
			preparedStatement.setInt(7,obj.getId());
			preparedStatement.execute();

			preparedStatement.execute();
		} catch (SQLException e) {
			// TODO: handle exception
		}


	}

	@Override
	public Producto findById(Integer id) {
		Producto producto = null;
		try {
			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement("SELECT * from producto WHERE id=" + id + ";");

			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				producto = new Producto();
				producto.setDescripcion(rs.getString("descripcion"));
				producto.setDescripcionGrande(rs.getString("descripcionGrande"));
				producto.setId(rs.getInt("id"));
				producto.setIdCategoria(rs.getInt("idCategoria"));
				producto.setImagen(rs.getString("imagen"));
				producto.setNombre(rs.getString("nombre"));
				producto.setPrecio(rs.getInt("precio"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return producto;
	}

	@Override
	public List<Producto> findAll() {
		List<Producto> productos = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement(SELECT_ALL_SQL);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Producto producto = new Producto();

				producto.setDescripcion(rs.getString("descripcion"));
				producto.setDescripcionGrande(rs.getString("descripcionGrande"));
				producto.setId(rs.getInt("id"));
				producto.setIdCategoria(rs.getInt("idCategoria"));
				producto.setImagen(rs.getString("imagen"));
				producto.setNombre(rs.getString("nombre"));
				producto.setPrecio(rs.getInt("precio"));
				productos.add(producto);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return productos;
	}
	
	public List<Producto> findAllOrderByCategoria1() {
		List<Producto> productos = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement("SELECT * from producto where idCategoria=1;");
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Producto producto = new Producto();

				producto.setDescripcion(rs.getString("descripcion"));
				producto.setDescripcionGrande(rs.getString("descripcionGrande"));
				producto.setId(rs.getInt("id"));
				producto.setIdCategoria(rs.getInt("idCategoria"));
				producto.setImagen(rs.getString("imagen"));
				producto.setNombre(rs.getString("nombre"));
				producto.setPrecio(rs.getInt("precio"));
				productos.add(producto);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productos;
	}
	
	
	public List<Producto> findAllOrderByCategoria2() {
		List<Producto> productos = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement("SELECT * from producto  where idCategoria=2;");
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Producto producto = new Producto();

				producto.setDescripcion(rs.getString("descripcion"));
				producto.setDescripcionGrande(rs.getString("descripcionGrande"));
				producto.setId(rs.getInt("id"));
				producto.setIdCategoria(rs.getInt("idCategoria"));
				producto.setImagen(rs.getString("imagen"));
				producto.setNombre(rs.getString("nombre"));
				producto.setPrecio(rs.getInt("precio"));
				productos.add(producto);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productos;
	}

	
	
	public List<Producto> findAllOrderByCategoria3() {
		List<Producto> productos = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement("SELECT * from producto  where idCategoria=3;");
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Producto producto = new Producto();

				producto.setDescripcion(rs.getString("descripcion"));
				producto.setDescripcionGrande(rs.getString("descripcionGrande"));
				producto.setId(rs.getInt("id"));
				producto.setIdCategoria(rs.getInt("idCategoria"));
				producto.setImagen(rs.getString("imagen"));
				producto.setNombre(rs.getString("nombre"));
				producto.setPrecio(rs.getInt("precio"));
				productos.add(producto);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productos;
	}
	
	
	
	
}
