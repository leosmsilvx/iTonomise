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
<title>iTonomise</title>

<link rel="stylesheet" href="/iTonomise/css/style.css">
<style>
.container{
	max-width: 80%;
}
</style>
</head>
<body>
	<div>
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

				<!-- Features -->
		<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
            <symbol id="servicos" viewBox="-2 -2 20 20">
                <path d="M4 16s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H4Zm4-5.95a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                <path d="M2 1a2 2 0 0 0-2 2v9.5A1.5 1.5 0 0 0 1.5 14h.653a5.373 5.373 0 0 1 1.066-2H1V3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v9h-2.219c.554.654.89 1.373 1.066 2h.653a1.5 1.5 0 0 0 1.5-1.5V3a2 2 0 0 0-2-2H2Z"/>
            </symbol>
            <symbol id="seta" viewBox="-2 0 16 16">
                <path fill-rule="evenodd"
				d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"></path>
            </symbol>
            <symbol id="autonomo" viewBox="-2 -2 20 20">
                <path d="M10 9.05a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                <path d="M2 1a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2H2ZM1 3a1 1 0 0 1 1-1h2v2H1V3Zm4 10V2h9a1 1 0 0 1 1 1v9c0 .285-.12.543-.31.725C14.15 11.494 12.822 10 10 10c-3.037 0-4.345 1.73-4.798 3H5Zm-4-2h3v2H2a1 1 0 0 1-1-1v-1Zm3-1H1V8h3v2Zm0-3H1V5h3v2Z"/>
            </symbol>
            <symbol id="sobre" viewBox="-2 -2 20 20">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
            </symbol>
        </svg>


		<div class="container">
			<div class="text-center pt-2">
				<h1>iTonomise</h1>
				<a>De autônomos para autônomos</a>
			</div>			
			<div class="row pt-4">
				<div class="col">
					<div class="card mb-5">
						<h3 class="text-center pt-3">Sou Autônomo</h3>
						<img src="/iTonomise/imgs/autonomo.jpg" width="95%">
						<div class="card-body border-top">
						  <p class="card-text" style="font-weight: bold; font-size: larger; text-align: center;">Olá autonômo</p>
						  <p class="card-text pb-4" style="text-align: justify">Clique no link abaixo para ser redirecionado à nossa página de cadastro ou login. Faça parte da nossa equipe de trabalhadores autônomos, oferecendo seus serviços pelo nosso site!</p>
						  <div class="gap-4 d-flex justify-content-center pt-5">
							<a href="controller?action=pagCadAuto" class="btn btn-dark icon-link d-inline-flex align-items-center" style="font-size: 1.1em; text-decoration: none;">
	                            Cadastre-se
	                        </a> 
						  </div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-5">
						<h3 class="text-center pt-3">Sou Contratante</h3>
						<img src="/iTonomise/imgs/contrato.jpg" width="95%">
						<div class="card-body border-top">
						  <p class="card-text" style="font-weight: bold; font-size: larger; text-align: center;">Olá contrate</p>
						  <p class="card-text" style="text-align: justify">Clique no link abaixo para ser redirecionado à nossa página de cadastro ou login. Desfrute dos serviços ofertados pelos trabalhadores autonomos de sua região, oferecidos pelo nosso site!</p>
						  <div class="gap-4 d-flex justify-content-center pt-5">
							<a href="controller?action=pagCadComum" class="btn btn-dark icon-link d-inline-flex align-items-center" style="font-size: 1.1em; text-decoration: none;">
								Cadastre-se
							</a>
						  </div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<h3 class="text-center pt-3">Sobre iTonomise</h3>
						<img src="/iTonomise/imgs/painel.jpg" width="95%">
						<div class="card-body border-top">
						  <p class="card-text" style="font-weight: bold; font-size: larger; text-align: center;">Um pouco sobre nós!</p>
						  <p class="card-text" style="text-align: justify">Como programadores, sabemos a dificuldade de encontrar trabalhos freelancer. A iTonomise começou como um projeto de TCC e se transformou neste site. Nosso objetivo é facilitar o acesso à informação entre os autonômos e contratantes.</p>
						</div>
						<div class="text-center row">
							<a href="https://github.com/leosmsilvx/iTonomise" target="_blank" class="text-dark text-decoration-none">
								<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-github" viewBox="0 0 16 16">
										<path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
									</svg>
									<p>GitHub</p>
								</div>
							</a>
						</div>
					</div>
				</div>
			  </div>
            </div>
		</div>			              		
	  <div>
		<footer class="mt-auto">
			<div class="container">
				<ul class="nav justify-content-center mb-3">
					<li class="nav-item">
					<a class="nav-link px-2 text-center" style="font-size: 1.5em; font-weight: bold; color: #111">Já é usuário?</a>
					<a href="controller?action=login"
						class="nav-link px-2 text-muted text-center"><button class="w-100 btn btn-dark" type="submit">Login</button></a></li>
				</ul>
				<a href="controller?action=index" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>	
			</div>
		</footer>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	
</body>
</html>