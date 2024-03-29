package iTonomise.modelo;

public class Contrato {
	
	private String titulo;
	private String valor;
	private String descricao;
	private String dataInicio;
	private String duracaoT;
	private String duracaoN;
	private String localizacao;
	private String status;
	private int idContrato;
	private String idAutonomo;
	private String idUsuario;
	private String tipoCriador;
	private String finalAut;
	private String finalUser;
	private String foiAvaliado;	
	
	public Contrato(String titulo, String valor, String descricao, String dataInicio, String duracaoT, String duracaoN,
			String localizacao, String status, int idContrato, String idAutonomo, String idUsuario, String tipoCriador,
			String finalAut, String finalUser, String foiAvaliado) {
		super();
		this.titulo = titulo;
		this.valor = valor;
		this.descricao = descricao;
		this.dataInicio = dataInicio;
		this.duracaoT = duracaoT;
		this.duracaoN = duracaoN;
		this.localizacao = localizacao;
		this.status = status;
		this.idContrato = idContrato;
		this.idAutonomo = idAutonomo;
		this.idUsuario = idUsuario;
		this.tipoCriador = tipoCriador;
		this.finalAut = finalAut;
		this.finalUser = finalUser;
		this.foiAvaliado = foiAvaliado;
	}


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getValor() {
		return valor;
	}


	public void setValor(String valor) {
		this.valor = valor;
	}


	public String getDescricao() {
		return descricao;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}


	public String getDataInicio() {
		return dataInicio;
	}


	public void setDataInicio(String dataInicio) {
		this.dataInicio = dataInicio;
	}


	public String getDuracaoT() {
		return duracaoT;
	}


	public void setDuracaoT(String duracaoT) {
		this.duracaoT = duracaoT;
	}


	public String getDuracaoN() {
		return duracaoN;
	}


	public void setDuracaoN(String duracaoN) {
		this.duracaoN = duracaoN;
	}


	public String getLocalizacao() {
		return localizacao;
	}


	public void setLocalizacao(String localizacao) {
		this.localizacao = localizacao;
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


	public String getTipoCriador() {
		return tipoCriador;
	}


	public void setTipoCriador(String tipoCriador) {
		this.tipoCriador = tipoCriador;
	}


	public String getFinalAut() {
		return finalAut;
	}


	public void setFinalAut(String finalAut) {
		this.finalAut = finalAut;
	}


	public String getFinalUser() {
		return finalUser;
	}


	public void setFinalUser(String finalUser) {
		this.finalUser = finalUser;
	}


	public String getFoiAvaliado() {
		return foiAvaliado;
	}


	public void setFoiAvaliado(String foiAvaliado) {
		this.foiAvaliado = foiAvaliado;
	}
		
}