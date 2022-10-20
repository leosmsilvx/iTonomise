package iTonomise.modelo;

public class Avaliacao {	
	
	private int idAvaliacao;
	private int idAutonomo;
	private int idUsuario;
	private int idContrato;
	private String valor;	
	
	public Avaliacao(int idAvaliacao, int idAutonomo, int idUsuario, int idContrato, String valor) {
		super();
		this.idAvaliacao = idAvaliacao;
		this.idAutonomo = idAutonomo;
		this.idUsuario = idUsuario;
		this.idContrato = idContrato;
		this.valor = valor;
	}

	public int getIdAvaliacao() {
		return idAvaliacao;
	}


	public void setIdAvaliacao(int idAvaliacao) {
		this.idAvaliacao = idAvaliacao;
	}


	public int getIdAutonomo() {
		return idAutonomo;
	}


	public void setIdAutonomo(int idAutonomo) {
		this.idAutonomo = idAutonomo;
	}


	public int getIdUsuario() {
		return idUsuario;
	}


	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}


	public int getIdContrato() {
		return idContrato;
	}


	public void setIdContrato(int idContrato) {
		this.idContrato = idContrato;
	}


	public String getValor() {
		return valor;
	}


	public void setValor(String valor) {
		this.valor = valor;
	}
	
}
