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
.form-control:focus {
        border-color: #212529;
        box-shadow: 0 0 0 0.2rem rgba(33, 37, 41, 0.1);
} 

</style>
</head>
<body class="text-center">
	<main class="form-signin m-auto">
			<h5 class="text-danger"> ${msgErro} </h5>
			<a href="controller?action=index"><img class="mb-4" src="/iTonomise/imgs/itonomiseD.png" alt="" width="100" height="100"></a>
			<div style="background-color: white; padding: 10%;" class="border border-dark rounded-3">
				<h4  class="mb-3 fw-normal">
					Olá,<br>Digite seu Usuário e Senha
				</h4>
				<form action="controller?action=confirmarLogin" method="post">
					<div class="py-1">
						<input type="text" class="form-control form-control-lg border border-dark" name="email" id="email"
							placeholder="Email" required>
					</div>
					<div class="input-group py-1">
						<input type="password" class="form-control form-control-lg border border-dark" name="senha" id="senha"
							placeholder="Senha" required>
							<button class="btn btn-dark" type="button" onclick="mostrarSenha()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
								<path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"></path>
								<path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"></path>
								<path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"></path></svg>
							</button>
					</div>
			      	<div class="py-2">
			        	<button class="w-100 btn btn-lg btn-dark" type="submit">Entrar</button>
			      	</div>
			      	<div class="py-2">
			        	<a class="text-muted" href='controller?action=pagRecuperarSenha'>Esqueceu a senha?</a>
			      	</div>
				</form>
			</div>
			<a href="controller?action=index#cadastro" class="nav-link text-muted pt-4" >Não é usuário? Se cadastre agora!</a>
      		<a href="controller?action=index" class="nav-link mt-5 mb-3 text-muted">© 2022 iTonomise</a>
	</main>

<script>
function mostrarSenha() {
	  var senha = document.getElementById("senha");
	  if (senha.type === "password") {
	    senha.type = "text";
	  } else {
	    senha.type = "password";
	  }
	}
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
</body>
</html>