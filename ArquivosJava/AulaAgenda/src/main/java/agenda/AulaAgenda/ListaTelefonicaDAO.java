package agenda.AulaAgenda;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.SQLException;

public class ListaTelefonicaDAO {


	public Connection conectDB() {
		Connection conexao = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conexao = DriverManager.getConnection("jdbc:mysql://localhost/agenda", "root", "");
		} catch (ClassNotFoundException e) {
			System.out.println("Problema JDBC Driver" + e);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conexao;
	}
	
}
