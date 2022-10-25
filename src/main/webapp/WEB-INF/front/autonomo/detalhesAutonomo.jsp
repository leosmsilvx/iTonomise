<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
@media only screen and  ( max-width : 600px) {
	.container{
		max-width: 90%;
	}
}
</style>
</head>
<body>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
		  <symbol id="estrelilha" viewBox="0 0 16 16">
			<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
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
				<main>
					<div class="row g-5">
						<div>
							<h4 class="mb-4 pt-4">Perfil do autônomo</h4>
							<form action="controller?action=proporContrato" method="post">
								<div class="row">		
									<div class="col-4">
										<h6 class="text-body text-start px-1">@${autonomo.user}</h6>	
										<div class="card">
											<img src="https://st.depositphotos.com/2818715/5102/i/600/depositphotos_51026865-stock-photo-serious-and-pensive-isolated-young.jpg" height="250" width="225" class="card-img-top">
											<div class="card-body border-top">
											  <p class="card-text" style="font-weight: bold; font-size: larger; text-align: center;">${autonomo.nome}</p>
											</div>
										</div>
										<div class="col-12 row py-2">
											<div class="col-8"><h6 class="text-start px-3 py-2">Total de contratos: ${todosContratosAut}</h6></div>
											<div class="col-4"><h6 class="text-end px-3 py-2">${autonomo.aval}<svg class="bi" width="1.1em" height="1.1em"> <use xlink:href="#estrelilha"></use></svg></h6></div>
										</div>	
											<div class="d-grid">
											<input type="hidden" name="idAutonomo" value="${autonomo.idAutonomo}">
											<button type="submit" class="btn btn-dark">Propor Contrato</button>
											<div class="col-12 pt-4">
                                    			<a class="btn btn-dark w-100" onclick="history.back()">Voltar</a>	
                                    		</div>
										</div>	
									</div>
		
									<div class="col-8 px-4">
										<label for="nome" class="form-label">Nome</label> <input
											type="text" class="form-control" name="nome"
											value="${autonomo.nome} ${autonomo.sobrenome}" disabled readonly>
										<label for="telefone" class="form-label" style="padding-top: 2%;">Telefone</label> <input
											type="text" class="form-control" name="telefone"
											value="3${autonomo.tel}" disabled readonly>
										<label for="email" class="form-label" style="padding-top: 2%;">E-mail</label> <input
											type="text" class="form-control" name="email"
											value="${autonomo.email}" disabled readonly>
										<label for="descricao" class="form-label" style="padding-top: 2%;">Descrição</label>
										<textarea class="form-control" rows="2" name="descricao" disabled readonly>${autonomo.desc}</textarea>
										<label for="tags" class="form-label" style="padding-top: 2%;">Principal área de trabalho</label> <input
											type="text" class="form-control" name="tags"
											value="${autonomo.tags}" disabled readonly>
									</div>
								</div>
							</form>
						</div>
					</div>
				<div class="pt-4">
					<footer class="mt-auto border-top border-1">
						<a href="controller?action=home" class="nav-link text-center text-muted px-2"style="padding-top: 2em;">© 2022 iTonomise</a>	
					</footer>
				</div>			
			</main>
		</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>