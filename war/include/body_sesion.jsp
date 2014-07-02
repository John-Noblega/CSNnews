<section class="contenedor">
		
			<!-- barra izquierda -->
			<div class="leftcontent">
				<aside>
				<header>
					<h5>Fuentes Informativas</h5>
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
				
				<aside>
				<article>
	    		<p>barra izquierda</p>
				</article>
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
								<h1>Bienvenido</h1>
								<h2>Eres Bienvenido</h2>
							</hgroup>
						</header>
						<p><a href="csnnews">CSNnews</a></p>
						<figure>					
							<img src="" alt="" title=""/>
						</figure>
						<footer class="footer_article">
							<p>pie de pagina del articulo</p>
						</footer>
					</article>
					</section>
				
				</section>
				<section id="coment">
					Aqui van los comentarios
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