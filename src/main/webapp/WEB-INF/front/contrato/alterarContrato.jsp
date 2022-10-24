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
<title>Contrato de Serviço</title>
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
  background-color: #EEEEEE;
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

.container {
  max-width: 70%;
}
@media only screen and  ( max-width : 600px) {
  .container{
    max-width: 90%;
  }
}
.form-control:focus {
        border-color: #212529;
        box-shadow: 0 0 0 0.2rem rgba(33, 37, 41, 0.2);
} 
.form-check-input:focus {
        border-color: #212529;
        box-shadow: 0 0 0 0.2rem rgba(33, 37, 41, 0.2);
} 
.form-select:focus {
        border-color: #212529;
        box-shadow: 0 0 0 0.2rem rgba(33, 37, 41, 0.2);
} 
</style>
</head>
<body onload="checkNull()">
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
          <h4 class="mb-4 py-3">Alterar Contrato</h4>
          <form action="controller?action=atualizarContrato" method="post">
            <div class="row g-3">
              <div class="col-6">
                <label for="titulo" class="form-label">Título</label>
                                 <input type="text" class="form-control" name="titulo" value="${contrato.titulo}" required>
              </div>
              <div class="col-6">
                <label for="valor" class="form-label">Valor do serviço</label>
                <div class="input-group">
                  <span class="input-group-text">R$</span> <input id="input-valor" type="number"
                    class="form-control" required name="valor" min="0" step="any" value="${contrato.valor}">
                </div>
                <div class="form-check">
					  <input class="form-check-input" type="checkbox" id="checkValor" onclick="disableInput()">
				  		<label class="form-check-label" for="checkValor">
				   		 A combinar
				  		</label>
				</div>
              </div>
              <div class="col-6">
                <label for="titulo" class="form-label">Data de Início</label>
                                 <input type="date" id="input-data" class="form-control" name="dataInicio" value="${contrato.dataInicio}" required>
                                 
                <div class="form-check">
					  <input class="form-check-input" type="checkbox" id="checkData" onclick="disableInput()">
				  		<label class="form-check-label" for="checkData">
				   		 A combinar
				  		</label>
				</div>
              </div>
              

              <div class="col-6">
                 <label for="titulo" class="form-label">Duração</label>

                <div class="input-group">


                    <span>
                    <select class="form-select" id="input-numeroT" name="duracaoT" style="border-radius: 6px 0px 0px 6px;" required>
                                  <option selected value="${contrato.duracaoT}">${contrato.duracaoT}</option>                                  
                                  <option value="Horas">Horas</option>
                                  <option value="Dias">Dias</option>
                                  <option value="Semanas">Semanas</option>
                                  <option value="Meses">Meses</option>

                    </select>
                    </span>

                  <input type="number" class="form-control" name="duracaoN" id="input-numeroN" value="${contrato.duracaoN}" required>
                </div>
                <div class="form-check">
					  <input class="form-check-input" type="checkbox" id="checkNumero" onclick="disableInput()">
				  		<label class="form-check-label" for="checkNumero">
				   		 Não definido
				  		</label>
				</div>
              </div>
              
              <input type="hidden" class="form-control" name="idContrato" value="${contrato.idContrato}">
              <input type="hidden" class="form-control" name="tipoCriador" value="${contrato.tipoCriador}">

              <div class="col-11">
                <label for="Localizacao" class="form-label">Localização</label>
                				<input type="hidden" name="realLocalizacao" id="realLocalizacao" value="${localizacaoPerfil}">
	                            <input type="text" class="form-control" name="localizacao" id="localizacao" placeholder="Localização" value="${contrato.localizacao}" required>
              </div>
              <div class="col-1">
              	<label for="casinha" class="form-label">&ensp;</label><br>
              	<button class="btn btn-dark" type="button" onclick="pegarLocalizacao()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"></path>
				  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"></path>
				</svg>
				</button>
              </div>

              <div class="col-12">
                                <label for="descricao" class="form-label">Descrição do contrato</label>
                                <textarea class="form-control" name="descricao" rows="7" required>${contrato.descricao}</textarea>
                            </div>
                           <div class="col-4">
                              <button class="w-100 btn btn-dark" type="submit">Alterar</button>
                           </div>
                           <div class="col-4 pb-4">
                          		<a href="controller?action=removerContrato&idContrato=${contrato.idContrato}" class="btn btn-danger w-100">Excluir contrato</a>	
                           </div>
                           <div class="col-4 pb-4">
                          		<a class="btn btn-dark w-100" onclick="history.back()">Voltar</a>	
                           </div>
          </div>
        </form>
        </div>
      </div>
    </main>

  <div>
    <footer class="mt-auto">
      <div class="container">
        <a href="controller?action=home" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>
      </div>
    </footer>
  </div>
  </div>
  <script type="text/javascript">
  		checkNull();
  		disableInput();
  		function disableInput(){
  			var checkBoxNumero = document.getElementById("checkNumero");
  			var checkBoxData = document.getElementById("checkData");
  			var checkBoxValor = document.getElementById("checkValor");
  			if (checkBoxNumero.checked == true){
  				document.getElementById("input-numeroT").disabled = true;
  				document.getElementById("input-numeroN").disabled = true;
  			} else {
  				document.getElementById("input-numeroT").disabled = false;
  				document.getElementById("input-numeroN").disabled = false;
  			}
  			
  			if (checkBoxData.checked == true){
  				document.getElementById("input-data").disabled = true;
  			} else {
  				document.getElementById("input-data").disabled = false;
  			}  			
  			
  			if (checkBoxValor.checked == true){
  				document.getElementById("input-valor").disabled = true;
  			} else {
  				document.getElementById("input-valor").disabled = false;
  			}
  			
  			
  		}
  		function pegarLocalizacao(){
  			document.getElementById("localizacao").value = document.getElementById("realLocalizacao").value;;
  		}
  		
  		function checkNull(){
  			if(document.getElementById("input-valor").value.length == 0){
  	  			document.getElementById("checkValor").checked = true;
  			}
  			if(document.getElementById("input-data").value.length == 0){
  				document.getElementById("checkData").checked = true;	
  			}
  			if(document.getElementById("input-numeroT").value.length == 0){
  	  			document.getElementById("checkNumero").checked = true;	
  			}
  		}
  </script>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>
</body>
</html>