<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<meta charset="utf-8">
<title>Contrato de Serviço</title>
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
					class="nav-link text-white px-3">Autônomos</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link text-white px-3">Serviços</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link text-white px-3">Sobre</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<main>
			<div class="row g-5">
				<div>
					<h4 class="mb-4 py-3">Contrato com Fulano</h4>
					<form>
						<div class="row g-3">

							<div class="col-12">
								<label for="titulo" class="form-label">Título</label>
                                 <input type="text" class="form-control" name="titulo" placeholder="Título">
							</div>

							<div class="col-12">
                                <label for="descricao" class="form-label">Descrição do contrato</label>
                                <textarea class="form-control" name="email" rows="13" placeholder="Escreva o serviço que o Autonomo deve realizar, onde vai ser realizado o serviço, observações, etc..."></textarea>
                            </div>

							<div class="col-6">
								<label for="valor" class="form-label">Valor do serviço</label>
								<div class="input-group">
									<span class="input-group-text">R$</span> <input type="number"
										class="form-control" required name="valor" min="0" step="any" placeholder="100.00">
								</div>
							</div>

							<div class="col-6">
								<label for="telefone" class="form-label">Telefone do autônomo</label><span class="input-group-text text-center">(37) 98877-6655</span>
							</div>

							<hr class="my-4">
							<button class="w-100 btn btn-dark btn-lg" type="submit">Cadastrar</button>
					</form>
				</div>
			</div>
		</main>

		<!--footer-->
		<footer class="footer mt-auto">
			<div class="container" style="position: absolute; bottom: 20;">
				<ul class="nav justify-content-center border-bottom pb-3">
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Autônomos</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Serviços</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Sobre</a></li>
				</ul>
				<p class="text-center text-muted">© 2022 iTonomise</p>
			</div>
		</footer>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>