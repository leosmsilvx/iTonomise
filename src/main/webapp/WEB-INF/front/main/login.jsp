<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<meta charset="utf-8">
<title>Login iTonomise</title>
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

html, body {
	height: 100%;
}

body {
	display: flex;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #EEEEEE;
}

.form-signin {
	max-width: 330px;
	padding: 15px;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="text"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
</head>
<body class="text-center">

	<main class="form-signin w-100 m-auto">
			<h5 class="text-danger"> ${msgErro} </h5>
			<a href="controller?action=index"><img class="mb-4" src="https://media.discordapp.net/attachments/911394611300270122/1021924837486239764/a.png" alt="" width="100" height="100"></a>
			<h1 class="h3 mb-3 fw-normal">
				Olá,<br>Digite seu Usuário e Senha
			</h1>
			<form action="controller?action=confirmarLogin" method="post">
				<div>
					<input type="text" class="form-control" name="email" id="email"
						placeholder="Email" style="border-radius: 5px 5px 5px 5px; height: 4em;" required>
				</div>
				<div>
					<input type="password" class="form-control" name="senha" id="senha"
						placeholder="Senha" style="border-radius: 5px 5px 5px 5px; height: 4em;" required>
				</div>
		      	<div class="py-3">
		        	<button class="w-100 btn btn-lg btn-dark" type="submit">Entrar</button>
		      	</div>
			</form>
			<a href="controller?action=index" class="nav-link"><p class="text-muted">Não é usuário? Se cadastre agora!</p></a>
      		<a href="controller?action=index" class="nav-link"><p class="mt-5 mb-3 text-muted">© 2022 iTonomise</p></a>
	</main>



</body>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
</body>
</html>