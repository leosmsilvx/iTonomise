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
</style>
</head>
<body>
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
          </ul>
        </div>
      </nav>

  <div class="container">
    <main>
      <div class="row g-5">
        <div>
          <h4 class="mb-4 py-3">Contrato</h4>
         
          <form action="controller?action=aceitarContrato" method="post">
            <div class="row g-3">
		            <div class="col-6">
		            <c:if test="${contrato.idUsuario != null}">
			          		<a href="controller?action=detalhesUsuario&idUsuario=${contrato.idUsuario}" class="btn btn-dark w-100">Perfil do Usuario</a>
			        </c:if>
			        </div>
			        <div class="col-6">
			        <c:if test="${contrato.idAutonomo != null}">
							<a href="controller?action=detalhesAutonomo&idAutonomo=${contrato.idAutonomo}" class="btn btn-dark w-100">Perfil do Autonomo</a>
							</c:if>
					</div>
              <div class="col-6">
                <label for="titulo" class="form-label">Título</label>
                                 <input type="text" class="form-control" value="${contrato.titulo}" disabled>
              </div>
              <div class="col-6">
                <label for="valor" class="form-label">Valor do serviço</label>
                <div class="input-group">
                  <span class="input-group-text">R$</span> <input type="text"
                    class="form-control" value="${contrato.valor}" disabled>
                </div>

              </div>
              <div class="col-6">
                <label for="titulo" class="form-label">Data de Início</label>
                                 <input type="text" class="form-control" value="${contrato.dataInicio}" disabled>
              </div>
              

              <div class="col-6">
                 <label for="titulo" class="form-label">Duração</label>

                <div class="input-group">

                  <input type="text" class="form-control" value="${contrato.duracaoN} ${contrato.duracaoT}" disabled>
                </div>

              </div>

              <div class="col-12">
                <label for="titulo" class="form-label">Localização</label>
                                 <input type="text" class="form-control" value="${contrato.localizacao }" disabled>
              </div>

              <div class="col-12">
                                <label for="descricao" class="form-label">Descrição do contrato</label>
                                <textarea class="form-control"  rows="7" name="descricao" disabled>${contrato.descricao}</textarea>
                            </div>

                            <c:if test="${contrato.idUsuario == null and usuario == 'comum'}">
							  <c:if test="${contrato.idAutonomo != null}">
								  <input type="hidden" class="form-control" name="idAutonomo" value="${contrato.idAutonomo}">
							  </c:if>							  
							  <input type="hidden" class="form-control" name="tipoCriador" value="${contrato.tipoCriador}">
							  <input type="hidden" class="form-control" name="duracaoN" value="${contrato.duracaoN}">
							  <input type="hidden" class="form-control" name="duracaoT" value="${contrato.duracaoT}"> 	  
							  <input type="hidden" class="form-control" name="idContrato" value="${contrato.idContrato}">
							  <input type="hidden" class="form-control" name="titulo" value="${contrato.titulo}">  
							  <input type="hidden" class="form-control" name="valor" value="${contrato.valor}">  
							  <input type="hidden" class="form-control" name="dataInicio" value="${contrato.dataInicio}">  
							  <input type="hidden" class="form-control" name="localizacao" value="${contrato.localizacao}">  
							  <input type="hidden" class="form-control" name="descricao" value="${contrato.descricao}">  
                            	<div class="col-12 py-2" style="padding: 30%">
			  						<button type="submit" class="btn btn-dark w-100">Aceitar</button>
			  					</div>
		  					</c:if>
		  					<c:if test="${contrato.idAutonomo == null and usuario == 'autonomo'}">
		  					<c:if test="${contrato.idUsuario != null}">
								  <input type="hidden" class="form-control" name="idUsuario" value="${contrato.idUsuario}">s
							  </c:if>
							  <input type="hidden" class="form-control" name="tipoCriador" value="${contrato.tipoCriador}">
							  <input type="hidden" class="form-control" name="duracaoN" value="${contrato.duracaoN}">
							  <input type="hidden" class="form-control" name="duracaoT" value="${contrato.duracaoT}"> 	  
							  <input type="hidden" class="form-control" name="idContrato" value="${contrato.idContrato}">
							  <input type="hidden" class="form-control" name="titulo" value="${contrato.titulo}">  
							  <input type="hidden" class="form-control" name="valor" value="${contrato.valor}">  
							  <input type="hidden" class="form-control" name="dataInicio" value="${contrato.dataInicio}">  
							  <input type="hidden" class="form-control" name="localizacao" value="${contrato.localizacao}">  
							  <input type="hidden" class="form-control" name="descricao" value="${contrato.descricao}"> 
                            	<div class="col-12 py-2" style="padding: 30%">
			  					<button type="submit" class="btn btn-dark w-100">Aceitar</button>
			  					</div>
		  					</c:if>
		  					<c:if test="${contrato.idAutonomo != null and contrato.idUsuario != null and contrato.status == 1 and contrato.tipoCriador != usuario}">
		  						<input type="hidden" class="form-control" name="tipoCriador" value="${contrato.tipoCriador}">
		  						<input type="hidden" class="form-control" name="idUsuario" value="${contrato.idUsuario}">
		  						<input type="hidden" class="form-control" name="idAutonomo" value="${contrato.idAutonomo}">
		  						<input type="hidden" class="form-control" name="duracaoN" value="${contrato.duracaoN}">
							  	<input type="hidden" class="form-control" name="duracaoT" value="${contrato.duracaoT}"> 	  
							 	<input type="hidden" class="form-control" name="idContrato" value="${contrato.idContrato}">
							 	<input type="hidden" class="form-control" name="titulo" value="${contrato.titulo}">  
							 	<input type="hidden" class="form-control" name="valor" value="${contrato.valor}">  
							 	<input type="hidden" class="form-control" name="dataInicio" value="${contrato.dataInicio}">  
							 	<input type="hidden" class="form-control" name="localizacao" value="${contrato.localizacao}">  
							 	<input type="hidden" class="form-control" name="descricao" value="${contrato.descricao}"> 
			  					<div class="col-12 py-2" style="padding: 30%">
			  						<button type="submit" class="btn btn-dark w-100">Aceitar</button>
			  					</div>
		  					</c:if>
                           </div>                           
                           <div class="col-12 py-4" style="padding: 30%">
                              <a href="controller?action=home" class="btn btn-dark w-100">Home</a>
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
  
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>
</body>
</html>