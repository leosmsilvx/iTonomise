package iTonomise.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import iTonomise.modelo.*;
import util.ConnectionFactory;

import java.sql.Connection;

public class DAOAvaliacaoImpl implements DAOAvaliacao{
	
	private Connection connection;

	public DAOAvaliacaoImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conexão: " + e.getMessage());
		}
	}
	
	public void cadastrar(Avaliacao avaliacao) throws DAOException {
		try {	
			
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "INSERT INTO avaliacao(idAutonomo, idUsuario, idContrato, valor) VALUES (?, ?, ?, ?);";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
			stmt.setInt(1, avaliacao.getIdAutonomo());
			stmt.setInt(2, avaliacao.getIdUsuario());
			stmt.setInt(3, avaliacao.getIdContrato());
			stmt.setString(4, avaliacao.getValor());

			stmt.execute();

			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				int idAvaliacao = rs.getInt(1);
				avaliacao.setIdAvaliacao(idAvaliacao);
			}
			rs.close();
			stmt.close();
			
		} catch (Exception e) {
			throw new DAOException("Erro ao cadastrar: " + e.getMessage());
		}

	}
	
	public Avaliacao buscarAvalPIdAval(int idAvaliacao) throws DAOException {
		Avaliacao avaliacao = null;
		
		try {
			
			String sql = "SELECT * from avaliacao WHERE idAvaliacao = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, idAvaliacao);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				int idAutonomo = rs.getInt("idAutonomo");
				int idUsuario = rs.getInt("idUsuario");
				int idContrato = rs.getInt("idContrato");
				String valor = rs.getString("valor");
				
				avaliacao = new Avaliacao(idAvaliacao, idAutonomo, idUsuario, idContrato, valor);
				avaliacao.setIdAvaliacao(idAvaliacao);
				avaliacao.setIdAutonomo(idAutonomo);
				avaliacao.setIdUsuario(idUsuario);
				avaliacao.setIdContrato(idContrato);
				avaliacao.setValor(valor);
			}
			
			rs.close();
			stmt.close();
			return avaliacao;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public Avaliacao buscarAvalPIdAutonomo(int idAutonomo) throws DAOException {
		Avaliacao avaliacao = null;
		
		try {
			
			String sql = "SELECT * from avaliacao WHERE idAutonomo = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, idAutonomo);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				int idAvaliacao = rs.getInt("idAvaliacao");
				int idUsuario = rs.getInt("idUsuario");
				int idContrato = rs.getInt("idContrato");
				String valor = rs.getString("valor");
				
				avaliacao = new Avaliacao(idAvaliacao, idAutonomo, idUsuario, idContrato, valor);
				avaliacao.setIdAvaliacao(idAvaliacao);
				avaliacao.setIdAutonomo(idAutonomo);
				avaliacao.setIdUsuario(idUsuario);
				avaliacao.setIdContrato(idContrato);
				avaliacao.setValor(valor);
			}
			
			rs.close();
			stmt.close();
			return avaliacao;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public double mediaAutonomo(int idAutonomo) throws DAOException {	
		
		try {
			double valor = 0;
			String sql = "SELECT AVG(valor) FROM avaliacao WHERE idAutonomo = ?;";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, idAutonomo);

			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()) {
				valor = Double.valueOf(rs.getString("valor"));
			}			
			
			rs.close();
			stmt.close();
			return (valor);
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public List<Avaliacao> todasAvaliacoes() throws DAOException {

		List<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();

		try {
			this.connection = ConnectionFactory.getConnection();
			Statement st = this.connection.createStatement();

			String sql = "SELECT idAvaliacao, idAutonomo, idUsuario, idContrato, valor FROM avaliacao";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idAvaliacao = rs.getInt("idAvaliacao");
				int idAutonomo = rs.getInt("idAutonomo");
				int idUsuario = rs.getInt("idUsuario");
				int idContrato = rs.getInt("idContrato");
				String valor = rs.getString("valor");


				Avaliacao avaliacao = new Avaliacao(idAvaliacao,  idAutonomo,  idUsuario,  idContrato,  valor);
				avaliacao.setIdAvaliacao(idAvaliacao);
				avaliacao.setIdAutonomo(idAutonomo);
				avaliacao.setIdUsuario(idUsuario);
				avaliacao.setIdContrato(idContrato);
				avaliacao.setValor(valor);

				avaliacoes.add(avaliacao);
			}

			rs.close();
			st.close();
			return avaliacoes;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

}
