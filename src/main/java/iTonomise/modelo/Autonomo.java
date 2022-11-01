package iTonomise.modelo;

public class Autonomo {
	
	
	private String nome;
	private String sobrenome;
	private String cpf;
	private String tel;
	private String user;
	private String senha;
	private String email;
	private String desc;
	private String tags;
	private String endereco;
	private double aval;
	private String nomeImg;
	private int idAutonomo;
	
	public Autonomo(String nome, String sobrenome, String cpf, String tel, String user, String senha, String email,
			String desc, String tags, String endereco, double aval, String nomeImg, int idAutonomo) {
		super();
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.cpf = cpf;
		this.tel = tel;
		this.user = user;
		this.senha = senha;
		this.email = email;
		this.desc = desc;
		this.tags = tags;
		this.endereco = endereco;
		this.aval = aval;
		this.nomeImg = nomeImg;
		this.idAutonomo = idAutonomo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public double getAval() {
		return aval;
	}

	public void setAval(double aval) {
		this.aval = aval;
	}

	public String getNomeImg() {
		return nomeImg;
	}

	public void setNomeImg(String nomeImg) {
		this.nomeImg = nomeImg;
	}

	public int getIdAutonomo() {
		return idAutonomo;
	}

	public void setIdAutonomo(int idAutonomo) {
		this.idAutonomo = idAutonomo;
	}
	
	
}