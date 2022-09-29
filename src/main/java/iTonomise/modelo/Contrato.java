package iTonomise.modelo;

public class Contrato {
	
	private String descricao;
	private String valor;
	private String titulo;
	private boolean status;
	private int idContrato;
	
	public Contrato(String descricao, String valor, String titulo, boolean status, int idContrato) {
		super();
		this.descricao = descricao;
		this.valor = valor;
		this.titulo = titulo;
		this.status = status;
		this.idContrato = idContrato;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getIdContrato() {
		return idContrato;
	}

	public void setIdContrato(int idContrato) {
		this.idContrato = idContrato;
	}
	
}