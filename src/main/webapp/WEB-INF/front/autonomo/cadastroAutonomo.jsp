<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

  

<!DOCTYPE html>
<html>
<head>
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
  rel="stylesheet"
  integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
  crossorigin="anonymous">
<meta charset="utf-8">
<title>Cadastro Autônomo</title>
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
									</a>
								</div>
								
							</div>
						</li>
					</ul>
				</div>


				<!-- OFFCANVAS -->
				<div class="offcanvas offcanvas-end" tabindex="-1" id="barraLateral">
					<div class="offcanvas-header">
					  <h5 class="offcanvas-title">iTonomise</h5>
					  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
					  <a class="text-muted text-decoration-none">Início</a>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=index">Retornar ao início</a>
					  </div>
					  <hr>
					  <div>
					  <a class="text-muted text-decoration-none">Não é usuário do nosso site?</a>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=pagCadAuto">Seja um Autonomo</a>
					  </div>
					  <div class="py-1 pl-3">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=pagCadComum">Seja um Contratante</a>
					  </div>
					  <hr>
					  <a class="text-muted text-decoration-none">Já é usuário?</a>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: green;" href="controller?action=login">Fazer login</a>						
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=pagRecuperarSenha">Esqueci a senha</a>
					  </div>

					</div>
				  </div>
			</nav>

  <div class="container">
    <main>
      <div class="row g-5">
        <div>
          <h5 class="text-danger text-center py-3"> ${msgErroCad} </h5>
          <h4 class="mb-4 py-4">Cadastro Autônomo</h4>
          <form action="controller?action=cadastrarAutonomo" method="post" id="formulario" enctype="multipart/form-data" class="needs-validation">
            <div class="row g-3">

              <div class="col-sm-6">
                <label for="nome" class="form-label">Primeiro Nome</label>
                <input type="text" class="form-control"
                  name="nome" placeholder="Nome" required>
              </div>

              <div class="col-6">
                <label for="sobrenome" class="form-label">Sobrenome</label> <input
                  type="text" class="form-control" name="sobrenome"
                  placeholder="Sobrenome" required>
              </div>

              <div class="col-6">
                <label for="cpf" class="form-label">CPF <span
                  class="text-muted">(Somente números)</span></label> <input
                  type="number" class="form-control" name="cpf"
                  placeholder="12345678901" required>
              </div>

              <div class="col-6">
                <label for="tel" class="form-label">Telefone com ddd<span
                  class="text-muted"> (Somente números)</span></label> <input
                  type="number" class="form-control" name="tel"
                  placeholder="37988776655" required>
              </div>

              <div class="col-8">
                <label for="user" class="form-label">Usuário</label>
                <div class="input-group">
                  <span class="input-group-text">@</span> <input type="text"
                    class="form-control" name="user" placeholder="Usúario"
                    required>
                </div>
              </div>

              <div class="col-4 ">              
                <label for="senha" class="form-label">Senha</label>
                <div class="input-group">               
                  <input type="password" class="form-control" name="senha" placeholder="********" id="senha" required>
                  <button class="btn btn-outline-dark" type="button" onclick="mostrarSenha()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
                    <path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"></path>
                    <path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"></path>
                    <path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"></path></svg>
                  </button>
                </div>
              </div>

              <div class="col-8">
                <label for="email" class="form-label">Email</label> <input
                  type="email" class="form-control" name="email"
                  placeholder="iTonomise@exemplo.com" required>
              </div>
              <div class="col-4">
                <label for="foto" class="form-label">Foto</label> <input
                  type="file" class="form-control" name="nomeImg" required>
              </div>

              <div class="col-12">
                <label for="desc" class="form-label">Uma breve
                  descrição sua</label>
                <textarea class="form-control" name="desc"
                  placeholder="Olá, meu nome é João e eu trabalho com pintura!"></textarea>
              </div>

              <div class="col-12">
                <label for="endereco" class="form-label">Endereço</label>
                <textarea class="form-control" name="endereco"
                  placeholder="Rua Bonita - nº 691 - Bairro legal - Divinópolis"></textarea>
              </div>

              <div class="col-12">
              	
                <fieldset>
                  <legend> Escolha sua(s) área(s) de atuação<font size="2">(max; 3)</font> </legend>
                  <h5 id="mensagemProfissao" style="display: none;"><p class="text-center text-warning">Selecione uma opção!</p></h5>
                  <table class="px-5">
                  
                    <tr>
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="baba" name="tag" onclick="pegarProfissoes(' Babá')">
                          <label class="form-check-label" for="Babá"> Babá </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="barman" name="tag" onclick="pegarProfissoes(' Barman')">
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
                          <input class="" type="checkbox" id="costureiro" name="tag" onclick="pegarProfissoes(' Costureiro(a)')">
                          <label class="form-check-label" for="Costureiro(a)"> Costureiro(a) </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="cumim" name="tag" onclick="pegarProfissoes(' Cumim')">
                          <label class="form-check-label" for="Cumim"> Cumim </label>
                        </div>
                      </td>
                       
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="dançarino" name="tag" onclick="pegarProfissoes(' Dançarino(a)')">
                          <label class="form-check-label" for="Dançarino(a)"> Dançarino(a) </label>
                        </div>
                      </td>
                      
                    </tr>
                    <tr>
                     <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="dj" name="tag" onclick="pegarProfissoes(' Dj')">
                          <label class="form-check-label" for="Dj"> Dj </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="editor" name="tag" onclick="pegarProfissoes(' Editor(a)')" >
                          <label class="form-check-label" for="Editor(a)"> Editor(a) </label>
                        </div>
                      </td>
                    
                       <td style="width: 20%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="eletricista" name="tag" onclick="pegarProfissoes(' Eletricista')">
                          <label class="form-check-label" for="Eletricista"> Eletricista </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="encanador" name="tag" onclick="pegarProfissoes(' Encanador(a)')">
                          <label class="form-check-label" for="Encanador(a)"> Encanador(a) </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="faxineiro" name="tag" onclick="pegarProfissoes(' Faxineiro(a)')">
                          <label class="form-check-label" for="Faxineiro(a)"> Faxineiro(a) </label>
                        </div>
                      </td>
                      
                     <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="fotografo" name="ta" onclick="pegarProfissoes(' Fotógrafo(a)')">
                          <label class="form-check-label" for="Fotógrafo(a)"> Fotógrafo(a) </label>
                        </div>
					</td>
                      
                    </tr>
                    <tr>
                    
                   <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="jardineiro" name="tag" onclick="pegarProfissoes(' Jardineiro(a)')">
                          <label class="form-check-label" for="Jardineiro(a)"> Jardineiro(a) </label>
                        </div>
                      </td>
                       	
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="manicure" name="tag" onclick="pegarProfissoes(' Manicure')">
                          <label class="form-check-label" for="Manicure"> Manicure </label>
                        </div>
                      </td>
                    	
                       <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="massagista" name="tag" onclick="pegarProfissoes(' Massagista')">
                          <label class="form-check-label" for="Massagista"> Massagista </label>
                        </div>
                      </td>	
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="motorista" name="tag" onclick="pegarProfissoes(' Motorista')">
                          <label class="form-check-label" for="Motorista"> Motorista </label>
                        </div>
                      </td>
                      
                      <td style="width: 19%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="pedreiro" name="tag" onclick="pegarProfissoes(' Pedreiro')">
                          <label class="form-check-label" for="Pedreiro"> Pedreiro </label>
                        </div>
                      </td>
                      
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="personal" name="tag" onclick="pegarProfissoes(' Personal')">
                          <label class="form-check-label" for="Personal"> Personal </label>
                        </div>
                      </td>                   
                    </tr>
                    <tr>
                      <td style="width: 16.7%;">
                        <div class="pb-2">
                          <input class="" type="checkbox" id="pintor" name="tag" onclick="pegarProfissoes(' Pintor(a)')">
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
                          <input class="" type="checkbox" id="programador" name="tag" onclick="pegarProfissoes(' Programador(a)')">
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
              	<input class="form-control" type="text" id="tags" name="tags" required>
              </div>
			  
					  
			  <hr class="my-4">
			  <button type="submit" id="botaoConfirmar" style="display: none;">SHHHH</button>
              <a class="w-100 btn btn-dark" id="botaoCadastrar" onclick="validar()">Cadastrar</a>
            </div>
          </form>
        </div>
      </div>
    </main>

    <!--footer-->
  <div class="py-5">
    <footer class="mt-auto">
      <div class="container">
        <a href="controller?action=index" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>
      </div>
    </footer>
  </div>
  </div>

  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>
  <script>
  

	var array = []  
	var outro = null;
    function mostrarSenha() {
        var senha = document.getElementById("senha");
        if (senha.type === "password") {
          senha.type = "text";
        } else {
          senha.type = "password";
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
    	
    	if(array.includes(valorCheck)){
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
    		document.getElementById("tags").value = "";
    		document.getElementById("outroDiv").style.display = "none";
    	}
    }
  </script>
</body>
</html>