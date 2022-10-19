package iTonomise.dao;

import java.util.List;
import iTonomise.modelo.*;

public interface DAOUsuario {
	
	public void cadastrar(Usuario vendedor) throws DAOException;

	public void atualizar(Usuario vendedor) throws DAOException;

	public void remover(Usuario vendedor) throws DAOException;

	public List<Usuario> todosUsuarios() throws DAOException;

	public Usuario buscarUsuario(int idUsuario) throws DAOException;
	
	public Usuario buscarUsuarioPUser(String user) throws DAOException;

}
