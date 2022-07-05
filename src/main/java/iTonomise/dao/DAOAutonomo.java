package iTonomise.dao;

import java.util.List;
import iTonomise.modelo.*;

public interface DAOAutonomo {
	
	public void cadastrar(Autonomo autonomo) throws DAOException;

	public void atualizar(Autonomo autonomo) throws DAOException;

	public void remover(Autonomo autonomo) throws DAOException;

	public List<Autonomo> todosAutonomos() throws DAOException;

	public Autonomo buscarAutonomo(int idAutonomo) throws DAOException;

}
