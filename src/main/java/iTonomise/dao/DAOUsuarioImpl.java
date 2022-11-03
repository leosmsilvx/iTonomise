package iTonomise.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import iTonomise.modelo.Contrato;
import iTonomise.modelo.Usuario;
import util.ConnectionFactory;
import java.sql.Connection;

public class DAOUsuarioImpl implements DAOUsuario{

	private Connection connection;

	public DAOUsuarioImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conexão: " + e.getMessage());
		}
	}

	public void cadastrar(Usuario usuario) throws DAOException {
		try {			
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "INSERT INTO usuario(nome, sobrenome, cpf, tel, usuario, senha, email, endereco, nomeImg) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getSobrenome());
			stmt.setString(3, usuario.getCpf());
			stmt.setString(4, usuario.getTel());
			stmt.setString(5, usuario.getUser());
			stmt.setString(6, usuario.getSenha());
			stmt.setString(7, usuario.getEmail());
			stmt.setString(8, usuario.getEndereco());
			stmt.setString(9, usuario.getNomeImg());

			stmt.execute();

			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				int idUsuario = rs.getInt(1);
				usuario.setIdUsuario(idUsuario);
			}

			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao cadastrar: " + e.getMessage());
		}

	}


	public void atualizar(Usuario usuario) throws DAOException {
		try {
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "UPDATE usuario SET nome = ?, sobrenome = ?, cpf = ?, tel = ?, usuario = ?, senha = ?, email = ?, endereco = ?, nomeImg = ? WHERE idUsuario = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getSobrenome());
			stmt.setString(3, usuario.getCpf());
			stmt.setString(4, usuario.getTel());
			stmt.setString(5, usuario.getUser());
			stmt.setString(6, usuario.getSenha());
			stmt.setString(7, usuario.getEmail());
			stmt.setString(8, usuario.getEndereco());
			stmt.setString(9, usuario.getNomeImg());
			stmt.setInt(10, usuario.getIdUsuario());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar: " + e.getMessage());
		}
	}

	public void remover(Usuario usuario) throws DAOException {
		try {
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "DELETE FROM usuario WHERE idUsuario = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setLong(1, usuario.getIdUsuario());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao remover: " + e.getMessage());
		}
	}

	public List<Usuario> todosUsuarios() throws DAOException {

		List<Usuario> comuns = new ArrayList<Usuario>();

		try {
			this.connection = ConnectionFactory.getConnection();
			Statement st = this.connection.createStatement();

			String sql = "SELECT idUsuario, nome, sobrenome, cpf, tel, usuario, senha, email, endereco FROM usuario";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idUsuario = rs.getInt("idUsuario");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String cpf = rs.getString("cpf");
				String tel = rs.getString("tel");
				String usuario = rs.getString("usuario");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String endereco = rs.getString("endereco");
				String nomeImg = null;

				Usuario comum = new Usuario(nome, sobrenome, cpf, tel, usuario, senha, email, endereco, nomeImg, idUsuario);
				comum.setIdUsuario(idUsuario);
				comum.setNome(nome);
				comum.setSobrenome(sobrenome);
				comum.setCpf(cpf);
				comum.setTel(tel);
				comum.setUser(usuario);
				comum.setSenha(senha);
				comum.setEmail(email);
				comum.setEndereco(endereco);

				comuns.add(comum);
			}

			rs.close();
			st.close();
			return comuns;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

	public Usuario buscarUsuario(int idUsuario) throws DAOException {
		Usuario comum = null;
		try {
			
			String sql = "SELECT * from usuario WHERE idUsuario = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, idUsuario);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String cpf = rs.getString("cpf");
				String tel = rs.getString("tel");
				String usuario = rs.getString("usuario");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String endereco = rs.getString("endereco");
				String nomeImg = rs.getString("nomeImg");
				
				comum = new Usuario( nome,  sobrenome,  cpf,  tel,  usuario,  senha,  email,  endereco, nomeImg, idUsuario);
				comum.setIdUsuario(idUsuario);
				comum.setNome(nome);
				comum.setSobrenome(sobrenome);
				comum.setCpf(cpf);
				comum.setTel(tel);
				comum.setUser(usuario);
				comum.setSenha(senha);
				comum.setEmail(email);
				comum.setEndereco(endereco);
			}
			
			rs.close();
			stmt.close();
			return comum;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public Usuario buscarUsuarioPUser(String user) throws DAOException {
		Usuario comum = null;
		try {
			
			String sql = "SELECT * from usuario WHERE usuario = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setString(1, user);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				int idUsuario = rs.getInt("idUsuario");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String cpf = rs.getString("cpf");
				String tel = rs.getString("tel");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String endereco = rs.getString("endereco");
				String nomeImg = null;
				
				comum = new Usuario( nome,  sobrenome,  cpf,  tel,  user,  senha,  email,  endereco, nomeImg, idUsuario); 
				comum.setIdUsuario(idUsuario);
				comum.setNome(nome);
				comum.setSobrenome(sobrenome);
				comum.setCpf(cpf);
				comum.setTel(tel);
				comum.setUser(user);
				comum.setSenha(senha);
				comum.setEmail(email);
				comum.setEndereco(endereco);
			}
			
			rs.close();
			stmt.close();
			return comum;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public int buscarEmailUsuario(String email) throws DAOException {
		int id = 0;
		try {
			
			String sql = "SELECT * from usuario WHERE email = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setString(1, email);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				id = rs.getInt("idUsuario");
			}
			
			rs.close();
			stmt.close();
			return id;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public int contarTodosContratos(int idUsuario) throws DAOException {
		try {
			int todos = 0;
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "SELECT COUNT(idAvaliacao) FROM avaliacao WHERE idUsuario = ?;";

			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setInt(1, idUsuario);

			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()) {
				todos = rs.getInt("COUNT(idAvaliacao)");
			}	
				
			rs.close();
			stmt.close();
			return todos;
		} catch (Exception e) {
			throw new DAOException("Erro ao contar contratos: " + e.getMessage());
		}
	}
	
	public void alterarSenha(int id, String novaSenha) throws DAOException {
		try {
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "UPDATE usuario SET senha = ? WHERE idUsuario = ?;";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, novaSenha);
			stmt.setInt(2, id);

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar a senha: " + e.getMessage());
		}
	}
	
	public List<Contrato> meusContratos(int id) throws DAOException {

		List<Contrato> contratos = new ArrayList<Contrato>();

		try {
			this.connection = ConnectionFactory.getConnection();

			String sql = "SELECT * FROM contrato WHERE idUsuario = ?";
			
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, id);

			ResultSet rs = stmt.executeQuery();

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
				String finalAut = rs.getString("finalAut");
				String finalUser = rs.getString("finalUser");
				String foiAvaliado = rs.getString("foiAvaliado");

				Contrato contrato = new Contrato(descricao, valor, titulo, dataInicio, duracaoT, duracaoN, localizacao, stats, idContrato, idAutonomo, idUsuario, tipoCriador, finalAut, finalUser, foiAvaliado);
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
				contrato.setFinalAut(finalAut);
				contrato.setFinalUser(finalUser);
				contrato.setFoiAvaliado(foiAvaliado);

				contratos.add(contrato);
			}

			rs.close();
			stmt.close();
			return contratos;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public List<Contrato> buscarContratoPStatus(String status, int id) throws DAOException {
		List<Contrato> contratos = new ArrayList<Contrato>();
		try {
			
			String sql = "SELECT * FROM contrato WHERE stats LIKE ? AND idUsuario = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setString(1, status);
			stmt.setInt(2, id);

			ResultSet rs = stmt.executeQuery();
			
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
				String finalAut = rs.getString("finalAut");
				String finalUser = rs.getString("finalUser");
				String foiAvaliado = rs.getString("foiAvaliado");

				Contrato contrato = new Contrato(descricao, valor, titulo, dataInicio, duracaoT, duracaoN, localizacao, stats, idContrato, idAutonomo, idUsuario, tipoCriador, finalAut, finalUser, foiAvaliado);
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
				contrato.setFinalAut(finalAut);
				contrato.setFinalUser(finalUser);
				contrato.setFoiAvaliado(foiAvaliado);

				contratos.add(contrato);
			}
			
			rs.close();
			stmt.close();
			return contratos;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar contrato p/ status: " + e.getMessage());
		}
	}
	
	public List<Usuario> todosUsuariosComuns() throws DAOException {

		List<Usuario> comuns = new ArrayList<Usuario>();

		try {
			this.connection = ConnectionFactory.getConnection();
			Statement st = this.connection.createStatement();

			String sql = "SELECT idUsuario, usuario FROM usuario";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idUsuario = rs.getInt("idUsuario");
				String usuario = rs.getString("usuario");

				Usuario comum = new Usuario(null, null, null, null, usuario, null, null, null, null, idUsuario);
				comum.setIdUsuario(idUsuario);
				comum.setUser(usuario);

				comuns.add(comum);
			}

			rs.close();
			st.close();
			return comuns;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
}
	