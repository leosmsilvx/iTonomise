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
<title>Contrato de Servi�o</title>
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
	background-color: #EEEEEE;
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
	max-width: 1100px;
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
			</div>
		</nav>

	<div class="container">
		<main>
			<div class="row g-5">
				<div>
					<h4 class="mb-4 py-3">Contrato</h4>
					<form action="controller?action=cadastrarContrato" method="post">
						<div class="row g-3">
							<div class="col-6">
								<label for="titulo" class="form-label">T�tulo</label>
                                 <input type="text" class="form-control" name="titulo" placeholder="T�tulo">
							</div>
							<div class="col-6">
								<label for="valor" class="form-label">Valor do servi�o</label>
								<div class="input-group">
									<span class="input-group-text">R$</span> <input type="number"
										class="form-control" required name="valor" min="0" step="any" placeholder="100.00">
								</div>
							</div>

							<div class="col-12">
                                <label for="descricao" class="form-label">Descri��o do contrato</label>
                                <textarea class="form-control" name="descricao" rows="13" placeholder="Escreva o servi�o que o Autonomo deve realizar, onde vai ser realizado o servi�o, observa��es, etc..."></textarea>
                            </div>

							<hr class="my-4">
							<button class="w-100 btn btn-dark btn-lg" type="submit">Cadastrar</button>
					</form>
				</div>
			</div>
		</main>

	<div>
		<footer class="mt-auto">
			<div class="container">
				<a href="controller?action=home" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">� 2022 iTonomise</p></a>
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