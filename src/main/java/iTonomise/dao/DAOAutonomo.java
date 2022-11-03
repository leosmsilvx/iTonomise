package iTonomise.dao;

import java.util.List;
import iTonomise.modelo.*;

public interface DAOAutonomo {
	
	public void cadastrar(Autonomo autonomo) throws DAOException;

	public void atualizar(Autonomo autonomo) throws DAOException;

	public void remover(Autonomo autonomo) throws DAOException;

	public List<Autonomo> todosAutonomos() throws DAOException;

	public Autonomo buscarAutonomo(int idAutonomo) throws DAOException;
	
	public Autonomo buscarAutonomoPUser(String user) throws DAOException;
	
	public int buscarEmailAutonomo(String email) throws DAOException;
	
	public void atualizarMedia(int idAutonomo) throws DAOException;
	
	public List<Autonomo> buscarAutonomoTag(String tagsBusca, String nomeBusca) throws DAOException;
	
	public int contarTodosContratos(int idAutonomo) throws DAOException;
	
	public void alterarSenha(int id, String novaSenha) throws DAOException;
	
	public List<Contrato> meusContratos(int id) throws DAOException;	

	public List<Contrato> buscarContratoPStatus(String status, int id) throws DAOException;

	public List<Autonomo> todosUsuariosAutonomo() throws DAOException;


}
