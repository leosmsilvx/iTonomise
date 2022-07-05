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
</style>
</head>
<body>
	<div class="cover-container d-flex w-100 h-100 mx-auto flex-column">
		<!-- Header -->
		<nav class="py-2 bg-dark border-bottom">
			<div class="container d-flex flex-wrap">
				<ul class="nav me-auto">
					<li class="nav-item"><a href="#"
						class="nav-link text-white px-2">Autônomos</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link text-white px-2">Serviços</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link text-white px-2">Sobre</a></li>
				</ul>
				<ul class="nav">
					<li class="nav-item"><a href="#"
						class="nav-link text-white px-2">Login</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link text-white px-2">Cadastro</a></li>
				</ul>
			</div>
		</nav>
		<header class="py-3 mb-4 border-bottom">
			<div class="container d-flex flex-wrap justify-content-center">
				<a id="logo" href="#"
					class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto text-dark text-decoration-none">
					<img src="a.png" width="50" height="50"> <span class="fs-4">iTonomise</span>
				</a>
				<form class="col-12 col-lg-auto mb-3 mb-lg-0" role="search">
					<input type="search" class="form-control" placeholder="Procurar..."
						aria-label="Procurar">
				</form>
			</div>
		</header>

		<!-- Features -->
		<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
            <symbol id="collection" viewBox="-2 -2 20 20">
                <path
				d="M2.5 3.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm2-2a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6v7zm1.5.5A.5.5 0 0 1 1 13V6a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13z"></path>
            </symbol>
            <symbol id="chevron-right" viewBox="-2 0 16 16">
                <path fill-rule="evenodd"
				d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"></path>
            </symbol>
            <symbol id="people-circle" viewBox="-2 -2 20 20">
                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"></path>
                <path fill-rule="evenodd"
				d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"></path>
            </symbol>
            <symbol id="toggles2" viewBox="-2 -2 20 20">
                <path
				d="M9.465 10H12a2 2 0 1 1 0 4H9.465c.34-.588.535-1.271.535-2 0-.729-.195-1.412-.535-2z"></path>
                <path
				d="M6 15a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 1a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm.535-10a3.975 3.975 0 0 1-.409-1H4a1 1 0 0 1 0-2h2.126c.091-.355.23-.69.41-1H4a2 2 0 1 0 0 4h2.535z"></path>
                <path d="M14 4a4 4 0 1 1-8 0 4 4 0 0 1 8 0z"></path>
            </symbol>
        </svg>


		<div class="container px-4 py-5" id="featured-3">
			<div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
				<div class="feature col">
					<div
						class="feature-icon d-inline-flex align-items-center justify-content-center bg-black bg-gradient text-white fs-2 mb-3"
						style="border-radius: 6px;">
						<svg class="bi" width="40px" height="40px">
							<use xlink:href="#collection"></use></svg>
					</div>
					<h2>Serviços Oferecidos</h2>
					<p>iTonomise oferece serviços autônomos diversos, baseados no
						perfil de quem nos contata. Sua pia entupiu? Nós sabemos o
						encanador certo para lhe indicar! Seus filhos vão mal na escola?
						Que tal um tutor? iTonomise é simples e dinâmico, para combinar
						com a sua rotina.</p>
					<a href="#" class="icon-link d-inline-flex align-items-center">
						Ir para <svg class="bi" width="1em" height="1em">
							<use xlink:href="#chevron-right"></use></svg>
					</a>
				</div>
				<div class="feature col">
					<div
						class="feature-icon d-inline-flex align-items-center justify-content-center bg-black bg-gradient text-white fs-2 mb-3"
						style="border-radius: 6px;">
						<svg class="bi" width="40px" height="40px">
							<use xlink:href="#people-circle"></use></svg>
					</div>
					<h2>Sou autônomo</h2>
					<p>Esta é a sua área, autônomo! Aqui você encontrará um guia
						para ofertar seus serviços em nosso site, bem como dicas para
						tornar seu perfil mais atrativo aos seus clientes. Sinta-se à
						vontade nos contando suas experiências passadas, sua preferência
						em atuação, entre outros!</p>
					<a href="#" class="icon-link d-inline-flex align-items-center">
						Ir para <svg class="bi" width="1em" height="1em">
							<use xlink:href="#chevron-right"></use></svg>
					</a>
				</div>
				<div class="feature col">
					<div
						class="feature-icon d-inline-flex align-items-center justify-content-center bg-black bg-gradient text-white fs-2 mb-3"
						style="border-radius: 6px;">
						<svg class="bi" width="40px" height="40px">
							<use xlink:href="#toggles2"></use></svg>
					</div>
					<h2>Sobre iTonomise</h2>
					<p>A iTonomise é uma plataforma que facilita o acesso à
						informação entre autônomo e contratante, visando sempre manter o
						mercado em movimento. Sua ideia surgiu de várias necessidades,
						dentre elas, a de um TCC. E ao longo de diversas pesquisas sobre o
						impacto da pandemia nas vidas dos cidadãos brasileiros, chegamos à
						conclusão que se nosso TCC tinha por objetivo apresentar uma
						proposta que facilitasse a vida de alguém, que fosse para
						minimizar esse impacto pandêmico.</p>
					<a href="#" class="icon-link d-inline-flex align-items-center">
						Ir para <svg class="bi" width="1em" height="1em">
							<use xlink:href="#chevron-right"></use></svg>
					</a>
				</div>
			</div>
		</div>

		<footer class="footer mt-auto py-3">
			<div class="container">
				<ul class="nav justify-content-center border-bottom pb-3 mb-3">
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