package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {
	
	private static Connection myconn = null;
	//private static PreparedStatement preparedStatement;//
	//private static Conexion db;

	private static final String url = "jdbc:mysql://localhost:3306/";//
	private static final String dbName = "restaurante";
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String userName = "root";
	private static final String password = "0000";

	public static Connection getConexion() {
		if (myconn == null) {

			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {

				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				myconn = (Connection) DriverManager.getConnection(url + dbName, userName, password);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return myconn;

		}
		return myconn;
	}

	public void cerrarConexion() {
		try {
			myconn.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

	}

//	public static ResultSet query() throws SQLException {
//		 return preparedStatement.executeQuery();
//
//		
//
//	}



}
