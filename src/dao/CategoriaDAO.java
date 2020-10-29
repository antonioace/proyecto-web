package dao;

import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import dto.Categoria;
import util.Conexion;
import util.GenericDAO;

public class CategoriaDAO implements GenericDAO<Categoria>  {
	private static final String UPDATE_SQL = "UPDATE categoria SET descripcion=? WHERE id=?;";
	private static final String INSERT_SQL = "INSERT INTO categoria (descripcion) VALUES (?);";
	private static final String SELECT_ALL_SQL = " SELECT * from categoria WHERE id=?";
	@Override
	public void insert(Categoria obj) {
		// TODO Auto-generated method stub
		try {

			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement(INSERT_SQL);

			preparedStatement.setString(1, obj.getDescripcion());
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(Categoria obj) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Categoria obj) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Categoria findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Categoria> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public static void main(String[] args) {
		new CategoriaDAO().insert(new Categoria("Hamburguersa"));
		new CategoriaDAO().insert(new Categoria("Sandwich"));
	}
	

}
