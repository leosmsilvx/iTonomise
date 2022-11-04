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
		<div class="pt-4">
		<form action="controller?action=buscarAutonomoPTag" method="post">
			<div class="row g-3">
				
				<div class="col-4">
					<h4>Lista de Autonomos</h4>
				</div>
				<div class="col-4">					
						<label for="filtro">Buscar</label> <input type="text"
								class="form-control" name="nomeBuscar">
				</div>
				<div class="col-3">
							<label for="filtro">Filtrar por</label> <select
								class="form-select bg-dark text-white text-center"
								name="tagBuscar" required>
								<option value="nada">Profissões</option>
								<option value="Babá">Babá</option>
								<option value="Barman">Barman</option>
								<option value="Carpinteiro(a)">Carpinteiro(a)</option>
								<option value="Costureiro(a)">Costureiro(a)</option>
								<option value="Cumin">Cumin</option>
								<option value="Dançarino(a)">Dançarino(a)</option>
								<option value="Dj">Dj</option>
								<option value="Editor(a)">Editor(a)</option>
								<option value="Eletricista">Eletricista</option>
								<option value="Encanador(a)">Encanador(a)</option>
								<option value="Faxineiro(a)">Faxineiro(a)</option>
								<option value="Fotógrafo(a)">Fotógrafo(a)</option>
								<option value="Jardineiro(a)">Jardineiro(a)</option>
								<option value="Manicure">Manicure</option>
								<option value="Massagista">Massagista</option>
								<option value="Motorista">Motorista</option>
								<option value="Pedreiro">Pedreiro</option>
								<option value="Personal">Personal</option>
								<option value="Pintor(a)">Pintor(a)</option>
								<option value="Professor(a)">Professor(a)</option>
								<option value="Programador(a)">Programador(a)</option>
							</select>
							
					
				</div>
				<div class="col-1" style="padding-top: 3px; text-align: center;">
					<label for="botao">Buscar</label><br>
					<button type="submit" class="btn btn-sm btn-dark w-100"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
					  	<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
						</svg>
					</button>	
											
				</div>
						<p class="text-end"><a href="controller?action=verAutonomos" class="text-secondary" style="text-decoration: none;">Limpar filtros</a></p>
				
			</div>
			</form>
		</div>
		
	<div>
                    <table class="table table-hover table-dark table-striped caption-top align-middle">
                        <thead>
                          <tr>
                            <th scope="col">Usuário</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Profissão</th>
                            <th scope="col">Avaliação</th>
                            <th scope="col"></th>
                          </tr>
                        </thead>                   
                        <c:forEach var="autonomosCadastrados" items="${autonomos}">                       				
                        <tbody class="table-group-divider">                        
                          <tr>
                            <td>@${autonomosCadastrados.user}</td>
                            <td>${autonomosCadastrados.nome} ${autonomosCadastrados.sobrenome}</td>
                            <td class="text-warning">${autonomosCadastrados.tags}</td>
                            <td>${autonomosCadastrados.aval} <svg class="bi" width="1.1em" height="1.1em"><use xlink:href="#estrelilha"></use></svg></td>
                            <td class="text-end"><a href="controller?action=detalhesAutonomo&idAutonomo=${autonomosCadastrados.idAutonomo}" class="btn btn-light" style="text-decoration: none;">Visitar Perfil</a></td>
                          </tr>                                  
                        </c:forEach>   					
                        </tbody>                        
                      </table>
					<h4 class="text-center text-danger">${msgNaoTem}</h4>
                    </div>

			<footer class="mt-auto border-top border-1">
						<a href="controller?action=home" class="nav-link text-center text-muted px-2 "style="padding-top: 2em;">© 2022 iTonomise</a>	
			</footer>
		</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous">
	</script>
</body>
</html>