<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<meta charset="utf-8">
<title>Cadastro Usuário</title>
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
body{
	background-color: #EEEEEE;
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

.container {
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
		<!-- Header -->
		<nav class="py-2 bg-dark border-bottom">
			<div class="d-flex flex-wrap">
				<ul class="nav me-auto">
					<li class="nav-item"><div Style="background-color: #212529; margin-left: 30px; padding: 0px; height: 50px;">
        				<a href="controller?action=index"><img src="https://media.discordapp.net/attachments/911394611300270122/1021930948771721236/maleta2.0.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
        				<a href="controller?action=index" style="color: white; font-size: 25px; text-decoration: none; margin-left: 5px"> iTonomise</a>
						</div></li>
				</ul>
			</div>
		</nav>

	<div class="container">
		<main>
			<div class="row g-5">
				<div>
					<h4 class="mb-4 py-4">Cadastro Usuário</h4>
					<form action="controller?action=cadastrarComum" method="post">						
						<div class="row g-3">
							<div class="col-sm-6">
								<label for="nome" class="form-label">Primeiro
									Nome</label> <input type="text" class="form-control"
									name="nome" placeholder="Nome">
							</div>

							<div class="col-6">
								<label for="sobrenome" class="form-label">Sobrenome</label> <input
									type="text" class="form-control" name="sobrenome"
									placeholder="Sobrenome">
							</div>

							<div class="col-6">
								<label for="cpf" class="form-label">CPF <span
									class="text-muted">(Somente números)</span></label> <input
									type="number" class="form-control" name="cpf"
									placeholder="xxx.xxx.xxx-xx">
							</div>

							<div class="col-6">
								<label for="tel" class="form-label">Telefone <span
									class="text-muted">(Somente números)</span></label> <input
									type="number" class="form-control" name="tel"
									placeholder="(37) 98877-6655">
							</div>

							<div class="col-8">
								<label for="user" class="form-label">Usuário</label>
								<div class="input-group">
									<span class="input-group-text">@</span> <input type="text"
										class="form-control" name="user" placeholder="Usúario">
								</div>
							</div>

							<div class="col-4">
								<label for="senha" class="form-label">Senha</label> <input
									type="password" class="form-control" name="senha"
									placeholder="*******">
							</div>

							<div class="col-12">
								<label for="email" class="form-label">Email</label> <input
									type="email" class="form-control" name="email"
									placeholder="iTonomise@exemplo.com">
							</div>
							
							<div class="col-12">
								<label for="endereco" class="form-label">Endereço</label>
								<textarea class="form-control" name="endereco"
									placeholder="Rua Bonita - nº 691 - Bairro legal - Divinópolis"></textarea>
							</div>

							<hr class="my-4">
							<button class="w-100 btn btn-dark btn-lg" type="submit">Cadastrar</button>
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
</body>
</html>