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
								
					<div class="py-4">
						<h4 class="text-start px-4">Verifique seu e-mail!</h4>
					</div>
					<div>
						<p class="text-start px-4">Acesse o seu e-mail, copie e cole o código de redefinição de senha que enviamos.<br>
							Pode levar alguns minutos para aparecer em sua caixa de entrada.<br>Não se esqueça de verificar as pastas de spam e promoções, por garantia!</p>
					</div>
					<div class="py-2">
						<p class="text-center text-danger px-4" style="font-size: larger; font-weight: bolder;">${mensagemCodigo}</p>
					</div>
					<div class="px-4">
						<h5 class="text-center">Digite o código aqui</h5>
					</div>
					<div class="py-3 row">
						<div style="padding-left: 20%; padding-right: 20%;">
								<form action="controller?action=conferirCodigoSenha" method="post">
									<input class="text-center border border-secondary rounded-3 form-control-lg w-100" type="text" maxlength="6" name="codigo" required>
									<div style="padding-top: 1%;">
										<div>											
											<button id="reenviaCodigo" onClick="bloqueiaReenvio()" style="background-color: white; border: 0;">Reenviar código?</button>
											<div class="text-center" id="textoEspera">
												<a class="text-decoration-none text-warning" style="font-size: 0.9em;">Aguarde um pouco antes de pedir um novo código...</a>		
											</div>						
										</div>
										<div style="padding-top: 3%;">
											<button type="submit" class="btn btn-dark">Conferir</button>			
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
				bloqueioInicial();
				function bloqueioInicial(){
					document.getElementById("reenviaCodigo").disabled = true;
					document.getElementById("textoEspera").style.display = "block";
					setTimeout (function(){
                        document.getElementById("reenviaCodigo").disabled = false;
						document.getElementById("textoEspera").style.display = "none";
                     },10000);
				}

                function bloqueiaReenvio(){	
					document.getElementById("reenviaCodigo").disabled = true;
					document.getElementById("textoEspera").style.display = "block";
					window.location.href = "controller?action=reenviarCodigo"
					setTimeout (function(){
                        document.getElementById("reenviaCodigo").disabled = false;
						document.getElementById("textoEspera").style.display = "none"	;
                     },30000);
                }
                </script>

        </body>
</html>