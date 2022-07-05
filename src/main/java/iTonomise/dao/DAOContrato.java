package iTonomise.dao;

import java.util.List;
import iTonomise.modelo.*;

public interface DAOContrato {
	
	public void cadastrar(Contrato contrato) throws DAOException;

	public void atualizar(Contrato contrato) throws DAOException;

	public void remover(Contrato contrato) throws DAOException;

	public List<Contrato> todosContratos() throws DAOException;

	public Contrato buscarContrato(int idContrato) throws DAOException;

}
