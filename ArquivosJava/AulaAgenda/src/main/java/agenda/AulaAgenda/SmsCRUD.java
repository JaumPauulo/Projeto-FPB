package agenda.AulaAgenda;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SmsCRUD {
	
	static ListaTelefonicaDAO dao = new ListaTelefonicaDAO();
	static Connection conexao = dao.conectDB();

	public static void main(String[] args) {
		//criarSMS("Cobrança", "vtnc", "2022-07-16");
		atualizarSMS(8, "Cobrança", "fodase", "2022-08-18");
		//apagarSMS(7);
		listarSMS();

	}

	public static void criarSMS(String tipo, String mensagem, String data) {
		try {
			PreparedStatement prep = conexao.prepareStatement("INSERT INTO sms (id_SMS, tipo, mensagem, data) VALUES (null, ?, ?, ?);");
			prep.setString(1, tipo);
			prep.setString(2, mensagem);
			prep.setString(3, data);
			prep.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void listarSMS() {
		ResultSet sms;
		try {
			sms = conexao.createStatement().executeQuery("SELECT * FROM SMS;");
			System.out.println("\ntabela SMS: \n");
			System.out.println("ID|   TIPO   | MENSAGEM |  DATA |");
			while (sms.next()) {
				System.out.println(sms.getInt("id_SMS") + " " + sms.getString("tipo") + " " + sms.getString("mensagem")
						+ " " + sms.getDate("data"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void atualizarSMS(int id, String tipo, String mensagem, String data) {
		try {
			PreparedStatement prep = conexao.prepareStatement("UPDATE sms SET tipo = ?, mensagem = ?, data = ? WHERE id_SMS = ?;");
			prep.setString(1, tipo);
			prep.setString(2, mensagem);
			prep.setString(3, data);
			prep.setInt(4, id);
			prep.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void apagarSMS(int id) {
		try {
			PreparedStatement prep = conexao.prepareStatement("DELETE FROM sms WHERE id_SMS = ?");
			prep.setInt(1, id);
			prep.executeUpdate();
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
}
