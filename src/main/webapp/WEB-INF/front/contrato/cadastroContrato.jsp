<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<link rel="icon" href="/iTonomise/imgs/itonomise.png">
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
				<div class="offcanvas offcanvas-end" tabindex="-1" id="barraLateral">
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
					  <span class="text-muted">Autônomos & Contratos</span>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=verAutonomos">Ver autônomos</a>
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
      <div class="row g-5">
        <div>
          <h4 class="mb-4 py-3">Contrato</h4>
          <form action="controller?action=cadastrarContrato" method="post">          	
          	<c:if test="${idAutonomoPropor != null}">
				<input type="hidden" class="form-control" name="idAutonomo" value="${idAutonomoPropor}">
				<input type="hidden" class="form-control" name="tipoCriador" value="${usuario}">
			</c:if>
            <div class="row g-3">
              <div class="col-6">
                <label for="titulo" class="form-label">Título</label>
                                 <input type="text" class="form-control" name="titulo" placeholder="Título" required>
              </div>
              <div class="col-6">
                <label for="valor" class="form-label">Valor do serviço</label>
                <div class="input-group">
                  <span class="input-group-text">R$</span> <input id="input-valor" type="number"
                    class="form-control" required name="valor" min="0" step="any" placeholder="100.00">
                </div>
                <div class="">
					  <input class="" type="checkbox" id="checkValor" onclick="disableInput()">
				  		<label class="form-check-label" for="checkValor">
				   		 A combinar
				  		</label>
				</div>
              </div>
              <div class="col-6">
                <label for="dataInicio" class="form-label">Data de Início</label>
                                 <input type="date" id="input-data" class="form-control" name="dataInicio" required>
                                 
                <div class="">
					  <input class="=" type="checkbox" id="checkData" onclick="disableInput()">
				  		<label class="form-check-label" for="checkData">
				   		 A combinar
				  		</label>
				</div>
              </div>
              

              <div class="col-6">
                 <label for="duracao" class="form-label">Duração</label>

                <div class="input-group">


                    <span>
                    <select class="form-select" id="input-numeroT" name="duracaoT" style="border-radius: 6px 0px 0px 6px;">
                                  <option selected value="Horas">Horas</option>
                                  <option value="Dias">Dias</option>
                                  <option value="Semanas">Semanas</option>
                                  <option value="Meses">Meses</option>

                    </select>
                    </span>

                  <input type="number" class="form-control" name="duracaoN" id="input-numeroN" required>
                </div>
                <div class="">
					  <input class="" type="checkbox" id="checkNumero" onclick="disableInput()">
				  		<label class="form-check-label" for="checkNumero">
				   		 Não definido
				  		</label>
				</div>
              </div>

              <div class="col-11">
                <label for="Localizacao" class="form-label">Localização</label>
                				<input type="hidden" name="realLocalizacao" id="realLocalizacao" value="${localizacaoPerfil}">
	                                 <input type="text" class="form-control" name="localizacao" id="localizacao" placeholder="Localização" required>
              </div>
              <div class="col-1">
              	<label for="casinha" class="form-label">&ensp;</label><br>
              	<button class="btn btn-dark" type="button" onclick="pegarLocalizacao()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"></path>
				  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"></path>
				</svg>
				</button>
              </div>

					
							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h1 class="modal-title fs-5" id="exampleModalLabel">iTonomise avisa!</h1>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							        <p>
							        O iTonomise só faz a <span class="text-primary">intermediação de contato</span> entre o Autônomo e o Contratante,
							        não temos qualquer ligação com as pessoas relacionadas ao contrato, e não nos responsabilizamos
							        por qualquer <span class="text-danger">dano ou imprevisto</span> que possa ocorrer.
							        </p>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-success" onclick="aceitoOsTermos()" data-bs-dismiss="modal">Eu entendi!</button>
							      </div>
							    </div>
							  </div>
							</div>


              <div class="col-12">
                                <label for="descricao" class="form-label">Descrição do contrato</label>
                                <textarea class="form-control" name="descricao" rows="7" placeholder="Escreva o serviço que o Autônomo deve realizar, assim como observações, e coisas que você quer pontuar." required></textarea>
                            </div>
                            <div class="col-6">
                            <!-- Botao modal Aceitar-->
										<button type="button" class="btn btn-success w-100" data-bs-toggle="modal" data-bs-target="#exampleModal">
										  Termos & Compromisso
										</button>
                            </div>
                           <div class="col-6">
                              <button class="w-100 btn btn-dark" type="submit" id="aceitarBotao" disabled>Cadastrar</button>
                              <span class="text-muted" id="textoTermos">Aceite os termos para continuar!</span>
                           </div>
                            <div class="col-3 pb-4">
                                    </div>
                           <div class="col-6 pb-4">
                                    	<a class="btn btn-dark w-100" onclick="history.back()">Voltar</a>	
                                    </div>
          </div>
        </form>
        </div>
      </div>
    </main>

  <div>
    <footer class="mt-auto">
      <div class="container">
        <a href="controller?action=home" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>
      </div>
    </footer>
  </div>
  </div>
	
  <script>
  		function disableInput(){
  			var checkBoxNumero = document.getElementById("checkNumero");
  			var checkBoxData = document.getElementById("checkData");
  			var checkBoxValor = document.getElementById("checkValor");
  			if (checkBoxNumero.checked == true){
  				document.getElementById("input-numeroT").disabled = true;
  				document.getElementById("input-numeroN").disabled = true;
  			} else {
  				document.getElementById("input-numeroT").disabled = false;
  				document.getElementById("input-numeroN").disabled = false;
  			}
  			
  			if (checkBoxData.checked == true){
  				document.getElementById("input-data").disabled = true;
  			} else {
  				document.getElementById("input-data").disabled = false;
  			}  			
  			
  			if (checkBoxValor.checked == true){
  				document.getElementById("input-valor").disabled = true;
  			} else {
  				document.getElementById("input-valor").disabled = false;
  			}  			
  		}
  		function pegarLocalizacao(){
  			document.getElementById("localizacao").value = document.getElementById("realLocalizacao").value;;
  		}
  </script>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>
    <script>
    function aceitoOsTermos(){
    	document.getElementById("aceitarBotao").disabled = false;
    	document.getElementById("textoTermos").style.display = "none";
    }
    </script>
</body>
</html>