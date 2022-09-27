package iTonomise.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import iTonomise.modelo.Contrato;
import until.ConnectionFactory;

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
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm", "adm123");
			
			String sql = "INSERT INTO contrato(titulo, valor, descricao, stats) VALUES (?, ?, ?, ?);";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, contrato.getTitulo());
			stmt.setString(2, contrato.getValor());
			stmt.setString(3, contrato.getDescricao());
			stmt.setString(4, contrato.getStatus());

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
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm", "adm123");
			
			String sql = "UPDATE contrato SET titulo = ?, valor = ?, descricao = ?, status = ? WHERE idContrato = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, contrato.getTitulo());
			stmt.setString(2, contrato.getValor());
			stmt.setString(3, contrato.getDescricao());
			stmt.setString(4, contrato.getStatus());
			stmt.setInt(6, contrato.getIdContrato());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar: " + e.getMessage());
		}
	}

	public void remover(Contrato contrato) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm", "adm123");
			
			String sql = "DELETE FROM contrato WHERE idContrato = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

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
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm", "adm123");
			Statement st = conexao.createStatement();

			String sql = "SELECT idContrato, titulo, valor, descricao, status FROM contrato";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idContrato = rs.getInt("idContrato");
				String titulo = rs.getString("titulo");
				String valor = rs.getString("valor");
				String descricao = rs.getString("descricao");
				String status = rs.getString("status");

				Contrato contrato = new Contrato(descricao, valor, titulo, status, idContrato);
				contrato.setIdContrato(idContrato);
				contrato.setDescricao(descricao);
				contrato.setValor(valor);
				contrato.setTitulo(titulo);
				contrato.setStatus(status);

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

			String sql = "SELECT titulo, valor, descricao, status, avaliacao FROM contrato WHERE idContrato = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, idContrato);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				String titulo = rs.getString("titulo");
				String valor = rs.getString("valor");
				String descricao = rs.getString("descricao");
				String status = rs.getString("status");
				
				contrato = new Contrato(descricao, valor, titulo, status, idContrato);

				contrato.setIdContrato(idContrato);
				contrato.setIdContrato(idContrato);
				contrato.setDescricao(descricao);
				contrato.setValor(valor);
				contrato.setTitulo(titulo);
				contrato.setStatus(status);
			}
			
			rs.close();
			stmt.close();
			return contrato;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

}
