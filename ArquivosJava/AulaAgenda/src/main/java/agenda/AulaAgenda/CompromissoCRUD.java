package agenda.AulaAgenda;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CompromissoCRUD{
	
	static ListaTelefonicaDAO dao = new ListaTelefonicaDAO();
	static Connection conexao = dao.conectDB();
	
	public static void main (String [] args) {
		//criarCompromisso("reuniao", "com carlos", "2022-09-11", "08.00");
		//apagarCompromisso(11);
		atualizarCompromisso(13, "Reunião", "com pedro", "2022-07-15", "19.00");
		listarCompromisso();
	}
	
	public static void criarCompromisso( String nome, String descricao, String data, String horario){
		try {
			PreparedStatement prep = conexao.prepareStatement("INSERT INTO compromisso (id_Compromisso, nome, descrição,data, horario) VALUES (null, ?, ?, ?, ?);");
			prep.setString(1, nome);
			prep.setString(2, descricao);
			prep.setString(3, data);
			prep.setString(4, horario);
			prep.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static void listarCompromisso() {
		ResultSet compromisso;
		try {
			compromisso = conexao.createStatement().executeQuery("SELECT * FROM compromisso;");
			System.out.println("\ntabela compromisso: \n");
			System.out.println("ID|   NOME   | DESCRICAO | DATA | HORARIO |");
			while (compromisso.next()) {
				System.out.println(compromisso.getInt("id_Compromisso") + " " + compromisso.getString("nome") + " "
						+ compromisso.getString("descrição") + " " + compromisso.getDate("data") + " "
						+ compromisso.getDouble("horario"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public static void atualizarCompromisso(int id, String nome, String descricao, String data, String horario) {
		try {
			PreparedStatement prep = conexao.prepareStatement("UPDATE compromisso  SET nome = ?, descrição = ?, data = ?, horario = ? WHERE id_Compromisso = ?  ");
			prep.setString(1, nome);
			prep.setString(2, descricao);
			prep.setString(3, data);
			prep.setString(4, horario);
			prep.setInt(5, id);
			prep.executeUpdate();
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
	public static void apagarCompromisso(int id) {
		try {
			PreparedStatement prep = conexao.prepareStatement("DELETE FROM compromisso WHERE id_compromisso = ?");
			prep.setInt(1, id);
			prep.executeUpdate();
		} catch (SQLException e){
			e.printStackTrace();
		}
		
	}
	
}
