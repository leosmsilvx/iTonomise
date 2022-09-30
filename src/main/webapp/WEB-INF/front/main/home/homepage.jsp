<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

body{
	background-color: #EEE;
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
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
</style>
</head>
<body>
			<!-- Header -->
			<nav class="py-2 bg-dark border-bottom">
				<div class="d-flex flex-wrap">
					<ul class="nav me-auto">
						<li class="nav-item"><div Style="background-color: #212529; margin-left: 30px; padding: 0px; height: 50px;">
							<a href="controller?action=home"><img src="https://media.discordapp.net/attachments/911394611300270122/1021930948771721236/maleta2.0.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
							<a href="controller?action=home" style="color: white; font-size: 25px; text-decoration: none; margin-left: 5px"> iTonomise</a>
							</div></li>
					</ul>
					<ul class="nav" style="margin-right: 30px; margin-top: 5px">
						<li class="nav-item"><a href="#" class="text-white">meu perfil</a></li>
					</ul>
				</div>
			</nav>
		<div class="container">
			<div class="row">
				<div class="col" style="padding: 5%;">
					<div class="card">
						<img src="https://media.discordapp.net/attachments/911394611300270122/1025444376350048297/contrato.jpg" height="400" width="225" class="card-img-top">
						<div class="card-body">
						  <p class="card-text" style="font-weight: bold; font-size: larger;">Contrato</p>
						  <p class="card-text">Clique e crie um contrato para aparecer na lista de contratos e ser achado por nossos usuários!</p>
						  <div class="col" style="padding-left: 32%;">
							<a href="controller?action=pagCadCont" class="btn btn-dark">Criar contrato</a>
						  </div>
						</div>
					</div>
				</div>
				<div class="col" style="padding: 5%;">
					<div class="card">
						<img src="https://media.discordapp.net/attachments/911394611300270122/1025444376719138867/lista.jpg" height="400" width="225" class="card-img-top">
						<div class="card-body">
						  <p class="card-text" style="font-weight: bold; font-size: larger;">Lista</p>
						  <p class="card-text">Clique e veja a lista completa de trabalhadores autonomos e contratos</p>
						  <a href="#" class="btn btn-dark mx-5">Ver contratos</a>
						  <a href="#" class="btn btn-dark">Ver Autonomos</a>
						</div>
					</div>
				</div>
			  </div>

			<div class="border-top border-2 py-5">
			<table class="table table-dark table-striped">
				<caption class="caption-top" style="font-weight: bold;">Lista de autônomos</caption> <!-- MAX 10 AUTONOMOS-->
				<caption style="padding-left: 85%;"><a href="#">Ver todos Autonômos</a></caption> <!-- MAX 10 AUTONOMOS-->
				<thead>
				  <tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th> <!-- MOSTRAR SOBRENOME TAMBÉM-->
					<th scope="col">Área de atuação</th>
					<th scope="col">Avaliação</th>
				  </tr>
				</thead>
				<tbody class="table-group-divider">
				  <tr>
					<td>@Jose_</td>
					<td>José da Silva</td>
					<td>Pedreiro(a)</td>
					<td>4,5</td> <!-- Icone em estrelas-->
				  </tr>
				  <tr>
					<td>@Mariaa</td>
					<td>Maria Souza</td>
					<td>Babá</td>
					<td>2</td>
				  </tr>
				  <tr>
					<td>@anto1o</td>
					<td>Antônio Costa</td>
					<td>Faxineiro(a)</td>
					<td>5</td>
				  </tr>
				</tbody>
			  </table>
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