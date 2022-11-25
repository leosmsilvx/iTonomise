<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="/iTonomise/imgs/itonomise.png">
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
			<nav class="bg-dark border-bottom">
				<div class="d-flex flex-wrap">
					<ul class="nav me-auto">
						<li class="nav-item">
						<div Style="background-color: #212529; margin-left: 30px; height: 50px;" class="pt-1">
							<a href="controller?action=home"><img src="/iTonomise/imgs/itonomise.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
							<a href="controller?action=home" style="color: white; font-size: 25px; text-decoration: none; margin-left: 5px"> iTonomise</a>
							</div></li>
					</ul>
					<ul class="nav" style="margin-right: 30px; margin-top: 5px">		
						<li class="nav-item nav-link">
							<div class="text-white">
								<div class="text-center">
									<a class="text-decoration-none text-white" data-bs-toggle="offcanvas" href="#barraLateral" role="button" aria-controls="barraLateral">
									
									
									<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-list" viewBox="0 0 15 15">
									  <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
									</svg>
								</div>
								</a>
							</div>
						</li>
					</ul>
				</div>


				<!-- OFFCANVAS -->
				<div class="offcanvas offcanvas-end" tabindex="-1" id="barraLateral">
					<div class="offcanvas-header">
					  <h5 class="offcanvas-title">Meu perfil</h5>
					  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
					  <div class="">						
						<p>Logado como: <span class="text-warning">${uUser}</span></p>
					  </div>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=home">Home</a>
					  </div>
					  <hr>
					  <span class="text-muted">Meu perfil</span>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=perfil">Visitar meu perfil</a>
					  </div>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=meusContratos">Meus contratos</a>
					  </div>
					  <hr>
					  <span class="text-muted">Autônomos & Contratos</span>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=verAutonomos">Ver autônomos</a>
					  </div>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=verContratos">Ver contratos</a>
					  </div>
					  <hr>
					  <span class="text-muted">Sair</span>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: red;" href="controller?action=logout">Logout</a>
					  </div>
					</div>
				  </div>
			</nav>
			<div class="container">
                <main>
                    <div class="row g-3">
                            <h4 class="mb-4 pt-4">Alterar dados do perfil</h4>
                            
                            <a class="text-center text-danger" style="text-decoration: none;"> ${msgErroAtu} </a>
                            <form action="controller?action=alterarPerfilCom" method="post"  enctype="multipart/form-data">
                                <div class="row g-3">                                    
                                    <div class="col-4">
                                        <h6 class="text-body text-start px-1">@${comum.user}</h6>	
										<div class="card">
											<img src="${comum.nomeImg}" onerror="this.onerror=null; this.src='/iTonomise/imgs/pessoa.png'" height="250" width="225" class="card-img-top">
											<input type="hidden" class="form-control" value="${comum.nomeImg}" name="imagem" required>
											<div class="card-body border-top">
											  <p class="card-text" style="font-weight: bold; font-size: larger; text-align: center;">${comum.nome}</p>
											  <input type="file" class="form-control" value="${comum.nomeImg}" name="nomeImg">
											</div>
										</div>
									</div>
        
                                    <div class="col-8">
                                        <label class="form-label">Primeiro Nome</label>
                                        <input type="text" class="form-control"
                                            value="${comum.nome}" name="nome" required>
                                        <label class="form-label">Sobrenome</label>
                                            <input type="text" class="form-control"
                                                value="${comum.sobrenome}" name="sobrenome" required> 
                                        <label class="form-label">CPF</label>
                                        <input type="text" class="form-control"
                                            value="${comum.cpf}" name="cpf" id="cpf" pattern=".{14,14}" required>
                                        <label class="form-label">Telefone</label><input
                                            type="text" class="form-control"
                                            value="${comum.tel}" name="tel" id="telefone" pattern=".{16,16}" required>
                                        <label class="form-label">Email</label> <input
                                            type="email" class="form-control"
                                            value="${comum.email}" name="email" required>
                                        
                                    </div>     
        
                                    <div class="col-12">
                                        <label class="form-label">Endereço</label>
                                        <textarea class="form-control" name="endereco" required>${comum.endereco}</textarea>
                                    </div>
                                    
                                    <input type="hidden" value="${comum.user}" name="user" required>                                          
                               		<input type="hidden" value="${comum.senha}" name="senha" required>
                               		
                                    <div class="col-6 pt-4">
                                        <button class="w-100 btn btn-dark" type="submit">Alterar</button>
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
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js" integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $('#telefone').mask('(00) 0 0000-0000');
                $('#cpf').mask('000.000.000-00');
            });
        </script>
</body>
</html>