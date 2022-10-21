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
							<a href="controller?action=home"><img src="https://media.discordapp.net/attachments/911394611300270122/1021930948771721236/maleta2.0.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
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
            	<div class="py-5">					
						<div class="pb-4 position-relative">	
							<h4 class="mb-2"><a>Lista de Autônomos</a><a class="position-absolute top-0 end-0 text-end text-decoration-none text-dark">Categoria</a></h4>					
							<div class="col-2 position-absolute top-50 end-0">								
								<label for="filtro">Filtro</label>
								<form action="controller?action=atualizarPorCategoria" method="post">
									<select class="form-select bg-dark text-white text-center" name="filtro" onchange="this.form.submit()" required>
										<option value="none">Filtrar por</option>
										<option value="Pintor(a)">Pintor(a)</option>
									  	<option value="Pedreiro">Pedreiro</option>
									  	<option value="Eletricista">Eletricista</option>	
									 	<option value="Encanador(a)">Encanador(a)</option>							  
									 	<option value="Faxineiro(a)">Faxineiro(a)</option>
									 	<option value="Babá">Babá</option>								 	
									</select>
									<button type="submit" class="btn btn-outline-dark btn-sm position-absolute top-80 end-0">Limpar Filtro</button>
								</form>
							</div>
						</div>						
				</div>	
                <div class="py-5">
                <c:set var="notEmpty" scope="session" value="${1}"/>
                    <table class="table table-hover table-dark table-striped caption-top align-middle">
                        <thead>
                          <tr>
                            <th scope="col">Usuário</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Profissão</th>
                            <th scope="col">Avaliação</th>
                            <th scope="col"></th>
                          </tr>
                        </thead>                   
                        <c:forEach var="autonomosCadastrados" items="${autonomos}">                        
                        <c:if test="${autonomosCadastrados.tags == categoria or categoria == null}">
                        <c:set var="notEmpty" scope="session" value="${2}"/>						
                        <tbody class="table-group-divider">                        
                          <tr>
                            <td>@${autonomosCadastrados.user}</td>
                            <td>${autonomosCadastrados.nome} ${autonomosCadastrados.sobrenome}</td>
                            <td class="text-warning">${autonomosCadastrados.tags}</td>
                            <td>${autonomosCadastrados.aval} <svg class="bi" width="1.1em" height="1.1em"><use xlink:href="#estrelilha"></use></svg></td>
                            <td class="text-end"><a href="controller?action=detalhesAutonomo&idAutonomo=${autonomosCadastrados.idAutonomo}" class="btn btn-light" style="text-decoration: none;">Visitar Perfil</a></td>
                          </tr>                
                         </c:if>                   
                        </c:forEach>   					
                        </tbody>                        
                      </table>
                      
                      <c:if test="${notEmpty != 2 and categoria != null}">
							<h4 class="text-center text-danger">Não há autonomos correspondentes ao filtro selecionado.</h4>
                        </c:if>
                    </div>

			<footer class="mt-auto border-top border-1">
						<a href="controller?action=home" class="nav-link text-center text-muted px-2"style="padding-top: 2em;">© 2022 iTonomise</a>	
			</footer>
		</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous">
	</script>
</body>
</html>