<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
							<a href="controller?action=home"><img src="https://media.discordapp.net/attachments/911394611300270122/1021930948771721236/maleta2.0.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
							<a href="controller?action=home" style="color: white; font-size: 25px; text-decoration: none; margin-left: 5px"> iTonomise</a>
							</div></li>
					</ul>
					<ul class="nav" style="margin-right: 30px; margin-top: 5px">
						<li class="nav-item text-white"><a href="#" class="nav-link" style="text-decoration: none; color: white; "><svg class="bi" width="2em" height="2em"><use xlink:href="#pessoacirculo"></use></svg></a></li>
						
					</ul>
				</div>
			</nav>
            <div class="container">
                <div class="border-top border-2 py-5">
                    <table class="table table-hover table-dark table-striped caption-top align-middle">
                        <caption style="font-weight: bold;">Lista de autônomos</caption>
                        <thead>
                          <tr>
                            <th scope="col">Usuário</th>
                            <th scope="col">Nome</th>
                            <th scope="col" class="text-center">Valor</th>
                            <th scope="col" class="text-center">Avaliação</th>
                            <th scope="col"></th>
                          </tr>
                        </thead>
                        <c:forEach var="autonomosCadastrados" items="${autonomos}">
                        <tbody class="table-group-divider">
                          <tr>
                            <td>${autonomosCadastrados.user}</td>
                            <td>${autonomosCadastrados.nome} ${autonomosCadastrados.sobrenome}</td>
                            <td class="text-center">${autonomosCadastrados.tags}</td>
                            <td class="text-center">${autonomosCadastrados.aval}</td>
                            <td class="text-center"><a href="controller?action=detalhesAutonomo&idAutonomo=${autonomosCadastrados.idAutonomo}" class="btn btn-light" style="text-decoration: none;">Ver contrato</a></td>
                          </tr>
                        </c:forEach>
                        </tbody>
                      </table>
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