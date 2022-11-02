package iTonomise.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import iTonomise.modelo.Autonomo;
import util.ConnectionFactory;

import java.sql.Connection;

public class DAOAutonomoImpl implements DAOAutonomo{

	private Connection connection;

	public DAOAutonomoImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conexão: " + e.getMessage());
		}
	}

	public void cadastrar(Autonomo autonomo) throws DAOException {
		try {			
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "INSERT INTO autonomo(nome, sobrenome, cpf, tel, usuario, senha, email, descricao, tags, endereco, nomeImg) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
			stmt.setString(1, autonomo.getNome());
			stmt.setString(2, autonomo.getSobrenome());
			stmt.setString(3, autonomo.getCpf());
			stmt.setString(4, autonomo.getTel());
			stmt.setString(5, autonomo.getUser());
			stmt.setString(6, autonomo.getSenha());
			stmt.setString(7, autonomo.getEmail());
			stmt.setString(8, autonomo.getDesc());
			stmt.setString(9, autonomo.getTags());
			stmt.setString(10, autonomo.getEndereco());
			stmt.setString(11, autonomo.getNomeImg());

			stmt.execute();

			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				int idAutonomo = rs.getInt(1);
				autonomo.setIdAutonomo(idAutonomo);
				autonomo.setAval(0);
			}

			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao cadastrar: " + e.getMessage());
		}

	}


	public void atualizar(Autonomo autonomo) throws DAOException {
		try {
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "UPDATE autonomo SET nome = ?, sobrenome = ?, cpf = ?, tel = ?, usuario = ?, senha = ?, email = ?, descricao = ?, tags = ?, endereco = ?, aval = ?, nomeImg = ? WHERE idAutonomo = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, autonomo.getNome());
			stmt.setString(2, autonomo.getSobrenome());
			stmt.setString(3, autonomo.getCpf());
			stmt.setString(4, autonomo.getTel());
			stmt.setString(5, autonomo.getUser());
			stmt.setString(6, autonomo.getSenha());
			stmt.setString(7, autonomo.getEmail());
			stmt.setString(8, autonomo.getDesc());
			stmt.setString(9, autonomo.getTags());
			stmt.setString(10, autonomo.getEndereco());
			stmt.setDouble(11, autonomo.getAval());
			stmt.setString(12, autonomo.getNomeImg());
			stmt.setInt(13, autonomo.getIdAutonomo());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar: " + e.getMessage());
		}
	}

	public void remover(Autonomo autonomo) throws DAOException {
		try {
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "DELETE FROM autonomo WHERE idAutonomo = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setLong(1, autonomo.getIdAutonomo());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao remover: " + e.getMessage());
		}
	}

	public List<Autonomo> todosAutonomos() throws DAOException {

		List<Autonomo> autonomos = new ArrayList<Autonomo>();

		try {
			this.connection = ConnectionFactory.getConnection();
			Statement st = this.connection.createStatement();

			String sql = "SELECT idAutonomo, nome, sobrenome, cpf, tel, usuario, senha, email, descricao, tags, endereco, aval FROM autonomo";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idAutonomo = rs.getInt("idAutonomo");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String cpf = rs.getString("cpf");
				String tel = rs.getString("tel");
				String usuario = rs.getString("usuario");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String descricao = rs.getString("descricao");
				String tags = rs.getString("tags");
				String endereco = rs.getString("endereco");
				double aval = rs.getDouble("aval");
				String nomeImg = null;

				Autonomo autonomo = new Autonomo(nome,  sobrenome,  cpf,  tel,  usuario,  senha,  email, descricao, tags, endereco, aval, nomeImg,idAutonomo);
				autonomo.setIdAutonomo(idAutonomo);
				autonomo.setNome(nome);
				autonomo.setSobrenome(sobrenome);
				autonomo.setCpf(cpf);
				autonomo.setTel(tel);
				autonomo.setUser(usuario);
				autonomo.setSenha(senha);
				autonomo.setEmail(email);
				autonomo.setDesc(descricao);
				autonomo.setTags(tags);
				autonomo.setEndereco(endereco);
				autonomo.setAval(aval);

				autonomos.add(autonomo);
			}

			rs.close();
			st.close();
			return autonomos;
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

	public Autonomo buscarAutonomo(int idAutonomo) throws DAOException {
		Autonomo autonomo = null;
		try {
			
			String sql = "SELECT * from autonomo WHERE idAutonomo = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setInt(1, idAutonomo);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String cpf = rs.getString("cpf");
				String tel = rs.getString("tel");
				String usuario = rs.getString("usuario");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String descricao = rs.getString("descricao");
				String tags = rs.getString("tags");
				String endereco = rs.getString("endereco");
				double aval = rs.getDouble("aval");
				String nomeImg = rs.getString("nomeImg");
				
				autonomo = new Autonomo( nome,  sobrenome,  cpf,  tel,  usuario,  senha,  email, descricao, tags,  endereco, aval, nomeImg, idAutonomo);
				autonomo.setIdAutonomo(idAutonomo);
				autonomo.setNome(nome);
				autonomo.setSobrenome(sobrenome);
				autonomo.setCpf(cpf);
				autonomo.setTel(tel);
				autonomo.setUser(usuario);
				autonomo.setSenha(senha);
				autonomo.setEmail(email);
				autonomo.setEndereco(endereco);
				autonomo.setAval(aval);
				autonomo.setDesc(descricao);
				autonomo.setNomeImg(nomeImg);
		}
			
			rs.close();
			stmt.close();
			return autonomo;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public Autonomo buscarAutonomoPUser(String user) throws DAOException {
		Autonomo autonomo = null;
		try {
			
			String sql = "SELECT * from autonomo WHERE usuario = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setString(1, user);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				int idAutonomo = rs.getInt("idAutonomo");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String cpf = rs.getString("cpf");
				String tel = rs.getString("tel");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String descricao = rs.getString("descricao");
				String tags = rs.getString("tags");
				String endereco = rs.getString("endereco");
				double aval = rs.getDouble("aval");
				String nomeImg = null;
				
				autonomo = new Autonomo( nome,  sobrenome,  cpf,  tel,  user,  senha,  email, descricao, tags,  endereco, aval, nomeImg, idAutonomo);
				autonomo.setIdAutonomo(idAutonomo);
				autonomo.setNome(nome);
				autonomo.setSobrenome(sobrenome);
				autonomo.setCpf(cpf);
				autonomo.setTel(tel);
				autonomo.setUser(user);
				autonomo.setSenha(senha);
				autonomo.setEmail(email);
				autonomo.setEndereco(endereco);
				autonomo.setAval(aval);
				autonomo.setDesc(descricao);
		}
			
			rs.close();
			stmt.close();
			return autonomo;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public int buscarEmailAutonomo(String email) throws DAOException {
		int id = 0;
		try {
			
			String sql = "SELECT * from autonomo WHERE email = ?";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setString(1, email);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				id = rs.getInt("idAutonomo");
		}
			
			rs.close();
			stmt.close();
			return id;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}
	
	public void atualizarMedia(int idAutonomo) throws DAOException {
		try {
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "UPDATE autonomo SET aval = ROUND((SELECT AVG(valor) FROM avaliacao WHERE idAutonomo = ?), 2) WHERE idAutonomo = ?;";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setInt(1, idAutonomo);
			stmt.setInt(2, idAutonomo);

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar media: " + e.getMessage());
		}
	}
	
	public List<Autonomo> buscarAutonomoTag(String tagsBusca, String nomeBusca) throws DAOException {
		int idAutonomo = 0;
		List<Autonomo> autonomos = new ArrayList<Autonomo>();
		try {
			
			String sql = "SELECT * FROM autonomo WHERE tags LIKE ? AND (nome LIKE ? OR sobrenome LIKE ? OR usuario LIKE ? OR tags LIKE ?) ORDER BY aval DESC";

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setString(1, "%"+tagsBusca+"%");
			stmt.setString(2, "%"+nomeBusca+"%");
			stmt.setString(3, "%"+nomeBusca+"%");
			stmt.setString(4, "%"+nomeBusca+"%");
			stmt.setString(5, "%"+nomeBusca+"%");

			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String cpf = rs.getString("cpf");
				String tel = rs.getString("tel");
				String usuario = rs.getString("usuario");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String descricao = rs.getString("descricao");
				String tags = rs.getString("tags");
				String endereco = rs.getString("endereco");
				double aval = rs.getDouble("aval");
				String nomeImg = null;


				Autonomo autonomo = new Autonomo(nome,  sobrenome,  cpf,  tel,  usuario,  senha,  email, descricao, tags, endereco, aval, nomeImg, idAutonomo);
				autonomo.setIdAutonomo(idAutonomo);
				autonomo.setNome(nome);
				autonomo.setSobrenome(sobrenome);
				autonomo.setCpf(cpf);
				autonomo.setTel(tel);
				autonomo.setUser(usuario);
				autonomo.setSenha(senha);
				autonomo.setEmail(email);
				autonomo.setDesc(descricao);
				autonomo.setTags(tags);
				autonomo.setEndereco(endereco);
				autonomo.setAval(aval);

				autonomos.add(autonomo);
			}
			
			rs.close();
			stmt.close();
			return autonomos;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar autonomo p/ tag: " + e.getMessage());
		}
	}
	
	public int contarTodosContratos(int idAutonomo) throws DAOException {
		try {
			int todos = 0;
			this.connection = ConnectionFactory.getConnection();
			
			String sql = "SELECT COUNT(idAvaliacao) FROM avaliacao WHERE idAutonomo = ?;";

			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setInt(1, idAutonomo);

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
			
			String sql = "UPDATE autonomo SET senha = ? WHERE idAutonomo = ?;";

			PreparedStatement stmt = this.connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			stmt.setString(1, novaSenha);
			stmt.setInt(2, id);

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar a senha: " + e.getMessage());
		}
	}

}