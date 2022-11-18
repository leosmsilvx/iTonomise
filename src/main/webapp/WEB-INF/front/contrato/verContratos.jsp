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
		<symbol id="pessoacirculo" viewBox="0 0 16 16">
			<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
			<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
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
                <div class="border-top border-2 py-5">
                	<h4 class="mb-4 py-3">Lista de Contratos</h4>
                    <table class="table table-hover table-dark table-striped caption-top align-middle">
                        <thead>
                          <tr>
                            <th scope="col">Contrato de</th>
                            <th scope="col">Título</th>
                            <th scope="col">Valor</th>
                            <th scope="col"></th>
                          </tr>
                        </thead>
                        <c:forEach var="contratosCadastrados" items="${contratos}">
                        <tbody class="table-group-divider">
                        <c:if test="${usuario == 'comum'}">
                        	<c:if test="${contratosCadastrados.idUsuario == null}">
                        	<tr>
	                            <td>
	                            <c:forEach var="autonomosCadastrados" items="${autonomos}">
	                            		<c:if test="${contratosCadastrados.idAutonomo == autonomosCadastrados.idAutonomo}">
											@<c:out value="${autonomosCadastrados.user}"/>
										</c:if>
									</c:forEach>
								</td>
	                            <td>${contratosCadastrados.titulo}</td>
	                            <td>R$ ${contratosCadastrados.valor}</td>
	                            <td class="text-end"><a href="controller?action=detalhesContrato&idContrato=${contratosCadastrados.idContrato}" class="btn btn-light" style="text-decoration: none;">Ver contrato</a></td>
                          	</tr>
                        
                      	  </c:if>                 
                        </c:if>
                        <c:if test="${usuario == 'autonomo'}">
                        	<c:if test="${contratosCadastrados.idAutonomo == null}">
                        	<tr>
	                            <td>
	                            <c:forEach var="usuariosCadastrados" items="${usuarios}">
	                            		<c:if test="${contratosCadastrados.idUsuario == usuariosCadastrados.idUsuario}">
											@<c:out value="${usuariosCadastrados.user}"/>
										</c:if>
									</c:forEach>
								</td>
	                            <td>${contratosCadastrados.titulo}</td>
	                            <td style="padding-left: 5%">R$ ${contratosCadastrados.valor}</td>
	                            <td class="text-end"><a href="controller?action=detalhesContrato&idContrato=${contratosCadastrados.idContrato}" class="btn btn-light" style="text-decoration: none;">Ver contrato</a></td>
                          	</tr>
                        
                      	  </c:if>                 
                        </c:if>
                          
                        </c:forEach>
                        </tbody>
                      </table>
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
</body>
</html>