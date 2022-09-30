package iTonomise.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import iTonomise.modelo.Usuario;
import util.ConnectionFactory;

import java.sql.Connection;
import java.sql.DriverManager;



public class DAOUsuarioImpl implements DAOUsuario{

	private Connection connection;
	private Usuario usuario;

	public DAOUsuarioImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conex�o: " + e.getMessage());
		}
	}

	public void cadastrar(Usuario usuario) throws DAOException {
		try {			
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "INSERT INTO usuario(nome, sobrenome, cpf, tel, usuario, senha, email, endereco) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getSobrenome());
			stmt.setString(3, usuario.getCpf());
			stmt.setString(4, usuario.getTel());
			stmt.setString(5, usuario.getUser());
			stmt.setString(6, usuario.getSenha());
			stmt.setString(7, usuario.getEmail());
			stmt.setString(8, usuario.getEndereco());
			

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
			
			String sql = "UPDATE usuario SET nome = ?, sobrenome = ? cpf = ?, tel = ?, usuario = ?, senha = ?, email = ?, endereco = ? WHERE idUsuario = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getSobrenome());
			stmt.setString(3, usuario.getCpf());
			stmt.setString(4, usuario.getTel());
			stmt.setString(5, usuario.getUser());
			stmt.setString(6, usuario.getSenha());
			stmt.setString(7, usuario.getEmail());
			stmt.setString(8, usuario.getEndereco());
			stmt.setInt(9, usuario.getIdUsuario());

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


				Usuario comum = new Usuario(nome, sobrenome, cpf, tel, usuario, senha, email, endereco, idUsuario);
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
				
				comum = new Usuario( nome,  sobrenome,  cpf,  tel,  usuario,  senha,  email,  endereco, idUsuario);
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

}
	