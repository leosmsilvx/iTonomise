<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<style>
.container{
	max-width: 40%;
}
@media only screen and  ( max-width : 600px) {
	.container{
		max-width: 80%;
	}
}
</style>
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
									</a>
								</div>
								
							</div>
						</li>
					</ul>
				</div>


				<!-- OFFCANVAS -->
				<div class="offcanvas offcanvas-end" tabindex="-1" id="barraLateral">
					<div class="offcanvas-header">
					  <h5 class="offcanvas-title">iTonomise</h5>
					  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
					  <a class="text-muted text-decoration-none">Início</a>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=index">Retornar ao início</a>
					  </div>
					  <hr>
					  <div>
					  <a class="text-muted text-decoration-none">Não é usuário do nosso site?</a>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=pagCadAuto">Seja um Autonomo</a>
					  </div>
					  <div class="py-1 pl-3">
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=pagCadComum">Seja um Contratante</a>
					  </div>
					  <hr>
					  <a class="text-muted text-decoration-none">Já é usuário?</a>
					  <div class="py-1">
						<a class="btn" style="text-decoration: none; color: green;" href="controller?action=login">Fazer login</a>						
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=pagRecuperarSenha">Esqueci a senha</a>
					  </div>

					</div>
				  </div>
			</nav>
			<div class="container">
				<div class="caixinha mt-5 bg-white border border-secondary rounded-3">	
								
					<div class="pt-4">
						<h4 class="text-start px-4">Recuperação de senha iTonomise</h4>
					</div>
					<div>
						<p class="text-start px-4">Digite seu email para que possamos enviar-lhe um código de recuperação.
					</div>	
					<div class="py-2">
						<p class="text-center text-danger px-4" style="font-size: larger; font-weight: bolder;">${mensagemEmail}</p>
					</div>				
					<div class="py-3 row">
						<div style="padding-left: 10%; padding-right: 10%;">
								<form action="controller?action=recuperarSenha" method="post" id="formulario">
									<input class="text-center border border-secondary rounded-3 form-control-lg w-100" type="email" name="email" placeholder="iTonomise@exemplo.com" required>
									<div style="padding-top: 1%;">
										<div style="padding-top: 3%;">
											<button type="button" class="btn btn-dark" id="botaoEnvia" onClick="bloquearBotao()" >Enviar</button>			
										</div>							
									</div>
								</form>
							
						</div>
					</div>
					<div class="px-4 pb-3">
						
					</div>	
				</div>		
			</div>	
            <div class="py-5">
                <footer class="mt-auto">
                    <div class="container">
                        <a href="controller?action=index" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>
        <script>
        function bloquearBotao(){
        	var botao = document.getElementById("botaoEnvia");
        	var form = document.getElementById("formulario");     	
        	botao.disabled = true; 
        	form.submit();
        }
        </script>
        </body>
</html>