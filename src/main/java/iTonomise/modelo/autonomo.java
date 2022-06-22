package iTonomise.modelo;

public class autonomo {
	
	private String nome;
	private String sobreNome;
	private String email;
	private String tel;
	private String cpf;
	private String dtn;
	private String senha;
	private String rg;
	private String endereco;
	private String ppv; //plataforma principal de vendas
	private int idVendedor;
	
	public autonomo(String nome, String sobreNome, String email, String tel, String cpf, String dtn, String senha,
			String rg, String endereco, String ppv, int idVendedor) {
		this.nome = nome;
		this.sobreNome = sobreNome;
		this.email = email;
		this.tel = tel;
		this.cpf = cpf;
		this.dtn = dtn;
		this.senha = senha;
		this.rg = rg;
		this.endereco = endereco;
		this.ppv = ppv;
		this.idVendedor = idVendedor;
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobreNome() {
		return sobreNome;
	}

	public void setSobreNome(String sobreNome) {
		this.sobreNome = sobreNome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getDtn() {
		return dtn;
	}

	public void setDtn(String dtn) {
		this.dtn = dtn;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getPpv() {
		return ppv;
	}

	public void setPpv(String ppv) {
		this.ppv = ppv;
	}

	public int getIdVendedor() {
		return idVendedor;
	}

	public void setIdVendedor(int idVendedor) {
		this.idVendedor = idVendedor;
	}

}
