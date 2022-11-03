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
<link rel="stylesheet" href="/iTonomise/css/style.css">
<style>
.container{
	max-width: 40%;
}
</style>
        </head>
        <body>
            <nav class="py-2 bg-dark border-bottom">
                <div class="d-flex flex-wrap">
                    <ul class="nav me-auto">
                        <li class="nav-item"><div Style="background-color: #212529; margin-left: 30px; padding: 0px; height: 50px;">
                            <a href="controller?action=index"><img src="https://media.discordapp.net/attachments/911394611300270122/1021930948771721236/maleta2.0.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
                            <a href="controller?action=index" style="color: white; font-size: 25px; text-decoration: none; margin-left: 5px"> iTonomise</a>
                            </div></li>
                    </ul>
                </div>
            </nav>
			<div class="container">
				<div class="caixinha mt-5 bg-white border border-secondary rounded-3">	
								
					<div class="pt-4">
						<h4 class="text-start px-4">Recuperação de senha iTonomise</h4>
					</div>
					<div>
						<p class="text-start px-4">Digite sua nova senha.
					</div>				
					<div class="py-3 row">
						<div style="padding-left: 10%; padding-right: 10%;">
								<form action="controller?action=recuperarNovaSenha" method="post">
									<label >Nova senha</label>
									<div class="py-2 input-group">										
										<input class="text-center border border-secondary form-control" type="password" name="senha" id="senha" placeholder="Nova senha" required>
										<button class="btn btn-outline-dark" type="button" onclick="mostrarSenha()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
											<path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"></path>
											<path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"></path>
											<path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"></path></svg>
										</button>
									</div>
									<div style="padding-top: 2%;">
										<button type="submit" class="btn btn-dark">Alterar</button>										
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
		function mostrarSenha() {
			var senha = document.getElementById("senha");
			if (senha.type === "password") {
			senha.type = "text";
			} else {
			senha.type = "password";
			}
		}
		</script>
        </body>
</html>