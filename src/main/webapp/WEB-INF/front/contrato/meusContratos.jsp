<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
		  <symbol id="estrelilha" viewBox="0 0 16 16">
			<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
		  </symbol>
	</svg>
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
            <div class="row g-3">
            	<div class="pt-5 col-9">	
   
                	<h4>Meus Contratos</h4>					
				</div>
				
                <div class="pt-5 col-3">
                <form action="controller?action=buscarContratoPStatus" method="post">
							<label for="status">Filtrar por</label> <select
								class="form-select bg-dark text-white text-center"
								name="status" id="selectStatus" onchange='this.form.submit()' required>
								<c:if test="${status == null}">
									<option>Status</option>
								</c:if>
								<c:if test="${status != null}">
									<option><c:out value="${status}"/></option>
								</c:if>
								
								<option value="Não aceito">Não aceito</option>
								<option value="Pendente">Pendente</option>
								<option value="Aceito">Aceito</option>
								<option value="Finalizado">Finalizado</option>
								<option value="Avaliado">Avaliado</option>
							</select>	
							</form>
				</div>
				
				<p class="text-end"><a href="controller?action=meusContratos" class="text-secondary" style="text-decoration: none;">Limpar filtro</a></p>	
                    <table class="table table-hover table-dark table-striped align-middle">
                        <thead>
                          <tr>
                            <th scope="col">Contrato de</th>
                            <th scope="col">Título</th>
                            <th scope="col">Valor</th>
                            <th scope="col">Status</th>
                            <th scope="col"></th>
                          </tr>
                        </thead>
                        <c:forEach var="contratosCadastrados" items="${contratos}">                               			
                        <tbody class="table-group-divider">
                          <tr>
                            <td>                            
										<c:forEach var="usuariosCadastrados" items="${usuarios}">
                            				<c:if test="${usuariosCadastrados.idUsuario == contratosCadastrados.idUsuario}">
												<a style="text-decoration: none; color: white;" href="controller?action=detalhesUsuario&idUsuario=${contratosCadastrados.idUsuario}">@<c:out value="${usuariosCadastrados.user}"/></a>
											</c:if>
										</c:forEach>  	
										<c:forEach var="autonomosCadastrados" items="${autonomos}">
	                            			<c:if test="${autonomosCadastrados.idAutonomo == contratosCadastrados.idAutonomo}">
												<a style="text-decoration: none; color: white;" href="controller?action=detalhesAutonomo&idAutonomo=${contratosCadastrados.idAutonomo}">@<c:out value="${autonomosCadastrados.user}"/></a>
											</c:if>
										</c:forEach>						
								
							</td>
                            <td>${contratosCadastrados.titulo}</td>
                            <td>R$ ${contratosCadastrados.valor}</td>
                            		<c:if test="${contratosCadastrados.status == 'Não aceito'}">
										<td class="text-danger">${contratosCadastrados.status}</td>
										<td class="text-end"><a href="controller?action=pagAtualizarContrato&idContrato=${contratosCadastrados.idContrato}" class="btn btn-light" style="text-decoration: none;">
												Alterar contrato
											</a>
											<a href="controller?action=detalhesContrato&idContrato=${contratosCadastrados.idContrato}" class="btn btn-light px-3" style="text-decoration: none;">
												Rever contrato
											</a>
										</td>
							
									</c:if>
									<c:if test="${contratosCadastrados.status == 'Pendente'}">
											<td class="text-warning">${contratosCadastrados.status }</td>
											<td class="text-end"><a href="controller?action=detalhesContrato&idContrato=${contratosCadastrados.idContrato}" class="btn btn-light px-3" style="text-decoration: none;">
													<c:if test="${usuario == 'comum'}">Rever Contrato</c:if>
													<c:if test="${usuario == 'autonomo'}">Aceitar Contrato</c:if>
												</a>
											</td>
									</c:if>
									<c:if test="${contratosCadastrados.status == 'Aceito'}">
											<td class="text-primary">${contratosCadastrados.status}</td>
											<td class="text-end"><a href="controller?action=detalhesContrato&idContrato=${contratosCadastrados.idContrato}" class="btn btn-light px-3" style="text-decoration: none;">
													Finalizar Contrato
												</a>
											</td>
									</c:if>
									<c:if test="${contratosCadastrados.status == 'Finalizado'}">
										<c:if test="${(contratosCadastrados.finalUser == 1  and contratosCadastrados.finalAut == 0) or (contratosCadastrados.finalUser == 0  and contratosCadastrados.finalAut == 1)}">
											<td class="text-info">Finalizado 1/2</td>
											<td class="text-end"><a href="controller?action=detalhesContrato&idContrato=${contratosCadastrados.idContrato}" class="btn btn-light px-3" style="text-decoration: none;">
												<c:if test="${contratosCadastrados.finalUser == 1 and usuario == 'comum'}">
													Rever Contrato
												</c:if>
												<c:if test="${contratosCadastrados.finalUser == 1 and usuario == 'autonomo'}">
													Finalizar Contrato
												</c:if>
												<c:if test="${contratosCadastrados.finalAut == 1 and usuario == 'autonomo'}">
													Rever Contrato
												</c:if>
												<c:if test="${contratosCadastrados.finalAut == 1 and usuario == 'comum'}">
													Finalizar Contrato
												</c:if>
												</a>
											</td>
										</c:if>
										<c:if test="${contratosCadastrados.finalAut == 1 and contratosCadastrados.finalUser == 1}">									
											<td class="text-success">Finalizado 2/2</td>
												<td class="text-end">
													<c:if test="${usuario == 'comum'}">
													<div class="btn-group dropstart">
														<button type="button" class="btn btn-light dropdown-toggle"
															data-bs-toggle="dropdown" aria-expanded="false">
															Avaliar</button>
														<ul class="dropdown-menu text-center">
															<li><a class="dropdown-item"
																href="controller?action=avaliar&idContrato=${contratosCadastrados.idContrato}&idAutonomo=${contratosCadastrados.idAutonomo}&valor=1">1
																	<svg class="bi" width="1.1em" height="1.1em">
																		<use xlink:href="#estrelilha"></use></svg>
															</a></li>
															<li><a class="dropdown-item"
																href="controller?action=avaliar&idContrato=${contratosCadastrados.idContrato}&idAutonomo=${contratosCadastrados.idAutonomo}&valor=2">2
																	<svg class="bi" width="1.1em" height="1.1em">
																		<use xlink:href="#estrelilha"></use></svg>
															</a></li>
															<li><a class="dropdown-item"
																href="controller?action=avaliar&idContrato=${contratosCadastrados.idContrato}&idAutonomo=${contratosCadastrados.idAutonomo}&valor=3">3
																	<svg class="bi" width="1.1em" height="1.1em">
																		<use xlink:href="#estrelilha"></use></svg>
															</a></li>
															<li><a class="dropdown-item"
																href="controller?action=avaliar&idContrato=${contratosCadastrados.idContrato}&idAutonomo=${contratosCadastrados.idAutonomo}&valor=4">4
																	<svg class="bi" width="1.1em" height="1.1em">
																		<use xlink:href="#estrelilha"></use></svg>
															</a></li>
															<li><a class="dropdown-item"
																href="controller?action=avaliar&idContrato=${contratosCadastrados.idContrato}&idAutonomo=${contratosCadastrados.idAutonomo}&valor=5">5
																	<svg class="bi" width="1.1em" height="1.1em">
																		<use xlink:href="#estrelilha"></use></svg>
															</a></li>
														</ul>
													</div>
													</c:if>
													<a href="controller?action=detalhesContrato&idContrato=${contratosCadastrados.idContrato}" class="btn btn-light" style="text-decoration: none;">Rever contrato</a>
												</td>										
										</c:if>
									</c:if>
									<c:if test="${contratosCadastrados.status == 'Avaliado'}">
										<td style="color: #9865db;">${contratosCadastrados.status}
											<c:forEach var="todasAval" items="${avaliacoes}"> 
												<c:if test="${todasAval.idContrato == contratosCadastrados.idContrato}">
													<a class="text-decoration-none" style="color: #9865db;">em ${todasAval.valor}
													<svg class="bi pl-2" width="1.1em" height="1.1em"><use xlink:href="#estrelilha"></use></svg></a>
												</c:if>
											</c:forEach>
										</td>
										<td class="text-end"><a href="controller?action=detalhesContrato&idContrato=${contratosCadastrados.idContrato}" class="btn btn-light px-3" style="text-decoration: none;">Rever contrato</a></td>	
									</c:if>									
                          </tr>
                        </c:forEach>
                        </tbody>
                      </table>
                      <h4 class="text-center text-danger">${msgNaoTem}</h4>
                        <div class="row pt-4">
                        	<h5>Legenda: Status</h5>
	                        <div class="col-6">					
		                        <div class="py-2"><a class="btn btn-danger w-25" onclick="statusClick('Não aceito')">Não aceito</a><a class="px-2" style="text-decoration: none; color: black;">Ninguém ainda aceitou o seu contrato :(</a></div>
		                        <div class="py-2"><a class="btn btn-warning w-25" onclick="statusClick('Pendente')">Pendente</a><a class="px-2" style="text-decoration: none; color: black;">Ainda não aceitaram a proposta do seu contrato</a></div>
		                        <div class="py-2"><a class="btn btn-primary w-25" onclick="statusClick('Aceito')">Aceito</a><a class="px-2" style="text-decoration: none; color: black;">O autônomo já aceitou seu contrato e já poderá realizar o serviço como combinado</a></div>
		                    </div>
		                    <div class="col-6">
		                       	<div class="py-2"><a class="btn btn-info" onclick="statusClick('Finalizado')">Finalizado 1/2</a><a class="px-2" style="text-decoration: none; color: black;">Somente uma pessoa finalizou o contrato</a></div>
		                       	<div class="py-2"><a class="btn btn-success" onclick="statusClick('Finalizado')">Finalizado 2/2</a><a class="px-2" style="text-decoration: none; color: black;">As duas pessoas finalizaram o contrato</a></div>						
								<div class="py-2"><a class="btn btn-primary w-25" style="border-color: #9865db;background-color: #9865db;" onclick="statusClick('Avaliado')">Avaliado</a><a class="px-2" style="text-decoration: none; color: black;">O contrato já foi finalizado por ambas as partes e foi avaliado pelo contratante</a></div>
	                    	</div>
                    	</div>
				<footer class="mt-auto border-top border-1">
						<a href="controller?action=home" class="nav-link text-center text-muted px-2"style="padding-top: 2em;">© 2022 iTonomise</a>	
				</footer>
				</div>
            </div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<script>
	function statusClick(status) {    
	    let select = document.getElementById("selectStatus");
	    select.value = status;
	    
	    select.form.submit();
	}
	</script>
		</body>
</html>