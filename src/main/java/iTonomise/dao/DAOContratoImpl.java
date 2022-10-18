package iTonomise.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import iTonomise.modelo.Contrato;
import util.ConnectionFactory;

public class DAOContratoImpl implements DAOContrato{
	
	private Connection connection;
	private Contrato contrato;

	public DAOContratoImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conex�o: " + e.getMessage());
		}
	}

	public void cadastrar(Contrato contrato) throws DAOException {
		try {
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "INSERT INTO contrato(titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, stats, tipoCriador, idAutonomo, idUsuario) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
			stmt.setString(1, contrato.getTitulo());
			stmt.setString(2, contrato.getValor());
			stmt.setString(3, contrato.getDescricao());
			stmt.setString(4, contrato.getDataInicio());
			stmt.setString(5, contrato.getDuracaoT());
			stmt.setString(6, contrato.getDuracaoN());
			stmt.setString(7, contrato.getLocalizacao());
			if(contrato.getStatus() == null)
				stmt.setString(8, null);
			else if(contrato.getStatus().equals("false"))
				stmt.setBoolean(8, false);
			else if(contrato.getStatus().equals("true"))
				stmt.setBoolean(8, true);
			stmt.setString(9, contrato.getTipoCriador());
			stmt.setString(10, contrato.getIdAutonomo());
			stmt.setString(11, contrato.getIdUsuario());

			stmt.execute();

			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				int idContrato = rs.getInt(1);
				contrato.setIdContrato(idContrato);
			}

			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao cadastrar: " + e.getMessage());
		}

	}


	public void atualizar(Contrato contrato) throws DAOException {
		try {			
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "UPDATE contrato SET titulo = ?, valor = ?, descricao = ?, dataInicio = ?, duracaoT = ?, duracaoN = ?, localizacao = ?, stats = ?, idAutonomo = ?, idUsuario = ? WHERE idContrato = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, contrato.getTitulo());
			stmt.setString(2, contrato.getValor());
			stmt.setString(3, contrato.getDescricao());
			stmt.setString(4, contrato.getDataInicio());
			stmt.setString(5, contrato.getDuracaoT());
			stmt.setString(6, contrato.getDuracaoN());
			stmt.setString(7, contrato.getLocalizacao());
			if(contrato.getStatus() == null)
				stmt.setString(8, null);
			else if(contrato.getStatus().equals("false"))
				stmt.setBoolean(8, false);
			else if(contrato.getStatus().equals("true"))
				stmt.setBoolean(8, true);
	
				
			stmt.setString(9,contrato.getIdAutonomo());
			stmt.setString(10,contrato.getIdUsuario());
			stmt.setInt(11, Integer.valueOf(contrato.getIdContrato()));

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar: " + e.getMessage());
		}
	}

	public void remover(Contrato contrato) throws DAOException {
		try {
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "DELETE FROM contrato WHERE idContrato = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setLong(1, contrato.getIdContrato());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao remover: " + e.getMessage());
		}
	}

	public List<Contrato> todosContratos() throws DAOException {

		List<Contrato> contratos = new ArrayList<Contrato>();

		try {
			this.connection = ConnectionFactory.getConnection();
			Statement st = this.connection.createStatement();

			String sql = "SELECT idContrato, idAutonomo, idUsuario, titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, stats, tipoCriador FROM contrato";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idContrato = rs.getInt("idContrato");
				String idAutonomo = rs.getString("idAutonomo");
				String idUsuario = rs.getString("idUsuario");
				String titulo = rs.getString("titulo");
				String valor = rs.getString("valor");
				String descricao = rs.getString("descricao");
				String dataInicio = rs.getString("dataInicio");
				String duracaoT = rs.getString("duracaoT");
				String duracaoN = rs.getString("duracaoN");
				String localizacao = rs.getString("localizacao");
				String stats = rs.getString("stats");
				String tipoCriador = rs.getString("tipoCriador");

				Contrato contrato = new Contrato(descricao, valor, titulo, dataInicio, duracaoT, duracaoN, localizacao, stats, idContrato, idAutonomo, idUsuario, tipoCriador);
				contrato.setIdContrato(idContrato);
				contrato.setDescricao(descricao);
				contrato.setValor(valor);
				contrato.setTitulo(titulo);
				contrato.setDataInicio(dataInicio);
				contrato.setDuracaoT(duracaoT);
				contrato.setDuracaoN(duracaoN);
				contrato.setLocalizacao(localizacao);
				contrato.setStatus(stats);
				contrato.setTipoCriador(tipoCriador);

				contratos.add(contrato);
			}

			rs.close();
			st.close();
			return contratos;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

	public Contrato buscarContrato(int idContrato) throws DAOException {
		Contrato contrato = null;
		try {

			String sql = "SELECT titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, stats, idAutonomo, idUsuario, tipoCriador FROM contrato WHERE idContrato = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, idContrato);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				String idAutonomo = rs.getString("idAutonomo");
				String idUsuario = rs.getString("idUsuario");
				String titulo = rs.getString("titulo");
				String valor = rs.getString("valor");
				String descricao = rs.getString("descricao");
				String dataInicio = rs.getString("dataInicio");
				String duracaoT = rs.getString("duracaoT");
				String duracaoN = rs.getString("duracaoN");
				String localizacao = rs.getString("localizacao");
				String stats = rs.getString("stats");
				String tipoCriador = rs.getString("tipoCriador");
				
				contrato = new Contrato(titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, stats, idContrato, idAutonomo, idUsuario, tipoCriador);

				contrato.setIdContrato(idContrato);
				contrato.setDescricao(descricao);
				contrato.setValor(valor);
				contrato.setTitulo(titulo);
				contrato.setDataInicio(dataInicio);
				contrato.setDuracaoT(duracaoT);
				contrato.setDuracaoN(duracaoN);
				contrato.setLocalizacao(localizacao);
				contrato.setStatus(stats);
				contrato.setIdAutonomo(idAutonomo);
				contrato.setIdUsuario(idUsuario);
				contrato.setTipoCriador(tipoCriador);
			}
			
			rs.close();
			stmt.close();
			return contrato;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

}
