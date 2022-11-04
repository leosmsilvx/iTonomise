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
<link rel="stylesheet" href="/iTonomise/css/style.css">
</head>
<body>
			<!-- Header -->
			<nav class="bg-dark border-bottom">
				<div class="d-flex flex-wrap">
					<ul class="nav me-auto">
						<li class="nav-item">
						<div Style="background-color: #212529; margin-left: 30px; height: 50px;" class="pt-1">
							<a href="controller?action=home"><img src="/iTonomise/imgs/itonomise.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
							<a href="controller?action=home" style="color: white; font-size: 25px; text-decoration: none; margin-left: 5px"> iTonomise</a>
							</div></li>
					</ul>
					<ul class="nav" style="margin-right: 30px; margin-top: 5px">		
						<li class="nav-item nav-link">
							<div class="text-white">
								<div class="text-center">
									<a class="text-decoration-none text-white" data-bs-toggle="offcanvas" href="#barraLateral" role="button" aria-controls="barraLateral">
									
									
									<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-list" viewBox="0 0 15 15">
									  <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
									</svg>
								</div>
								</a>
							</div>
						</li>
					</ul>
				</div>


				<!-- OFFCANVAS -->
				<div class="offcanvas offcanvas-end" style="max-width: 20%;" tabindex="-1" id="barraLateral">
					<div class="offcanvas-header">
					  <h5 class="offcanvas-title">Meu perfil</h5>
					  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
					  <div class="">						
						<p>Logado como: <span class="text-warning">${uUser}</span></p>
					  </div>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=home">Home</a>
					  </div>
					  <hr>
					  <span class="text-muted">Meu perfil</span>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=perfil">Visitar meu perfil</a>
					  </div>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=meusContratos">Meus contratos</a>
					  </div>
					  <hr>
					  <span class="text-muted">Autonomos & Contratos</span>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=verAutonomos">Ver autonomos</a>
					  </div>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=verContratos">Ver contratos</a>
					  </div>
					  <hr>
					  <span class="text-muted">Sair</span>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: red;" href="controller?action=logout">Logout</a>
					  </div>
					</div>
				  </div>
			</nav>
			<div class="container">
                <main>
                    <div class="row g-3">
                            <h4 class="mb-4 pt-4">Alterar dados do perfil</h4>                            
                            <a class="text-center text-danger" style="text-decoration: none;"> ${msgErroAtu} </a>
				<form action="controller?action=alterarPerfilAut" method="post"
					id="formulario" class="needs-validation" enctype="multipart/form-data">
					<div class="row g-3">
						<div class="col-4">
							<h6 class="text-body text-start px-1">@${autonomo.user}</h6>
							<div class="card">
								<img
									src="${autonomo.nomeImg}"
									height="250" width="225" class="card-img-top">
								<div class="card-body border-top">
									<p class="card-text"
										style="font-weight: bold; font-size: larger; text-align: center;">${autonomo.nome}</p>
										<input type="hidden" class="form-control" value="${autonomo.nomeImg}" name="imagem">
									<input type="file" class="form-control" value="${autonomo.nomeImg}" name="nomeImg">
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
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Babá" type="checkbox" id="baba" name="tag" onclick="pegarProfissoes(' Babá')">
                          <label class="form-check-label" for="Babá"> Babá </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Barman" type="checkbox" id="barman" name="tag" onclick="pegarProfissoes(' Barman')">
                          <label class="form-check-label" for="Barman"> Barman </label>
                        </div>
                      </td>
                      
                       <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="carpinteiro" name="tag" onclick="pegarProfissoes(' Carpinteiro(a)')">
                          <label class="form-check-label" for="Carpinteiro(a)"> Carpinteiro(a) </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Costureiro(a)" type="checkbox" id="costureiro" name="tag" onclick="pegarProfissoes(' Costureiro(a)')">
                          <label class="form-check-label" for="Costureiro(a)"> Costureiro(a) </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Cumim" type="checkbox" id="cumim" name="tag" onclick="pegarProfissoes(' Cumim')">
                          <label class="form-check-label" for="Cumim"> Cumim </label>
                        </div>
                      </td>
                       
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Dançarino(a)" type="checkbox" id="dançarino" name="tag" onclick="pegarProfissoes(' Dançarino(a)')">
                          <label class="form-check-label" for="Dançarino(a)"> Dançarino(a) </label>
                        </div>
                      </td>
                      
                    </tr>
                    <tr>
                     <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Dj" type="checkbox" id="dj" name="tag" onclick="pegarProfissoes(' Dj')">
                          <label class="form-check-label" for="Dj"> Dj </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Editor(a)" type="checkbox" id="editor" name="tag" onclick="pegarProfissoes(' Editor(a)')" >
                          <label class="form-check-label" for="Editor(a)"> Editor(a) </label>
                        </div>
                      </td>
                    
                       <td style="width: 20%;">
                        <div class="pb-2">
                          <input value=" Eletricista" type="checkbox" id="eletricista" name="tag" onclick="pegarProfissoes(' Eletricista')">
                          <label class="form-check-label" for="Eletricista"> Eletricista </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Encanador(a)" type="checkbox" id="encanador" name="tag" onclick="pegarProfissoes(' Encanador(a)')">
                          <label class="form-check-label" for="Encanador(a)"> Encanador(a) </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Faxineiro(a)" type="checkbox" id="faxineiro" name="tag" onclick="pegarProfissoes(' Faxineiro(a)')">
                          <label class="form-check-label" for="Faxineiro(a)"> Faxineiro(a) </label>
                        </div>
                      </td>
                      
                     <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Fotógrafo(a)" type="checkbox" id="fotografo" name="ta" onclick="pegarProfissoes(' Fotógrafo(a)')">
                          <label class="form-check-label" for="Fotógrafo(a)"> Fotógrafo(a) </label>
                        </div>
					</td>
                      
                    </tr>
                    <tr>
                    
                   <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Jardineiro(a)" type="checkbox" id="jardineiro" name="tag" onclick="pegarProfissoes(' Jardineiro(a)')">
                          <label class="form-check-label" for="Jardineiro(a)"> Jardineiro(a) </label>
                        </div>
                      </td>
                       	
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Manicure" type="checkbox" id="manicure" name="tag" onclick="pegarProfissoes(' Manicure')">
                          <label class="form-check-label" for="Manicure"> Manicure </label>
                        </div>
                      </td>
                    	
                       <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Massagista" type="checkbox" id="massagista" name="tag" onclick="pegarProfissoes(' Massagista')">
                          <label class="form-check-label" for="Massagista"> Massagista </label>
                        </div>
                      </td>	
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Motorista" type="checkbox" id="motorista" name="tag" onclick="pegarProfissoes(' Motorista')">
                          <label class="form-check-label" for="Motorista"> Motorista </label>
                        </div>
                      </td>
                      
                      <td style="width: 19%;">
                        <div class="pb-2">
                          <input value=" Pedreiro" type="checkbox" id="pedreiro" name="tag" onclick="pegarProfissoes(' Pedreiro')">
                          <label class="form-check-label" for="Pedreiro"> Pedreiro </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Personal" type="checkbox" id="personal" name="tag" onclick="pegarProfissoes(' Personal')">
                          <label class="form-check-label" for="Personal"> Personal </label>
                        </div>
                      </td>                   
                    </tr>
                    <tr>
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Pintor(a)" type="checkbox" id="pintor" name="tag" onclick="pegarProfissoes(' Pintor(a)')">
                          <label class="form-check-label" for="Pintor(a)"> Pintor(a) </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="professor" name="tag" onclick="pegarProfissoes(' Professor(a)')">
                          <label class="form-check-label" for="Professor(a)"> Professor(a) </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input value=" Programador(a)" type="checkbox" id="programador" name="tag" onclick="pegarProfissoes(' Programador(a)')">
                          <label class="form-check-label" for="Programador(a)"> Programador(a) </label>
                        </div>
                      </td>
                      
                     </tr>
                   </table>
							</fieldset>
						</div>
						<span class="text-muted text-end">Não achou sua profissão?</span>
						<div class="pb-2 text-end" style="margin-top: 0px">	
							<label class="form-check-label" for="outro"> Outro </label>						
							<input class="" type="checkbox" id="outro" name="tag"  onclick="outroA()">							
						</div>
						<div class="col-12" id="outroDiv" style="display: none;">
			              	<input class="form-control" type="text" id="tags" name="tags" value="${autonomo.tags }" required>
			              </div>
						
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
    var array = [];
    setarProfissoes();
    pegarProfissoes("naoEntrarIf");
    
    function setarProfissoes(){
    	var todasCheckboxes = document.querySelectorAll('input[type="checkbox"]:not(:checked)');  
    	var checkboxOutro = document.getElementById("outro");    	
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
    	    	
    	var checkboxesMarcadas = document.querySelectorAll('input[type=checkbox]:checked');   
    	
    	if(checkboxesMarcadas.length == 0){
    		for(var i = 0, len = todasCheckboxes.length; i<len; i++){	
	    		todasCheckboxes[i].disabled = true;
    		}
    		checkboxOutro.disabled = false;
    		checkboxOutro.checked = true;
    		document.getElementById("outroDiv").style.display = "block";
    	}
    }    
    
    function pegarProfissoes(valorCheck){   
    	var checkboxOutro = document.getElementById("outro");   
    	var checkboxes = document.querySelectorAll('input[type=checkbox]:checked');   
    	var todasCheckboxes = document.querySelectorAll('input[type="checkbox"]:not(:checked)'); 
    	
    	if(checkboxes.length >= 4){ return false; }
    	if(checkboxes.length >= 3  ||  checkboxOutro.checked == true){  
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
    
    function outroA(){
    	var checkboxOutro = document.getElementById("outro");    	   
    	var checkBoxesN = document.querySelectorAll('input[type="checkbox"]'); 
	    var checkboxesAtivas = document.querySelectorAll('input[type=checkbox]:checked');
    	
    	if(checkboxOutro.checked == true){
    		for (var i = 0, len = checkBoxesN.length; i<len; i++){
    			checkBoxesN[i].disabled = true;
    			checkBoxesN[i].checked = false;
    		}
    		checkboxOutro.disabled = false;
    		checkboxOutro.checked = true;
    		document.getElementById("tags").value = "";	
    		document.getElementById("outroDiv").style.display = "block";
    	}
    	else{
    		for (var i = 0, len = checkBoxesN.length; i<len; i++){
    			checkBoxesN[i].disabled = false;
    			checkBoxesN[i].checked = false;
    		}
    		array = [];
    		document.getElementById("tags").value = "";	
    		document.getElementById("outroDiv").style.display = "none";
    	}
    }
  </script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>