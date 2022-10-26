<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<meta charset="utf-8">
<title>iTonomise</title>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

body{
	background-color: #EEE;
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}
.container{
	max-width: 70%;
}
@media only screen and  ( max-width : 600px) {
	.container{
		max-width: 90%;
	}
}
input[type=checkbox]{
accent-color:#212529;
transform : scale(1.2);
}
</style>
</head>
<body>
			<!-- Header -->
			<nav class="py-2 bg-dark border-bottom">
				<div class="d-flex flex-wrap">
					<ul class="nav me-auto">
						<li class="nav-item"><div Style="background-color: #212529; margin-left: 30px; padding: 0px; height: 50px;">
							<a href="controller?action=home"><img src="/iTonomise/imgs/itonomise.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
							<a href="controller?action=home" style="color: white; font-size: 25px; text-decoration: none; margin-left: 5px"> iTonomise</a>
							</div></li>
					</ul>
					<ul class="nav" style="margin-right: 30px; margin-top: 5px">
						<li class="nav-item text-white"><a href="controller?action=meusContratos" class="nav-link" style="text-decoration: none; color: white; ">Meus Contratos</a></li>						
						<li class="nav-item nav-link"><a href="controller?action=logout" style="text-decoration: none; color: red;">Logout</a></li>
					</ul>
				</div>
			</nav>
			<div class="container">
                <main>
                    <div class="row g-3">
                            <h4 class="mb-4 pt-4">Alterar dados do perfil</h4>
				<form action="controller?action=alterarPerfilAut" method="post"
					id="formulario" class="needs-validation">
					<div class="row g-3">
						<div class="col-4">
							<h6 class="text-body text-start px-1">@${autonomo.user}</h6>
							<div class="card">
								<img
									src="https://st.depositphotos.com/2818715/5102/i/600/depositphotos_51026865-stock-photo-serious-and-pensive-isolated-young.jpg"
									height="250" width="225" class="card-img-top">
								<div class="card-body border-top">
									<p class="card-text"
										style="font-weight: bold; font-size: larger; text-align: center;">${autonomo.nome}</p>
								</div>
							</div>
						</div>

						<div class="col-8">
							<label class="form-label">Primeiro Nome</label> <input
								type="text" class="form-control" value="${autonomo.nome}"
								name="nome" required> <label class="form-label">Sobrenome</label>
							<input type="text" class="form-control"
								value="${autonomo.sobrenome}" name="sobrenome" required> <label
								class="form-label">CPF</label> <input type="number"
								class="form-control" value="${autonomo.cpf}" name="cpf" required>
							<label class="form-label">Telefone</label><input type="number"
								class="form-control" value="${autonomo.tel}" name="tel" required>
							<label class="form-label">Email</label> <input type="email"
								class="form-control" value="${autonomo.email}" name="email" required>

						</div>
						<div class="col-12">
							<label class="form-label">Descrição</label>
							<textarea class="form-control" name="desc" required>${autonomo.desc}</textarea>
						</div>

						<div class="col-12">
							<label class="form-label">Endereço</label>
							<textarea class="form-control" name="endereco" required>${autonomo.endereco}</textarea>
						</div>
						<div class="col-12">
							<fieldset>
								<legend>
									Escolha sua(s) área(s) de atuação<font size="2">(max. 3)</font>
								</legend>
								<h5 id="mensagemProfissao" style="display: none;"><p class="text-center text-warning">Selecione uma opção!</p></h5>
								<table class="px-5">
									<tr>
										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="pintor" name="tag"
													value=" Pintor(a)" onclick="pegarProfissoes(' Pintor(a)')"> <label
													class="form-check-label" for="Pintor(a)"> Pintor(a)
												</label>
											</div>
										</td>

										<td style="width: 19%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="pedreiro" name="tag"
													value=" Pedreiro" onclick="pegarProfissoes(' Pedreiro')"> <label
													class="form-check-label" for="Pedreiro"> Pedreiro </label>
											</div>
										</td>

										<td style="width: 20%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="eletricista" name="tag"
													value=" Eletricista" onclick="pegarProfissoes(' Eletricista')"> <label
													class="form-check-label" for="Eletricista">
													Eletricista </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="encanador" name="tag"
													value=" Encanador(a)" onclick="pegarProfissoes(' Encanador(a)')"> <label
													class="form-check-label" for="Encanador(a)">
													Encanador(a) </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="personal" name="tag"
													value=" Personal" onclick="pegarProfissoes(' Personal')"> <label
													class="form-check-label" for="Personal"> Personal </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="dj" name="tag"
													value=" Dj" onclick="pegarProfissoes(' Dj')"> <label
													class="form-check-label" for="Dj"> Dj </label>
											</div>
										</td>

									</tr>
									<tr>
										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="jardineiro" name="tag"
													value=" Jardineiro(a)" onclick="pegarProfissoes(' Jardineiro(a)')">
												<label class="form-check-label" for="Jardineiro(a)">
													Jardineiro(a) </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="faxineiro" name="tag"
													value=" Faxineiro(a)" onclick="pegarProfissoes(' Faxineiro(a)')"> <label
													class="form-check-label" for="Faxineiro(a)">
													Faxineiro(a) </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="costureiro" name="tag"
													value=" Costureiro(a)" onclick="pegarProfissoes(' Costureiro(a)')">
												<label class="form-check-label" for="Costureiro(a)">
													Costureiro(a) </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="programador" name="tag"
													value=" Programador(a)" onclick="pegarProfissoes(' Programador(a)')">
												<label class="form-check-label" for="Programador(a)">
													Programador(a) </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="massagista" name="tag"
													value=" Massagista" onclick="pegarProfissoes(' Massagista')"> <label
													class="form-check-label" for="Massagista">
													Massagista </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="baba" name="tag"
													value=" Babá" onclick="pegarProfissoes(' Babá')"> <label
													class="form-check-label" for="Babá"> Babá </label>
											</div>
										</td>

									</tr>
									<tr>
										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="professor" name="tag"
													value=" Professor(a)" onclick="pegarProfissoes(' Professor(a)')"> <label
													class="form-check-label" for="Professor(a)">
													Professor(a) </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="barman" name="tag"
													value=" Barman" onclick="pegarProfissoes(' Barman')"> <label
													class="form-check-label" for="Barman"> Barman </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="fotografo" name="ta"
													value=" Fotógrafo(a)" onclick="pegarProfissoes(' Fotógrafo(a)')"> <label
													class="form-check-label" for="Fotógrafo(a)">
													Fotógrafo(a) </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="carpinteiro" name="tag"
													value=" Carpinteiro(a)" onclick="pegarProfissoes(' Carpinteiro(a)')">
												<label class="form-check-label" for="Carpinteiro(a)">
													Carpinteiro(a) </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="dançarino" name="tag"
													value=" Dançarino(a)" onclick="pegarProfissoes(' Dançarino(a)')"> <label
													class="form-check-label" for="Dançarino(a)">
													Dançarino(a) </label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="cumim" name="tag"
													value=" Cumin" onclick="pegarProfissoes(' Cumim')"> <label
													class="form-check-label" for="Cumim"> Cumin </label>
											</div>
										</td>

									</tr>
									<tr>
										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="motorista" name="tag"
													value=" Motorista" onclick="pegarProfissoes(' Motorista')"> <label
													class="form-check-label" for="Motorista"> Motorista
												</label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="editor" name="tag"
													value=" Editor(a)" onclick="pegarProfissoes(' Editor(a)')"> <label
													class="form-check-label" for="Editor(a)"> Editor(a)
												</label>
											</div>
										</td>

										<td style="width: 18%;">
											<div class="pb-2">
												<input class="" type="checkbox" id="manicure" name="tag"
													value=" Manicure" onclick="pegarProfissoes(' Manicure')"> <label
													class="form-check-label" for="Manicure"> Manicure </label>
											</div>
										</td>
									</tr>
								</table>
							</fieldset>
						</div>
						<input type="hidden" id="tags" name="tags"
							value="${autonomo.tags}">
					</div>
					<input type="hidden" value="${autonomo.user}" name="user">
					<input type="hidden" value="${autonomo.aval}" name="aval">
					<input type="hidden" value="${autonomo.senha}" name="senha">
					<button type="submit" id="botaoConfirmar" style="display: none;">SHHHH</button>
					<div class="col-12 row">
						<div class="col-6 pt-4">
							<a class="w-100 btn btn-dark" id="botaoCadastrar"
								onclick="validar()">Alterar</a>
						</div>
						<div class="col-6 pt-4">
							<a class="btn btn-dark w-100" onclick="history.back()">Voltar</a>
						</div>
					</div>

				</form>
			</div>
                </main>
        
                <!--footer-->
            <div class="py-5">
                <footer class="mt-auto">
                    <div class="container">
                        <a href="controller?action=home" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>
                    </div>
                </footer>
            </div>
            </div>
    <script>
    var array = []
    setarProfissoes()
    pegarProfissoes("naoEntrarIf")
    
    function setarProfissoes(){
    	var todasCheckboxes = document.querySelectorAll('input[type="checkbox"]:not(:checked)');  
    	var profissoes = document.getElementById("tags").value;    	
    	var tagsSeparadas = profissoes.split(',');

    	
    	for(var i = 0, len = todasCheckboxes.length; i<len; i++){
    		for(var j = 0, len2 = tagsSeparadas.length; j<len2; j++){
    			array[j] = tagsSeparadas[j];
    			if(todasCheckboxes[i].value == tagsSeparadas[j]){
    				todasCheckboxes[i].checked = true;    				
    			}
    		}				
    	}
    }    
    
    function pegarProfissoes(valorCheck){    	
    	var checkboxes = document.querySelectorAll('input[type=checkbox]:checked');   
    	var todasCheckboxes = document.querySelectorAll('input[type="checkbox"]:not(:checked)'); 
    	
    	if(checkboxes.length >= 4){ return false; }
    	if(checkboxes.length >= 3){  
    		for (var i = 0, len = todasCheckboxes.length; i<len; i++){
    			todasCheckboxes[i].disabled = true;
    		}
    	}
    	else{
    		for (var i = 0, len = todasCheckboxes.length; i<len; i++){
    			todasCheckboxes[i].disabled = false;
    		}
    	}
    	
    	
    	if(valorCheck == "naoEntrarIf"){
    		return false;
    	}
    	else if(array.includes(valorCheck)){
    		const index = array.indexOf(valorCheck);
    		array.splice(index, 1);
    		document.getElementById("tags").value = array;	
    	}else{
    		array.push(valorCheck);
        	document.getElementById("mensagemProfissao").style.display = "none";
        	document.getElementById("tags").value = array;	
    	}		
    }
    
    function validar(){
    	var checkboxesAtivas = document.querySelectorAll('input[type=checkbox]:checked');  
	    if(checkboxesAtivas.length == 0){
	    	document.getElementById("mensagemProfissao").style.display = "block";
	    }
	    else{
	    	document.getElementById("mensagemProfissao").style.display = "none";
	    	document.getElementById("botaoConfirmar").click();
	    }
	   
    }
  </script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>