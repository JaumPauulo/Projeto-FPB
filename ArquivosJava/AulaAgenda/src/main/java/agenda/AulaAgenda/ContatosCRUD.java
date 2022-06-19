package agenda.AulaAgenda;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContatosCRUD {
	
	static ListaTelefonicaDAO dao = new ListaTelefonicaDAO();
	static Connection conexao = dao.conectDB();
	
	public static void main (String [] args) {
		//criarContato("João", "jp@gmail.com", "98888988", "83");
		atualizarContato(7, "João Pedro", "jp@gmail.com", "98888988", "83");
		//apagarContato(8);
		listarContato();
	}

	public static void criarContato(String contato, String email, String numero, String DDD) {
		try {
			PreparedStatement prep = conexao.prepareStatement("INSERT INTO contato (id_Contato, nome, email,numero, DDD) VALUES (null, ?, ?, ?, ?)");
			prep.setString(1, contato);
			prep.setString(2, email);
			prep.setString(3, numero);
			prep.setString(4, DDD);
			//prep.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void listarContato() {
		ResultSet contato;
		try {
			contato = conexao.createStatement().executeQuery("SELECT * FROM contato;");
			System.out.println("tabela contatos: \n");
			System.out.println("ID|   NOME   | EMAIL | NUMERO | DDD |");
			while (contato.next()) {
				System.out.println(contato.getInt("id_Contato") + " " + contato.getString("nome") + " "
						+ contato.getString("email") + " " + contato.getInt("numero") + " " + contato.getInt("DDD"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public static void atualizarContato(int id, String contato, String email, String numero, String DDD) {
		try {
			PreparedStatement prep = conexao.prepareStatement("UPDATE contato SET nome = ?, email = ?, numero = ?, DDD = ? WHERE id_Contato = ?;");
			prep.setString(1, contato);
			prep.setString(2, email);
			prep.setString(3, numero);
			prep.setString(4, DDD);
			prep.setInt(5, id);
			prep.executeUpdate();
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
	public static void apagarContato(int id) {
		try {
			PreparedStatement prep = conexao.prepareStatement("DELETE FROM contato WHERE id_Contato = ?;");
			prep.setInt(1, id);
			prep.executeUpdate();
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
	
}
