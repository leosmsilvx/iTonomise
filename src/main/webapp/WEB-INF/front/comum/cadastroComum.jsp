<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
						<a class="btn" style="text-decoration: none; color: black;" href="controller?action=pagCadAuto">Seja um Autônomo</a>
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
		<main>
			<div class="row g-5">
				<div>
					<h5 class="text-danger text-center py-3"> ${msgErroCad} </h5>
					<h4 class="mb-4 py-4">Cadastro Usuário</h4>
					<form action="controller?action=cadastrarComum" method="post" enctype="multipart/form-data">						
						<div class="row g-3">
							<div class="col-sm-6">
								<label for="nome" class="form-label">Primeiro
									Nome</label> <input type="text" class="form-control"
									name="nome" placeholder="Nome" required>
							</div>

							<div class="col-6">
								<label for="sobrenome" class="form-label">Sobrenome</label> <input
									type="text" class="form-control" name="sobrenome"
									placeholder="Sobrenome" required>
							</div>

							<div class="col-6">
								<label for="cpf" class="form-label">CPF <span
									class="text-muted">(Somente números)</span></label> <input
									type="text" class="form-control" name="cpf" id="cpf"
									placeholder="xxx.xxx.xxx-xx" pattern=".{14,14}" required>
							</div>

							<div class="col-6">
								<label for="tel" class="form-label">Telefone <span
									class="text-muted">(Somente números)</span></label> <input
									type="tel" class="form-control" name="tel" id="telefone"
									placeholder="(xx)xxxxx-xxxx"  pattern=".{16,16}" required>
							</div>

							<div class="col-8">
								<label for="user" class="form-label">Usuário</label>
								<div class="input-group">
									<span class="input-group-text">@</span> <input type="text"
										class="form-control" name="user" placeholder="Usúario" required>
								</div>
							</div>

							<div class="col-4">
								<label for="senha" class="form-label">Senha</label>
								<div class="input-group">
									<input type="password" class="form-control" name="senha" id="senha" placeholder="*******" required>
									<button class="btn btn-outline-dark" type="button" onclick="mostrarSenha()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
										  <path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"></path>
										  <path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"></path>
										  <path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"></path></svg>
									</button>
								</div>
							</div>

							<div class="col-8">
								<label for="email" class="form-label">Email</label> <input
									type="email" class="form-control" name="email"
									placeholder="iTonomise@exemplo.com" required>
							</div>
							<div class="col-4">
				                <label for="foto" class="form-label">Foto</label> <input
				                  type="file" class="form-control" name="nomeImg" required>
				              </div>
							
							<div class="col-12">
								<label for="endereco" class="form-label">Endereço</label>
								<textarea class="form-control" name="endereco"
									placeholder="Rua Bonita - nº 691 - Bairro legal - Divinópolis" required></textarea>
							</div>

							<hr class="my-4">
							<button class="w-100 btn btn-dark btn-lg" type="submit">Cadastrar</button>
					</form>
				</div>
			</div>
		</main>

		<!--footer-->
	<div class="py-5">
		<footer class="mt-auto">
			<div class="container">
				<a href="controller?action=index" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>
			</div>
		</footer>
	</div>
	</div>
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