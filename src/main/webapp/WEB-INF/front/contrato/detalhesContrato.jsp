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
						<li class="nav-item text-white"><a href="#" class="nav-link" style="text-decoration: none; color: white; ">Meus Contratos</a></li>						
					</ul>
				</div>
			</nav>
    <div class="container">
        <div>
           <table width="100%">
            <td>
              <h4 class="mb-4 py-3">Detalhes do Contrato</h4>
            </td>
             <td>
             	<div class="d-grid py-3">
             		<c:if test="${contrato.idAutonomo == null}">
						<a href="controller?action=detalhesUsuario&idUsuario=${contrato.idUsuario}" class="btn btn-dark">Perfil do contratante</a>
					</c:if>
					<c:if test="${contrato.idUsuario == null}">
						<a href="controller?action=detalhesAutonomo&idAutonomo=${contrato.idAutonomo}" class="btn btn-dark">Perfil do contratante</a>
					</c:if>
				</div>
             </td>
          </table>
            <div class="row g-3 pb-4">

              <div class="col-6">
                <label class="form-label">Título</label>
                <input class="form-control" value="${contrato.titulo}" disabled readonly>
              </div>

              <div class="col-6">
                <label class="form-label">Valor do serviço</label>
                <div class="input-group">
                  <span class="input-group-text">R$</span> 
                  <input type="text" class="form-control" value="${contrato.valor}" disabled readonly>
                </div>
              </div>

              <div class="col-12">
                <label for="descricao" class="form-label">Descrição do contrato</label>
                  <textarea class="form-control" rows="10" disabled >${contrato.descricao}</textarea>


                <table width="100%" style="margin-top: 2%;">
                  <td>
                    <a href="#">
                      <button class="w-100 btn btn-dark " >Aceitar</button>
                    </a>
                  </td>
                  <td>
                    <a href="controller?action=verContratos">
                      <button class="w-100 btn btn-dark " >Voltar</button>
                    </a>
                  </td>
                </table>

              </div>
              
        </div>

        
      </div>
    </main>  
    <footer class="mt-auto border-top border-1">
                    <a href="controller?action=home" class="nav-link text-white px-2"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>
     </footer> 
    </div>

  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>
</body>
</html>