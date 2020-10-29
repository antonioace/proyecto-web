package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import dto.Empresa;
import util.Conexion;
import util.GenericDAO;

public class EmpresaDAO implements GenericDAO<Empresa> {

	private static final String UPDATE_EMPRESA_SQL = "UPDATE empresa SET nombre=?, informacion=?, telefono=?, email=? WHERE id=?;";
	private static final String INSERT_EMPRESA_SQL = "INSERT INTO empresa (nombre,informacion,telefono,email) VALUES (?,?,?,?);";
	private static final String SELECT_EMPRESA_SQL = " SELECT * from empresa WHERE id=?";

	@Override
	public void insert(Empresa obj) {
		try {

			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement(INSERT_EMPRESA_SQL);

			preparedStatement.setString(1, obj.getNombre());
			preparedStatement.setString(2, obj.getInformacion());
			preparedStatement.setString(3, obj.getTelefono());
			preparedStatement.setString(4, obj.getEmail());
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void delete(Empresa obj) {

	}

	@Override
	public void update(Empresa obj) {

		try {
			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement(UPDATE_EMPRESA_SQL);
			preparedStatement.setString(1, obj.getNombre());
			preparedStatement.setString(2, obj.getInformacion());
			preparedStatement.setString(3, obj.getTelefono());
			preparedStatement.setString(4, obj.getEmail());

			preparedStatement.setInt(5, obj.getId());

			preparedStatement.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public Empresa findById(Integer id) {
		Empresa empresa = null;
		try {
			PreparedStatement preparedStatement = (PreparedStatement) Conexion.getConexion()
					.prepareStatement(SELECT_EMPRESA_SQL);
			preparedStatement.setInt(1, id);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				empresa = new Empresa();
				empresa.setNombre(rs.getString("nombre"));
				empresa.setInformacion(rs.getString("informacion"));
				empresa.setId(id);
				empresa.setTelefono(rs.getString("telefono"));
				empresa.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return empresa;
	}
	
	
	
	public Empresa getDatos(){
		return findById(1);
	}

	public static void main(String[] args) {
		EmpresaDAO e = new EmpresaDAO();
		Empresa em = new Empresa(1, "macdonald", "md", "md", "md");
		e.update(em);
		
		System.out.println(e.findById(1).getNombre());

	}

	@Override
	public List<Empresa> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
