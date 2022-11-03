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
<link rel="stylesheet" href="/iTonomise/css/style.css">
</head>
<body>
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
						<li class="nav-item text-white nav-link"><a href="controller?action=meusContratos" 	style="text-decoration: none; color: white; ">Meus Contratos</a></li>						
						<li class="nav-item nav-link"><a href="controller?action=logout" style="text-decoration: none; color: red;">Logout</a></li>
					</ul>
				</div>
			</nav>
			<div class="container">
                <main>
                    <div class="row g-3">
                            <h4 class="mb-4 pt-4">Meu perfil</h4>
                            <form action="controller?action=pagAlterarPerfilCom" method="post">
                                <div class="row g-3">                                    
                                    <div class="col-4">
                                        <h6 class="text-body text-start px-1">@${comum.user}</h6>	
										<div class="card">
											<img src="${comum.nomeImg}" height="250" width="225" class="card-img-top">
											<div class="card-body border-top">
											  <p class="card-text" style="font-weight: bold; font-size: larger; text-align: center;">${comum.nome}</p>
											</div>
										</div>
									</div>
        
                                    <div class="col-8">
                                        <label class="form-label">Primeiro Nome</label>
                                        <input type="text" class="form-control"
                                            value="${comum.nome}" disabled>
                                        <label class="form-label">Sobrenome</label>
                                            <input type="text" class="form-control"
                                                value="${comum.sobrenome}" disabled> 
                                        <label class="form-label">CPF</label>
                                        <input type="text" class="form-control"
                                            value="${comum.cpf}" disabled>
                                        <label class="form-label">Telefone</label><input
                                            type="text" class="form-control"
                                            value="${comum.tel}" disabled>
                                        <label class="form-label">Email</label> <input
                                            type="email" class="form-control"
                                            value="${comum.email}" disabled>
                                        
                                    </div>             
                                    <div class="col-12">
                                        <label class="form-label">Endereço</label>
                                        <textarea class="form-control" disabled>${comum.endereco}</textarea>
                                    </div>
                                    <div class="col-6 pt-4">
                                        <button class="btn btn-dark w-100" type="submit">Alterar dados</button>
                                    </div>
                                    <div class="col-6 pt-4">
                                    	<a class="btn btn-dark w-100" onclick="history.back()">Voltar</a>	
                                    </div>
                                </div>
                            </form>
                    </div>
                </main>
        
                <!--footer-->
            <div class="py-5">
                <footer class="mt-auto">
                    <div class="container">
                        <a href="controller?action=home" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>
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