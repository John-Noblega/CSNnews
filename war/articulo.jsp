<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8">		
		<title>titulo del articulo</title>
		<link rel="stylesheet" href="styles/style.css" type="text/css" />
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="//www.google.com/jsapi?key=AIzaSyA5m1Nc8ws2BbmPRwKu5gFradvD_hgq6G0" type="text/javascript"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js" type="text/javascript"></script>
		<script src="/JavaScript/LoadFeed.js" type="text/javascript"></script>
		<script src="/JavaScript/FindFeeds.js" type="text/javascript"></script>
		<script type="text/javascript">
			google.load("feeds", "1"); //Cargamos Google Ajax Feed API (version 1)*MUY NECESARIO
		</script>		
    	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	    <!--  librerias basicas para mejorar vista falta editarlas inicio-->
	    <!-- <link href="/styles/bootstrap.css" rel="stylesheet" type="text/css" media="all">  -->
    	 <!-- <link href="/styles/bootstrap-responsive.css" rel="stylesheet" media="all">  -->
    	<!-- <script src="/JavaScript/jquery.min.js" type="text/javascript"></script> -->
		<!-- <script src="/JavaScript/bootstrap.js"></script>	-->
		<!--  librerias basicas para mejorar vista falta editarlas fin-->
	</head>
	<body>
	<div class="body">	
		<div class="contenedor_superior">
		        <div id="logo">		   	 
 		         	<h1>CSN</h1>
            		<p>Computer Science News</p>
			    </div>
			    <header id="mainheader">        
					<figure>
						<img class="logo" src="imagenes/logo_CSNnews.jpg" alt="Logo de CSNnews" />
					</figure>
				</header>
			<div class="contenedor_menu">
				<!--  <button type="button" class="btn btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button> -->
				<nav id="mainnav">
	        	<ul>
	            	<li><a href="index.jsp" title="Inicio">Inicio</a></li>
	            	<li><a href="/login.jsp" title="Ingresar">Ingresar</a>
	            	<li><a href="/registro.jsp" title="Registrarse">Registrarse</a>	            	
	            	<li><a href="/perfil.jsp" title="Registrarse">Mi Perfil</a>
				</ul>
	        	</nav>
			</div>
			<div class="contenedor_buscador">
				<!-- aqui insertar formulario y codigo del buscador -->
				<form id="searchform" action="#" method="post">
					
					<input id="searchtext" class="search" type="search" name="search" required>
					<input id="searchbtn" class="boton" value="search" type="button" name="buscar">
					
				</form>
			</div>			
		</div>   
		<section class="contenedor">
		
			<!-- barra izquierda -->
			<div class="leftcontent">
				<aside>
				<header>
					<h5>DIARIOS</h5>
				</header>
				<nav id="leftnav">
					<ul class="leftmenu">
						<li class="item1"><a href="#">El Comercio<span>3</span></a>
						<ul>
							<li class="subitem1"><a href="#">Politica<span>6</span></a></li>
							<li class="subitem2"><a href="#">Ciencias<span>6</span></a></li>
							<li class="subitem3"><a href="#">Deportes<span>6</span></a></li>
							<li class="subitem3"><a href="#">Tecnología<span>6</span></a></li>
						</ul></li>
						<li class="item2"><a href="#">EL Pueblo<span>0</span></a></li>
						<li class="item3"><a href="#">El Correo<span>340</span></a>
						<ul>
							<li class="subitem1"><a href="#">Politica<span>6</span></a></li>
							<li class="subitem2"><a href="#">Deportes<span>6</span></a></li>
							<li class="subitem3"><a href="#">Economia<span>6</span></a></li>
						</ul></li>
						<li class="item4"><a href="#">El Pais<span>340</span></a></li>
						<li class="item5"><a href="#">CNN<span>340</span></a></li>
					</ul>
				</nav>
				</aside>				
			</div>
		
			<!-- contenido central -->			
			<section class="maincontent">
				<section class="content">					
					<div id="feeddiv">Loading...</div>						
						<!-- Llamamos al archivo LoadFeed.js para cargar las noticias -->
						<script type="text/javascript">
							<%@ include file="/JavaScript/LoadFeed.js" %>
						</script>
						<!-- Llamamos al archivo FindFeed.js para buscar las noticias -->
						<script type="text/javascript">
							<%@ include file="/JavaScript/FindFeeds.js" %>
						</script>
						<!-- Llamamos al archivo SeleccionCategoria.js para mostrar  categorias -->
						<script type="text/javascript">
							<%@ include file="/JavaScript/SeleccionCategoria.js" %>
						</script>
					<section class="article_content">	
					<article>
						<header class="header_article">
							<hgroup>
								<h1></h1>
								<h2></h2>
							</hgroup>
						</header>
						<p><a href="#" class="article_link"></a></p>
						<figure>					
							<img src="" alt="" title="" class="content_img"/>
						</figure>
						<footer class="footer_article">
							<p></p>
						</footer>
					</article>
					</section>
				
				</section>
				<section id="coment">
					<!-- Aqui van los comentarios  -->
				</section>
			</section>	
			
			<!-- barra derecha -->
			<div class="rightcontent">
				<aside >
					<h1>Destacados</h1>
					<div id="destacadas">Loading...</div>						
						<!-- Llamamos al archivo Loaddestacadas.js para cargar las noticias -->
						
				</aside>
				<select id="seleccion_cat">
					<option value ="correo">Correo</option>
					<option value ="Otro diario">Otro diario</option>
				</select>
				<div id="categoriasdiv">  Categorias... </div>
			
				<aside >
					<figure>
						<img class="img_banner" src="imagenes/logo_CSNnews.jpg" alt="Logo de CSNnews" />
					</figure>
				</aside>
			</div>
			
		</section>
				<div id="contenedore">
			<footer id="mainfooter">
				<p class="copyright">Copyright &copy, 2014 <a href="#">CSN news</a> Todos los derechos reservados</p>										
			</footer>
		</div>
	<script type="text/javascript">
$(function() {
 
    var menu_ul = $('.leftmenu > li > ul'),
        menu_a  = $('.leftmenu > li > a');
     
    menu_ul.hide();
 
    menu_a.click(function(e) {
        e.preventDefault();
        if(!$(this).hasClass('active')) {
            menu_a.removeClass('active');
            menu_ul.filter(':visible').slideUp('normal');
            $(this).addClass('active').next().stop(true,true).slideDown('normal');
        } else {
            $(this).removeClass('active');
            $(this).next().stop(true,true).slideUp('normal');
        }
    });
 
});
</script>
</div>	
</body>
</html>
		