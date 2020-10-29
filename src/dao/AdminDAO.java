package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import dto.Admin;
import dto.Usuario;
import util.Conexion;
import util.GenericDAO;

public class AdminDAO implements GenericDAO<Admin> {

	private static final String INSERT_ADMIN_SQL = "INSERT INTO admin (usuario,contraseña) VALUES (?,?);";
	private static final String DELECT_ADMIN_SQL = "DELETE FROM admin WHERE  idAdmin=?;";
	private static final String UPDATE_ADMIN_SQL = "UPDATE admin  SET usuario=?, contraseña=?    WHERE idAdmin=?;";
	private static final String SELECT_ADMIN_BY_ID = "SELECT * from admin WHERE idAdmin=?;";

	@Override
	public void insert(Admin obj) {
		try {
			PreparedStatement pr = (PreparedStatement) Conexion.getConexion().prepareStatement(INSERT_ADMIN_SQL);
			pr.setString(1, obj.getUsuario());
			pr.setString(2, obj.getContrasenia());
			pr.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void delete(Admin obj) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Admin obj) {

		try {
			PreparedStatement pr = (PreparedStatement) Conexion.getConexion().prepareStatement(UPDATE_ADMIN_SQL);
			pr.setString(1, obj.getUsuario());
			pr.setString(2, obj.getContrasenia());
			pr.setInt(3, obj.getIdAdmin());
			pr.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public Admin findById(Integer id) {
		Admin admin = null;

		try {
			PreparedStatement pr = (PreparedStatement) Conexion.getConexion().prepareStatement(SELECT_ADMIN_BY_ID);

			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				admin.setContrasenia(rs.getString("contrasenia"));
				admin.setIdAdmin(rs.getInt("idAdmin"));
				admin.setUsuario("usuario");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return admin;

	}

	@Override
	public List<Admin> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Admin exist(String usuario, String clave) {
		Admin admin = null;
		
		String sql="SELECT * from admin WHERE usuario='"+usuario+"' and contrasenia='"+clave+"';";

		try {
			PreparedStatement pr = (PreparedStatement) Conexion.getConexion().prepareStatement(sql);

			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				admin=new Admin();
				admin.setContrasenia(rs.getString("contrasenia"));
				admin.setIdAdmin(rs.getInt("idAdmin"));
				admin.setUsuario("usuario");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return admin;
	}
}