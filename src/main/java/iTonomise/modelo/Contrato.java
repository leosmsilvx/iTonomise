package iTonomise.modelo;

public class Contrato {
	
	private String descricao;
	private String valor;
	private String titulo;
	private String status;
	private int idContrato;
	private String idAutonomo;
	private String idUsuario;
	
	public Contrato(String titulo, String valor, String descricao, String status, int idContrato, String idAutonomo,
			String idUsuario) {
		super();
		this.titulo = titulo;
		this.valor = valor;
		this.descricao = descricao;
		this.status = status;
		this.idContrato = idContrato;
		this.idAutonomo = idAutonomo;
		this.idUsuario = idUsuario;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getIdContrato() {
		return idContrato;
	}
	public void setIdContrato(int idContrato) {
		this.idContrato = idContrato;
	}
	public String getIdAutonomo() {
		return idAutonomo;
	}
	public void setIdAutonomo(String idAutonomo) {
		this.idAutonomo = idAutonomo;
	}
	public String getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}
	
	
}