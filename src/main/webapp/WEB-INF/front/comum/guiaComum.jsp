<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <meta charset="utf-8">
        <title>Guia do Contratante</title>
        <style>
            .bd-placeholder-img {
              font-size: 1.125rem;
              text-anchor: middle;
              -webkit-user-select: none;
              -moz-user-select: none;
              user-select: none;
            }
      
            @media (min-width: 768px) {
              .bd-placeholder-img-lg {
                font-size: 3.5rem;
              }
            }
      
            .b-example-divider {
              height: 3rem;
              background-color: rgba(0, 0, 0, .1);
              border: solid rgba(0, 0, 0, .15);
              border-width: 1px 0;
              box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
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

          </style>
    </head>
    <body>
      <div class="cover-container d-flex w-100 h-100 mx-auto flex-column">
		<!-- Header -->
		<nav class="py-2 bg-dark border-bottom">
			<div class="d-flex flex-wrap">
				<ul class="nav me-auto">
					<li class="nav-item"><div Style="background-color: #212529; margin-left: 30px; padding: 0px; height: 50px;">
        				<a href="controller?action=index"><img src="https://media.discordapp.net/attachments/911394611300270122/1021930948771721236/maleta2.0.png" height="40px" width="40px" style="margin-bottom: 20px;"></a>
        				<a href="controller?action=index" style="color: white; font-size: 25px; text-decoration: none; margin-left: 5px"> iTonomise</a>
						</div></li>
				</ul>
				<ul class="nav" style="margin-right: 30px; margin-top: 5px">
					<li class="nav-item"><a href="controller?action=guiaAuto"
						class="nav-link text-white px-2">Autônomos</a></li>
					<li class="nav-item"><a href="controller?action=guiaComum"
						class="nav-link text-white px-2">Serviços</a></li>
					<li class="nav-item"><a href="controller?action=sobreN"
						class="nav-link text-white px-2">Sobre</a></li>
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
        </svg>


        <div class="container px-4 py-5" id="featured-3">
            <div class="row row-cols-1 row-cols-lg-2">
                <div class="feature col" style="padding-top: 3em;">
                    <div>
                        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-white fs-2" style="border-radius: 6px; background-color: #212529;">
                            <svg class="bi" width="40px" height="40px"><use xlink:href="#servicos"></use></svg>
                          </div><a style="font-size: 2em;
                          margin-left: 0.5em;
                          font-weight: bold;">Nossos serviços</a>
                          <p style="font-size: 1.5em">Esta é a sua área, autônomo! Aqui você encontrará um guia para ofertar seus serviços em nosso site, bem como dicas para tornar seu perfil mais atrativo aos seus clientes. Sinta-se à vontade nos contando suas experiências passadas, sua preferência em atuação, entre outros!</p>
                          <a href="controller?action=pagCadComum" class="icon-link d-inline-flex align-items-center" style="font-size: 1em">
                            Se cadastre agora
                            <svg class="bi" width="1em" height="1em"><use xlink:href="#seta"></use></svg>
                          </a>

                    </div>
                </div>
                <div class="feature col">
                    <img src="https://media.discordapp.net/attachments/978088524526018570/1022834620884066374/ilustracao-em-vetor-conceito-abstrato-trabalho-freelancer-trabalho-remoto-trabalho-remoto-plataforma-freelance-on-line-autonomo-disponivel-para-contratacao-de-especialista-web-independente-metafora-abstrata_335657-6118.jpg?width=586&height=586">
                </div>
            </div>
        </div class="py-2">
		<footer class="mt-auto">
			<div class="container">
				<ul class="nav justify-content-center border-bottom pb-3 mb-3">
					<li class="nav-item"><a href="controller?action=guiaAuto"
						class="nav-link px-2 text-muted">Autônomos</a></li>
					<li class="nav-item"><a href="controller?action=guiaComum"
						class="nav-link px-2 text-muted">Serviços</a></li>
					<li class="nav-item"><a href="controller?action=sobreN"
						class="nav-link px-2 text-muted">Sobre</a></li>
				</ul>
				<a href="controller?action=index" class="nav-link text-white px-2"><p class="text-center text-muted">© 2022 iTonomise</p></a>
			</div>
		</footer>
	</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body> 
</html>