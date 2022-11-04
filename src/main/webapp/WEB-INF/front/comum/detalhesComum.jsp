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
				<div class="offcanvas offcanvas-end" style="width: 20%;" tabindex="-1" id="barraLateral">
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
						<div>
							<h4 class="mb-4 pt-4">Perfil do contratante</h4>
							<form>
								<div class="row g-3">
		
									<div class="col-4">
										<h6 class="text-body text-start px-1">@${comum.user}</h6>	
										<div class="card">
										<img src="${comum.nomeImg}" height="250" width="225" class="card-img-top">
										<div class="card-body border-top">
											  <p class="card-text" style="font-weight: bold; font-size: larger; text-align: center;">${comum.nome}</p>
											</div>
										</div>
										<div class="col-12 row py-2">
											<div class="col-8"><h6 class="text-start px-3 py-2">Total de contratos: ${todosContratosCom}</h6></div>
											</div>	
										<div class="col-12 pt-4">
                                    	<a class="btn btn-dark w-100" onclick="history.back()">Voltar</a>	
                                    </div>
									</div>
		
									<div class="col-8 px-4">
										<div class="row col-12">
											<label for="nome" class="form-label">Nome</label> <input
											type="text" class="form-control" name="nome"
											value="${comum.nome} ${comum.sobrenome}" disabled readonly>										
										</div>
										<div class="row col-12">
											<div class=" row col-12">
												<label for="telefone" class="form-label" style="padding-top: 2%;">Telefone</label> 
											</div>
											<div class="row col-8">
											<input
												type="text" class="form-control" name="telefone"
												value="${comum.tel}" disabled readonly>
											
											</div>
											<div class="col-4" style="margin-left: 3%">
												<a class="pt-2" aria-label="Chat on WhatsApp" href="https://wa.me/55${comum.tel}?text=Olá%20${comum.nome}!%20Estou%20entrando%20em%20contato%20pelo%20iTonomise,%20tenho%20interesse%20no%20seu%20serviço!" target="_blank"> <img alt="Chat on WhatsApp" src="/iTonomise/imgs/wpp.png" width="100%" /> </a>
											</div>
										
											<div class="row col-12">
												<label for="email" class="form-label" style="padding-top: 2%;">E-mail</label>
											</div>
											<div class="row col-11">
												<input type="text" class="form-control" name="email"
												value="${comum.email}" disabled readonly>
											</div>								
										
											<div class="col-1" style="margin-left: 3%"> 
												<a class="btn btn-dark" href="mailto:${comum.email}" target="_blank">
											        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
											  			 	 <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"></path>
													</svg>
              									</a>
											</div>
										</div>										
									</div>
								</div>
							</form>
						
						</div>
			<div class="pt-4">
			<footer class="mt-auto border-top border-1">
						<a href="controller?action=home" class="nav-link text-center text-muted px-2"style="padding-top: 2em;">© 2022 iTonomise</a>	
			</footer>
			
			</div>
			</main>
			</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>