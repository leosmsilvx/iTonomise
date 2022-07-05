package iTonomise.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import iTonomise.modelo.Autonomo;
import until.ConnectionFactory;

import java.sql.Connection;
import java.sql.DriverManager;



public class DAOAutonomoImpl implements DAOAutonomo{

	private Connection connection;
	private Autonomo autonomo;

	public DAOAutonomoImpl() throws DAOException {
		try {
			this.connection = (Connection) ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new DAOException("Erro na conexão: " + e.getMessage());
		}
	}

	public void cadastrar(Autonomo autonomo) throws DAOException {
		try {			
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm","adm123");
			
			String sql = "INSERT INTO autonomo(nome, sobrenome cpf, tel, user, senha, email, desc, tags, endereco) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			
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

			stmt.execute();

			ResultSet rs = stmt.getGeneratedKeys();

			if (rs.next()) {
				int idAutonomo = rs.getInt(1);
				autonomo.setIdAutonomo(idAutonomo);
			}

			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao cadastrar: " + e.getMessage());
		}

	}


	public void atualizar(Autonomo autonomo) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm","adm123");
			
			String sql = "UPDATE autonomo SET nome = ?, sobrenome = ? cpf = ?, tel = ?, user = ?, senha = ?, email = ?, desc = ?, tags = ?, endereco = ? WHERE idAutonomo = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

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
			stmt.setInt(11, autonomo.getIdAutonomo());

			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new DAOException("Erro ao atualizar: " + e.getMessage());
		}
	}

	public void remover(Autonomo autonomo) throws DAOException {
		try {
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomise", "adm","adm123");
			
			String sql = "DELETE FROM autonomo WHERE idAutonomo = ?";

			PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

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
			Connection conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/itonomite", "adm","adm123");
			Statement st = conexao.createStatement();

			String sql = "SELECT idAutonomo, nome, sobrenome, cpf, tel, user, senha, email, desc, tags, endereco FROM autonomo";

			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				int idAutonomo = rs.getInt("idAutonomo");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String cpf = rs.getString("cpf");
				String tel = rs.getString("tel");
				String user = rs.getString("user");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String desc = rs.getString("desc");
				String tags = rs.getString("tags");
				String endereco = rs.getString("endereco");


				Autonomo autonomo = new Autonomo(nome,  sobrenome,  cpf,  tel,  user,  senha,  email, desc, tags, endereco, idAutonomo);
				autonomo.setIdAutonomo(idAutonomo);
				autonomo.setNome(nome);
				autonomo.setSobrenome(sobrenome);
				autonomo.setCpf(cpf);
				autonomo.setTel(tel);
				autonomo.setUser(user);
				autonomo.setSenha(senha);
				autonomo.setEmail(email);
				autonomo.setDesc(desc);
				autonomo.setTags(tags);
				autonomo.setEndereco(endereco);

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
				String user = rs.getString("user");
				String senha = rs.getString("senha");
				String email = rs.getString("email");
				String desc = rs.getString("desc");
				String tags = rs.getString("tags");
				String endereco = rs.getString("endereco");
				
				autonomo = new Autonomo( nome,  sobrenome,  cpf,  tel,  user,  senha,  email, desc, tags,  endereco, idAutonomo);
				autonomo.setIdAutonomo(idAutonomo);
				autonomo.setNome(nome);
				autonomo.setSobrenome(sobrenome);
				autonomo.setCpf(cpf);
				autonomo.setTel(tel);
				autonomo.setUser(user);
				autonomo.setSenha(senha);
				autonomo.setEmail(email);
				autonomo.setEndereco(endereco);
		}
			
			rs.close();
			stmt.close();
			return autonomo;
			
		} catch (Exception e) {
			throw new DAOException("Erro ao buscar: " + e.getMessage());
		}
	}

}