<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	max-width: 95%;
}
</style>
</head>
<body>
	<div>
		<!-- Header -->
		<nav class="py-2 bg-dark border-bottom">
			<div class="d-flex flex-wrap">
				<ul class="nav me-auto">
					<li class="nav-item"><div Style="background-color: #212529; margin-left: 30px; padding: 0px; height: 50px;">
        				<a href="controller?action=index"><img src="/iTonomise/imgs/itonomise.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
        				<a href="controller?action=index" style="color: white; font-size: 25px; text-decoration: none; margin-left: 5px"> iTonomise</a>
						</div></li>
				</ul>
				<ul class="nav" style="margin-right: 30px; margin-top: 5px">
					<li class="nav-item"><a href="controller?action=login" class="nav-link px-2 text-muted text-center"><button class="w-1 btn btn-light" type="submit">Login</button></a></li>			
				</ul>
			</div>
		</nav>

				<!-- Features -->
		<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
            <symbol id="servicos" viewBox="-2 -2 20 20">
                <path d="M4 16s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H4Zm4-5.95a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                <path d="M2 1a2 2 0 0 0-2 2v9.5A1.5 1.5 0 0 0 1.5 14h.653a5.373 5.373 0 0 1 1.066-2H1V3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v9h-2.219c.554.654.89 1.373 1.066 2h.653a1.5 1.5 0 0 0 1.5-1.5V3a2 2 0 0 0-2-2H2Z"/>
            </symbol>
            <symbol id="seta" viewBox="-2 0 16 16">
                <path fill-rule="evenodd"
				d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"></path>
            </symbol>
            <symbol id="autonomo" viewBox="-2 -2 20 20">
                <path d="M10 9.05a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                <path d="M2 1a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2H2ZM1 3a1 1 0 0 1 1-1h2v2H1V3Zm4 10V2h9a1 1 0 0 1 1 1v9c0 .285-.12.543-.31.725C14.15 11.494 12.822 10 10 10c-3.037 0-4.345 1.73-4.798 3H5Zm-4-2h3v2H2a1 1 0 0 1-1-1v-1Zm3-1H1V8h3v2Zm0-3H1V5h3v2Z"/>
            </symbol>
            <symbol id="sobre" viewBox="-2 -2 20 20">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
            </symbol>
        </svg>


		<div class="container position-relative" id="featured-3">
			<div id="carouselExampleCaptions" class="carousel carousel-dark slide rounded-5" style="width: 100%;margin-top: 2%; background-color: white;" data-bs-ride="false">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner w-50" style="margin-left: 25%;">
                  <div class="carousel-item active">
                    <a href="#nossosservicos" style="text-decoration: none; color: black;">
                    <h3 class="text-center pt-5">Sou contratante</h3>
                    <img src="/iTonomise/imgs/contrato.jpg" class="d-block w-100" style="margin-bottom: 30%;">
                    <div class="carousel-caption d-none d-md-block">                      
                      <p style="text-align: justify; text-justify: inter-word;">iTonomise oferece serviços autônomos diversos, baseados no perfil de quem nos contata. Sua pia entupiu? Precisa pintar uma parede? Sua casa está precisando de uma faxina? Nós sabemos o trabalhador certo para lhe indicar! iTonomise é simples e dinâmico, para combinar com a sua rotina.</p>
                    </div>
                    </a>
                  </div>
                  <div class="carousel-item">
                    <a href="#souautonomo" style="text-decoration: none; color: black;">
                    <h3 class="text-center pt-5">Sou autônomo</h3>
                    <img src="/iTonomise/imgs/autonomo.jpg" class="d-block w-100" style="margin-bottom: 30%;">
                    <div class="carousel-caption d-none d-md-block">                      
                      <p style="text-align: justify; text-justify: inter-word;">Esta é a sua área, autônomo! Aqui você encontrará um guia para ofertar seus serviços em nosso site, bem como dicas para tornar seu perfil mais atrativo aos seus clientes; Logo após será redirecionado para o cadastro, sinta-se à vontade nos contando suas experiências passadas, sua preferencia em atuação, entre outros!</p>
                    </div>
                    </a>
                  </div>
                  <div class="carousel-item">
                    <a href="#sobrenos" style="text-decoration: none; color: black;">
                    <h3 class="text-center pt-5">Sobre iTonomise</h3>
                    <img src="/iTonomise/imgs/painel.jpg" class="d-block w-100" style="margin-bottom: 30%;">
                    <div class="carousel-caption d-none d-md-block">                      
                      <p style="text-align: justify; text-justify: inter-word;">A iTonomise é uma plataforma que facilita o acesso à informação entre autônomo e contratante, visando sempre manter o mercado em movimento. Sua ideia surgiu ao longo de diversas pesquisas sobre o impacto da pandemia na vida dos trabalhadores autônomos, visando ajudar estes trabalhadores a iTonomise foi criada!</p>
                    </div>
                    </a>
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
         </div>
		<h1 style="font-size: 2em; font-weight: bold;" class="pt-4 pb-1 text-center">Cadastre-se agora!</h1>
        <div class="container px-4" id="nossosservicos" style="text-align: justify; text-justify: inter-word;">
            <div class="row row-cols-1 row-cols-lg-2">
                <div class="feature col" style="padding-top: 5em;">
                    <div>
                    
                        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-white fs-2" style="border-radius: 6px; background-color: #212529;">
                            <svg class="bi" width="40px" height="40px"><use xlink:href="#servicos"></use></svg>
                          </div><a style="font-size: 2em;
                          margin-left: 0.5em;
                          font-weight: bold;" id="cadastro">Olá contratante!</a>
                          <p style="font-size: 1.5em">Clique no link abaixo para ser redirecionado à nossa página de cadastro ou login. Desfrute dos serviços ofertados pelos trabalhadores autonomos de sua região, oferecidos pelo nosso site!</p>
                          <a id="souautonomo" href="controller?action=pagCadComum" class="btn btn-dark icon-link d-inline-flex align-items-center" style="font-size: 1em; text-decoration: none;">
                            Cadastre-se agora
                          </a>
                          <a id="souautonomo" href="controller?action=login" class="btn btn-dark icon-link d-inline-flex align-items-center" style="font-size: 1em; text-decoration: none;">
                            Fazer login
                          </a>

                    </div>
                </div>
                <div class="feature col">
                    <img style="padding-top: 4em;" src="/iTonomise/imgs/mulher.png">
                </div>
            </div>
            
            <div class="px-4 py-5" >
	            <div class="row row-cols-1 row-cols-lg-2">
	            	<div class="feature col">
                    	<img src="/iTonomise/imgs/homens.png" width="100%" height="90%">
                	</div>
	                <div class="feature col" style="padding-top: 2em;">
	                    <div style="text-align: right;">
	                        <a style="font-size: 2em;
	                          margin-right: 0.5em;
	                          font-weight: bold;">Olá autônomo!</a>
	                          <div class="feature-icon d-inline-flex align-items-center justify-content-center text-white fs-2" style="border-radius: 6px; background-color: #212529;">
	                            <svg class="bi" width="40px" height="40px"><use xlink:href="#autonomo"></use></svg>
	                          </div>
	                          <p style="font-size: 1.5em; text-align: justify; text-justify: inter-word;">Clique no link abaixo para ser redirecionado à nossa página de cadastro ou login. Faça parte da nossa equipe de trabalhadores autônomos, oferecendo seus serviços pelo nosso site!</p>
	                          <a href="controller?action=login" class="btn btn-dark icon-link d-inline-flex align-items-center" style="font-size: 1em; text-decoration: none;">
	                            Fazer login
	                          </a>
	                          <a href="controller?action=pagCadAuto" class="btn btn-dark icon-link d-inline-flex align-items-center" style="font-size: 1em; text-decoration: none;">
	                            Cadastre-se agora
	                          </a>
	                           
	
	                    	</div>
	                	</div>
	              </div>
	              

        <div class="px-4 py-5" id="sobrenos" >
            <div class="row row-cols-1 row-cols-lg-2">
                <div class="feature col" style="padding-top: 3em;">
                    <div>
                        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-white fs-2" style="border-radius: 6px; background-color: #212529;">
                            <svg class="bi" width="40px" height="40px"><use xlink:href="#sobre"></use></svg>
                          </div><a style="font-size: 2em;
                          margin-left: 0.5em;
                          font-weight: bold;">Um pouco sobre nós!</a>
						  <p style="font-size: 1.5em">Somos muito mais que um site. Somos um time de jovens estudantes preocupados com os impactos da pandemia no mercado de trabalho. E, como programadores, sabemos a dificuldade de encontrar trabalhos freelancer que não respaldados pela CLT, os famosos "bicos/biscates". Fundada em XX de 2022, a iTonomise começou como um projeto de TCC e se estabeleceu como o site que você está vendo. Nosso objetivo é facilita o acesso à informação entre os clientes, possibilitando que usuários aversos à interfaces complexas se sintam familiarizados.</p>

                    </div>
                </div>
                <div class="feature col">
                    <img src="/iTonomise/imgs/lupa.png">
                </div>
            </div>
            </div>
		</div>
	</div>
	<div>
		<footer class="mt-auto">
			<div class="container">
				<ul class="nav justify-content-center pb-3 mb-3">
					<li class="nav-item">
					<a class="nav-link px-2 text-center" style="font-size: 2em; font-weight: bold; color: #111">Já é usuário?</a>
					<a href="controller?action=login"
						class="nav-link px-2 text-muted text-center"><button class="w-100 btn btn-dark btn-lg" type="submit">Login</button></a></li>
				</ul>
				<a href="controller?action=index" class="nav-link text-white px-2 border-top"><p class="text-center text-muted" style="padding-top: 2em;">© 2022 iTonomise</p></a>	
			</div>
		</footer>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>