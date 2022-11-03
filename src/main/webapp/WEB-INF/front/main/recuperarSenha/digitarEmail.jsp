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
					<ul class="nav" style="margin-right: 30px; margin-top: 5px">
						<li class="nav-item"><a href="controller?action=login" class="nav-link px-2 text-muted text-center"><button class="w-1 btn btn-light" type="submit">Login</button></a></li>			
					</ul>
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
								<form action="controller?action=recuperarSenha" method="post">
									<input class="text-center border border-secondary rounded-3 form-control-lg w-100" type="email" name="email" placeholder="iTonomise@exemplo.com" required>
									<div style="padding-top: 1%;">
										<div style="padding-top: 3%;">
											<button type="submit" class="btn btn-dark">Enviar</button>			
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
        </body>
</html>