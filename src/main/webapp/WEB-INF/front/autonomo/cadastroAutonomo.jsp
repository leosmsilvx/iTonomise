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


<meta charset="ISO-8859-1">
<title>Cadastro Aut?nomo</title>

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
	max-width: 960px;
}
</style>

</head>
<body>
	<!-- Header -->
	<nav class="py-2 bg-dark border-bottom">
		<div class="container d-flex flex-wrap">
			<ul class="nav me-auto">
				<li class="nav-item"><a href="#" class="nav-link text-white"
					style="font-size: 25;">iTonomise</a></li>
			</ul>
			<ul class="nav py-2">
				<li class="nav-item"><a href="#"
					class="nav-link text-white px-3">Aut?nomos</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link text-white px-3">Servi?os</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link text-white px-3">Sobre</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<main>
			<div class="row g-5">
				<div>
					<h4 class="mb-4 py-4">Cadastro Aut?nomo</h4>
					<form>
						<div class="row g-3">

							<div class="col-sm-6">
								<label for="primeiro_nome" class="form-label">Primeiro Nome</label>
								<input type="text" class="form-control"
									name="primeiro_nome" placeholder="Nome" required>
							</div>

							<div class="col-6">
								<label for="sobrenome" class="form-label">Sobrenome</label> <input
									type="text" class="form-control" name="sobrenome"
									placeholder="Sobrenome" required>
							</div>

							<div class="col-6">
								<label for="cpf" class="form-label">CPF <span
									class="text-muted">(Somente n?meros)</span></label> <input
									type="number" class="form-control" name="cpf"
									placeholder="xxx.xxx.xxx-xx" required>
							</div>

							<div class="col-6">
								<label for="telefone" class="form-label">Telefone <span
									class="text-muted">(Somente n?meros)</span></label> <input
									type="number" class="form-control" name="telefone"
									placeholder="(37) 98877-6655" required>
							</div>

							<div class="col-8">
								<label for="usuario" class="form-label">Usu?rio</label>
								<div class="input-group">
									<span class="input-group-text">@</span> <input type="text"
										class="form-control" name="usuario" placeholder="Us?ario"
										required>
								</div>
							</div>

							<div class="col-4">
								<label for="senha" class="form-label">Senha</label> <input
									type="password" class="form-control" name="senha"
									placeholder="*******" required>
							</div>

							<div class="col-12">
								<label for="email" class="form-label">Email</label> <input
									type="email" class="form-control" name="email"
									placeholder="iTonomise@exemplo.com" required>
							</div>

							<div class="col-12">
								<label for="descricao" class="form-label">Uma breve
									descri??o sua</label>
								<textarea class="form-control" name="email"
									placeholder="Ol?, meu nome ? Jo?o e eu trabalho com pintura!"></textarea>
							</div>

							<div class="col-12">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										value="pedreiro"> <label class="form-check-label">Pedreiro(a)</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" value="pintor">
									<label class="form-check-label">Pintor(a)</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										value="eletricista"> <label class="form-check-label">Eletricista</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										value="encanador"> <label class="form-check-label">Encanador(a)</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										value="faxineiro"> <label class="form-check-label">Faxineiro(a)</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										value="jardineiro"> <label class="form-check-label">Jardineiro(a)</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" value="baba">
									<label class="form-check-label">Bab?</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" value="outro">
									<label class="form-check-label">Outro</label>
								</div>
							</div>

							<div class="col-4">
								<label for="pais" class="form-label">Pa?s</label> <select
									class="form-select" name="pais" required>
									<option value="">Selecionar...</option>
									<option>Brasil</option>
								</select>
							</div>

							<div class="col-4">
								<label for="estado" class="form-label">Estado</label> <select
									class="form-select" name="estado" required>
									<option value="">Selecionar...</option>
									<option>Minas Gerais</option>
								</select>
							</div>

							<div class="col-4">
								<label for="cidade" class="form-label">Cidade</label> <select
									class="form-select" name="cidade" requiredx>
									<option value="">Selecionar...</option>
									<option>Divin?polis</option>
								</select>
							</div>

							<hr class="my-4">
							<button class="w-100 btn btn-dark btn-lg" type="submit">Cadastrar</button>
					</form>
				</div>
			</div>
		</main>

		<!--footer-->
		<footer class="footer mt-auto">
			<div class="container" style="position: flex; bottom: 0;">
				<ul class="nav justify-content-center border-bottom pb-3">
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Aut?nomos</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Servi?os</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Sobre</a></li>
				</ul>
				<p class="text-center text-muted">? 2022 iTonomise</p>
			</div>
		</footer>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>