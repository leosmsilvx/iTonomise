package iTonomise.dao;

import java.util.List;

import iTonomise.modelo.*;

public interface DAOAvaliacao {
	
	public void cadastrar(Avaliacao avaliacao) throws DAOException;

	public Avaliacao buscarAvalPIdAval(int idAvaliacao) throws DAOException;
	
	public Avaliacao buscarAvalPIdAutonomo(int idAutonomo) throws DAOException;
	
	public double mediaAutonomo(int idAutonomo) throws DAOException;
	
	public List<Avaliacao> todasAvaliacoes() throws DAOException;

}
