package iTonomise.dao;

import java.util.List;
import iTonomise.modelo.*;

public interface DAOUsuario {
	
	public void cadastrar(Usuario vendedor) throws DAOException;

	public void atualizar(Usuario vendedor) throws DAOException;

	public void remover(Usuario vendedor) throws DAOException;

	public List<Usuario> todosUsuarios() throws DAOException;

	public Usuario buscarUsuario(int idUsuario) throws DAOException;
	
	public int buscarEmailUsuario(String email) throws DAOException;
	
	public Usuario buscarUsuarioPUser(String user) throws DAOException;
	
	public int contarTodosContratos(int idUsuario) throws DAOException;

	public void alterarSenha(int id, String novaSenha) throws DAOException;

	public List<Contrato> meusContratos(int id) throws DAOException;
	
	public List<Contrato> buscarContratoPStatus(String status, int id) throws DAOException;

	public List<Usuario> todosUsuariosComuns() throws DAOException;

}
