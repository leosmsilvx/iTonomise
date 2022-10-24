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
<style>
body{
	background-color: #EEE;
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
</style>
</head>
<body>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
		<symbol id="pessoacirculo" viewBox="0 0 16 16">
			<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
			<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
		  </symbol>
	</svg>
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
						<li class="nav-item text-white"><a href="controller?action=perfil" class="nav-link" style="text-decoration: none; color: white; ">Meu perfil</a></li>
						<li class="nav-item text-white"><a href="controller?action=meusContratos" class="nav-link" style="text-decoration: none; color: white; ">Meus Contratos</a></li>						
						<li class="nav-item nav-link"><a href="controller?action=logout" style="text-decoration: none; color: red;">Logout</a></li>
					</ul>
				</div>
			</nav>
		<div class="container">
			<h5 class="text-success text-center pt-4"> ${msgContrato} </h5>
			<div class="row">
				<div class="col" style="padding: 5%;">
					<div class="card">
						<img src="/iTonomise/imgs/contratoA.jpg" height="400" width="225" class="card-img-top">
						<div class="card-body border-top">
						  <p class="card-text" style="font-weight: bold; font-size: larger; text-align: center;">Contrato</p>
						  <p class="card-text pb-4">Clique e crie um contrato ou veja todos os seus contratos já criados!</p>
						  <div class="gap-4 d-flex justify-content-center">
							<a href="controller?action=pagCadCont" class="btn btn-dark">Criar Contrato</a>
							<a href="controller?action=meusContratos" class="btn btn-dark">Meus contratos</a>
						  </div>
						</div>
					</div>
				</div>
				<div class="col" style="padding: 5%;">
					<div class="card">
						<img src="/iTonomise/imgs/lista.jpg" height="400" width="225" class="card-img-top">
						<div class="card-body border-top">
						  <p class="card-text" style="font-weight: bold; font-size: larger; text-align: center;">Lista</p>
						  <p class="card-text">Clique e veja a lista completa de trabalhadores autonomos e contratos!</p>
						  <div class="gap-4 d-flex justify-content-center">
							<a href="controller?action=verContratos" class="btn btn-dark">Ver contratos</a>
							<a href="controller?action=verAutonomos" class="btn btn-dark">Ver Autonomos</a>
						  </div>
						</div>
					</div>
				</div>
			  </div>

			<div class="border-top border-2">
			</div>
			<footer class="mt-auto">
					<a href="controller?action=home" class="nav-link text-white px-2"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>	
			</footer>
			</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>