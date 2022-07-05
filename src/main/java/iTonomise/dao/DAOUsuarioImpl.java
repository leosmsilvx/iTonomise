package iTonomise.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import iTonomise.modelo.Usuario;
import until.ConnectionFactory;

import java.sql.Connection;
import java.sql.DriverManager;



public class DAOUsuarioImpl implements DAOUsuario{

	private Connection connection;
	private Usuario usuario;

	public DAOUsuarioImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conexão: " + e.getMessage());
		}
	}

	public void cadastrar(Usuario usuario) throws DAOException {
		try {			
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm","adm123");
			
			String sql = "INSERT INTO usuario(nome, sobrenome cpf, tel, user, senha, email, endereco) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
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
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm","adm123");
			
			String sql = "UPDATE usuario SET nome = ?, sobrenome = ? cpf = ?, tel = ?, user = ?, senha = ?, email = ?, endereco = ? WHERE idUsuario = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
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
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm","adm123");
			
			String sql = "DELETE FROM usuario WHERE idUsuario = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setLong(1, usuario.getIdUsuario());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao remover: " + e.getMessage());
		}
	}

	public List<Usuario> todosUsuarios() throws DAOException {

		List<Usuario> usuarios = new ArrayList<Usuario>();

		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomite", "adm","adm123");
			Statement st = conexao.createStatement();

			String sql = "SELECT idUsuario, nome, sobrenome, cpf, tel, user, senha, email, endereco FROM usuario";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idUsuario = rs.getInt("idUsuario");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String cpf = rs.getString("cpf");
				String tel = rs.getString("tel");
				String user = rs.getString("user");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String endereco = rs.getString("endereco");


				Usuario usuario = new Usuario(nome, sobrenome, cpf, tel, user, senha, email, endereco, idUsuario);
				usuario.setIdUsuario(idUsuario);
				usuario.setNome(email);
				usuario.setSobrenome(senha);
				usuario.setCpf(nome);
				usuario.setTel(sobrenome);
				usuario.setUser(user);
				usuario.setSenha(tel);
				usuario.setEmail(cpf);
				usuario.setEndereco(endereco);

				usuarios.add(usuario);
			}

			rs.close();
			st.close();
			return usuarios;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

	public Usuario buscarUsuario(int idUsuario) throws DAOException {
		Usuario usuario = null;
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
				String user = rs.getString("user");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String endereco = rs.getString("endereco");
				
				usuario = new Usuario( nome,  sobrenome,  cpf,  tel,  user,  senha,  email,  endereco, idUsuario);
				usuario.setIdUsuario(idUsuario);
				usuario.setNome(nome);
				usuario.setSobrenome(sobrenome);
				usuario.setCpf(cpf);
				usuario.setTel(tel);
				usuario.setUser(user);
				usuario.setSenha(senha);
				usuario.setEmail(email);
				usuario.setEndereco(endereco);
			}
			
			rs.close();
			stmt.close();
			return usuario;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

}
	