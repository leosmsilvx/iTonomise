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
      <div class="row g-5">
        <div>
          <h4 class="mb-4 py-3">Contrato</h4>
         
          <form action="controller?action=aceitarContrato" method="post">
            <div class="row g-3">
		            <div class="col-6">
		            <c:if test="${contrato.idUsuario != null}">
			          		<a href="controller?action=detalhesUsuario&idUsuario=${contrato.idUsuario}" class="btn btn-dark w-100">Perfil do Usuario</a>
			        </c:if>
			        </div>
			        <div class="col-6">
			        <c:if test="${contrato.idAutonomo != null}">
							<a href="controller?action=detalhesAutonomo&idAutonomo=${contrato.idAutonomo}" class="btn btn-dark w-100">Perfil do Autonomo</a>
							</c:if>
					</div>
              <div class="col-6">
                <label for="titulo" class="form-label">Título</label>
                                 <input type="text" class="form-control" value="${contrato.titulo}" disabled>
              </div>
              <div class="col-6">
                <label for="valor" class="form-label">Valor do serviço</label>
                <div class="input-group">
                  <span class="input-group-text">R$</span> <input type="text"
                    class="form-control" value="${contrato.valor}" disabled>
                </div>

              </div>
              <div class="col-6">
                <label for="titulo" class="form-label">Data de Início</label>
                                 <input type="text" class="form-control" value="${contrato.dataInicio}" disabled>
              </div>
              

              <div class="col-6">
                 <label for="titulo" class="form-label">Duração</label>

                <div class="input-group">

                  <input type="text" class="form-control" value="${contrato.duracaoN} ${contrato.duracaoT}" disabled>
                </div>

              </div>

              <div class="col-12">
                <label for="titulo" class="form-label">Localização</label>
                                 <input type="text" class="form-control" value="${contrato.localizacao }" disabled>
              </div>

              <div class="col-12">
                                <label for="descricao" class="form-label">Descrição do contrato</label>
                                <textarea class="form-control"  rows="7" name="descricao" disabled>${contrato.descricao}</textarea>
                            </div>
                            
			              	<c:if test="${contrato.idAutonomo != null}">
								<input type="hidden" class="form-control" name="idAutonomo" value="${contrato.idAutonomo}">
							</c:if>
							<c:if test="${contrato.idUsuario != null}">
								<input type="hidden" class="form-control" name="idUsuario" value="${contrato.idUsuario}">
							</c:if>
							<input type="hidden" class="form-control" name="tipoCriador" value="${contrato.tipoCriador}">
							<input type="hidden" class="form-control" name="duracaoN" value="${contrato.duracaoN}">
							<input type="hidden" class="form-control" name="duracaoT" value="${contrato.duracaoT}"> 	  
							<input type="hidden" class="form-control" name="idContrato" value="${contrato.idContrato}">
							<input type="hidden" class="form-control" name="titulo" value="${contrato.titulo}">  
							<input type="hidden" class="form-control" name="valor" value="${contrato.valor}">  
							<input type="hidden" class="form-control" name="dataInicio" value="${contrato.dataInicio}">  
							<input type="hidden" class="form-control" name="localizacao" value="${contrato.localizacao}">  
							<input type="hidden" class="form-control" name="descricao" value="${contrato.descricao}">  
							<input type="hidden" class="form-control" name="finalAut" value="${contrato.finalAut}">
							<input type="hidden" class="form-control" name="finalUser" value="${contrato.finalUser}">
							
							
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
							        O iTonomise só faz a <span class="text-primary">intermediação de contato</span> entre o Autonomo e o Contratante,
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
						
		  					<!-- Aceitar Contrato -->
		  					<c:if test="${(contrato.idAutonomo != null and contrato.idUsuario != null and contrato.status == 'Pendente' and contrato.tipoCriador != usuario) or( contrato.idAutonomo == null and usuario == 'autonomo' ) or(contrato.idUsuario == null and usuario == 'comum')}">			  					
				  					<div class="col-6 py-2" >
				  						<!-- Botao modal Aceitar-->
										<button type="button" class="btn btn-success w-100" data-bs-toggle="modal" data-bs-target="#exampleModal">
										  Termos & Compromisso
										</button>
				  					</div>
				  					<div class="col-6 py-2">
				  						<button type="submit" class="btn btn-dark w-100" id="aceitarBotao" disabled>Aceitar</button>
				  						<span class="text-muted" id="textoTermos">Aceite os termos para continuar!</span>
				  					</div>

		  					</c:if>
		  					
                           </div>                           

          
        </form>
        <!-- Finalizar Contrato Usuario -->
		  					<c:if test="${contrato.idAutonomo != null and contrato.idUsuario != null and contrato.status == 'Finalizado' or contrato.status == 'Aceito'}">
		  					<form action="controller?action=finalizarContrato" method="post">
								<input type="hidden" class="form-control" name="idAutonomo" value="${contrato.idAutonomo}">
								<input type="hidden" class="form-control" name="idUsuario" value="${contrato.idUsuario}">
								<input type="hidden" class="form-control" name="status" value="${contrato.status}">
								<input type="hidden" class="form-control" name="tipoCriador" value="${contrato.tipoCriador}">
								<input type="hidden" class="form-control" name="duracaoN" value="${contrato.duracaoN}">
								<input type="hidden" class="form-control" name="duracaoT" value="${contrato.duracaoT}"> 	  
								<input type="hidden" class="form-control" name="idContrato" value="${contrato.idContrato}">
								<input type="hidden" class="form-control" name="titulo" value="${contrato.titulo}">  
								<input type="hidden" class="form-control" name="valor" value="${contrato.valor}">  
								<input type="hidden" class="form-control" name="dataInicio" value="${contrato.dataInicio}">  
								<input type="hidden" class="form-control" name="localizacao" value="${contrato.localizacao}">  
								<input type="hidden" class="form-control" name="descricao" value="${contrato.descricao}">  
								<input type="hidden" class="form-control" name="finalAut" value="${contrato.finalAut}">
								<input type="hidden" class="form-control" name="finalUser" value="${contrato.finalUser}">
		  						<c:if test="${usuario == 'comum' and contrato.finalUser == 0}">
				  					<div class="col-12 py-2" style="padding: 30%">
				  						<button type="submit" class="btn btn-dark w-100">Finalizar</button>
				  					</div>
			  					</c:if>
			  					<c:if test="${usuario == 'autonomo' and contrato.finalAut == 0}">
				  					<div class="col-12 py-2" style="padding: 30%">
				  						<button type="submit" class="btn btn-dark w-100">Finalizar</button>
				  					</div>
			  					</c:if>
			  				</form>
		  					</c:if>
		  					<div class="col-12 py-4" style="padding: 30%">
		  					<a class="btn btn-dark w-100" onclick="history.back()">Voltar</a>	
                             </div>
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