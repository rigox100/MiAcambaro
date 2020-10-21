<?php
include_once 'admin/class/Anuncio.php';

require_once 'admin/class/Categoria.php';
$categoria = Categoria::recuperarTodos();







			$search = (isset($_POST['busqueda'])) ? $_POST['busqueda'] : null;
			
            if(empty($search)){
			
					header("Location: index.php");
				
                
			}


			
			$search_original = $search;
			$array=["en", "de", "y", "sobre", "hasta"];
			for($i=0; $i<count($array); $i++){
				$resultado = str_replace(" ".$array[$i]." ", " ", $search);
				$search = $resultado;
			}
			
			$arreglo = explode(' ', $search);

			// if(!empty($arreglo[0])){
			// 	$searchUno = $arreglo[0];
			// }else{
			// 	$searchUno = null;
			// }

			// if(!empty($arreglo[1])){
			// 	$searchDos = $arreglo[1];
			// }else{
			// 	$searchDos = null;
			// }

			
			

			//  echo $searchUno ."<br>";
			//  echo $searchDos;
			
			// //echo $search;
			//die();
			$busqueda = Anuncio::busqueda($search);
			

            $total = count($busqueda);
?>






<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Author Meta -->
		<meta name="author" content="codepixer">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>::Busqueda::</title>
		<!-- <link rel="shortcut icon" href="search/img/icon.ico"> -->

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="search/css/linearicons.css">
			<link rel="stylesheet" href="search/css/font-awesome.min.css">
			<link rel="stylesheet" href="search/css/bootstrap.css">
			<link rel="stylesheet" href="search/css/magnific-popup.css">
			<link rel="stylesheet" href="search/css/nice-select.css">
			<link rel="stylesheet" href="search/css/animate.min.css">
			<link rel="stylesheet" href="search/css/owl.carousel.css">
			<link rel="stylesheet" href="search/css/main.css">

	
			
		</head>
		<body>

			  <header id="header" id="home">
			    <div class="container">
			    	<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a class="text-white" href="index.php">MiAcámbaro</a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li class="menu-active"><a href="index.php">Inicio</a></li>
				          <li><a href="#">Categorías</a></li>
				          
				          <li><a href="#">Contacto</a></li>

				           <li class="menu-has-children"><a href="">Login</a>
				            <ul>
											<li><a href="elements.html">Iniciar Sesión</a></li>
											<li><a href="search.html">Registro</a></li>

				            </ul>
				          </li> 
									<li><a href="#">Aviso de privacidad</a></li>
				          <!-- <li><a class="ticker-btn" href="#">Iniciar Sesión</a></li>
				          <li><a class="ticker-btn" href="#">Registro</a></li> -->
				        </ul>
				      </nav><!-- #nav-menu-container -->
			    	</div>
			    </div>
			  </header><!-- #header -->

			  


			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row search-page-top d-flex align-items-center justify-content-center">
						<div class="banner-content col-lg-12">
							<h1 class="text-black">
							
								Resultados de busqueda
							</h1>
					
							<form action="search.php" method="POST" class="serach-form-area" >
								<div class="row justify-content-center form-wrap">
									<div class="col-lg-4 form-cols">
										<input type="text" class="form-control" name="busqueda" value="<?php echo $search_original ?>">
									</div>

									<div class="col-lg-3 form-cols">
										<div class="default-select" id="default-selects2">
											<select>
												<option value="1">Seleccionar Categoría</option>
												<?php foreach ($categoria as $item): ?>
                									<option value="<?php echo $item[0]; ?>" > <?php echo $item[1];?> </option>
											<?php
											endforeach;
											?>

											</select>
										</div>
									</div>

									<div class="col-lg-3 form-cols">
										<div class="default-select" id="default-selects">
											<select>
												<option value="1">Seleccionar subcategoría</option>
												<option value="2">Subcategoría Uno</option>
											
											</select>
										</div>
									</div>
							
									<div class="col-lg-2 form-cols">
									    <button type="submit"  class="btn btn-info">
									      <span class="lnr lnr-magnifier"></span> Buscar
									    </button>
									</div>
								</div>
							</form>
							
							
						</div>
					</div>
				</div>
			</section>
			<!-- End banner Area -->

			<!-- Start post Area -->
			<section class="post-area section-gap">
			<?php  if (count($busqueda) > 0): ?>
				
				<div class="container">
				<p class="text-black"><span class="text-orange"><?php echo $total ?> </span> resultados encontrados para <span class="text-orange">"<?php echo $search_original ?>"</span></p>
					<div class="row justify-content-center d-flex">
					
						<div class="col-lg-8 post-list">
						<?php foreach ($busqueda as $item): ?>
							<div class="single-post d-flex flex-row">
								<div class="thumb">
									<img src="admin/modules/posts/<?php echo $item['url_imagen']; ?>" alt="" width="150" height="80" class="img-fluid">
									<ul class="tags">
										<li>
											<a href="#">Facebook</a>
										</li>
										<li>
											<a href="#">Sitio Web</a>
										</li>
										<li>
											<a href="#">Mapa</a>
										</li>
									</ul>
								</div>

								<div class="details">
									<div class="title d-flex flex-row justify-content-between">
										<div class="titles">
											<a href="single.html"><h4><?php echo $item['titulo']; ?></h4></a>
											<h6><?php echo $item['municipio']; ?></h6>
										</div>
										<ul class="btns">
											 <!-- <li><a href="#"><span class="lnr lnr-heart"></span></a></li> -->
											<li><a href="#">Más Información</a></li>
										</ul>
									</div>


									<p>
									
									<!-- Descripción: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporinc ididunt ut dolore. -->
									<?php echo $item[11]; ?>
									</p>
									<h5>Horario: <?php echo $item['entrada']; ?> - <?php echo $item['cierre']; ?></h5>
									<p class="address"><span class="lnr lnr-map"></span> Calle: <?php echo $item['calle']; ?>, <?php echo $item['colonia']; ?>, C.P. <?php echo $item['cp']; ?></p>
									<p class="address"><span class="lnr lnr-database"></span> Tel: <?php echo $item['telefono']; ?></p>


								</div>

							</div>

							<?php endforeach; ?>
							
							<?php else: ?>

								<div class="container">
					<div class="row justify-content-center d-flex">
						<div class="col-lg-8 post-list">
							<div class="single-post d-flex flex-row">
								<div class="thumb">
									<img src="search/img/post.png" alt="" width="150" height="80" class="img-fluid">
									<ul class="tags">
								
									</ul>
								</div>
								<div class="details">
									<div class="title d-flex flex-row justify-content-between">
										<div class="titles">
											<a href="single.html"><h4>Ups!! No hemos encontrado resultados para "<?php echo $search_original?>" </h4></a>
									
										</div>
										<ul class="btns">
											<!-- <li><a href="#"><span class="lnr lnr-heart"></span></a></li> -->
										
										</ul>
									</div>



								</div>
							</div>
							<?php endif; ?>

						</div>
						




						<div class="col-lg-4 sidebar">

							<div class="single-slidebar">
								<h4>Mapa</h4>
								<ul class="cat-list">
						
									<img src="search/img/thumbnail.jpg" alt="" width="300" height="200" class="img-fluid">
								</ul>
							</div>

							<div class="single-slidebar">
								<h4>Contenidos Relacionados</h4>
								<div class="active-relatedjob-carusel">
									<div class="single-rated">
										<img class="img-fluid" src="search/img/r1.jpg" alt="">
										<h4>Hotel Bugambilias</h4>
										<h6>Premium Labels Limited</h6>
										<p>
											Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporinc ididunt ut dolore magna aliqua.
										</p>
										<h5>Job Nature: Full time</h5>
										<p class="address"><span class="lnr lnr-map"></span> 56/8, Panthapath Dhanmondi Dhaka</p>
										<p class="address"><span class="lnr lnr-database"></span> 15k - 25k</p>
										<a href="#" class="btns text-uppercase">Ver más...</a>
									</div>
									<div class="single-rated">
										<img class="img-fluid" src="search/img/r1.jpg" alt="">
										<h4>Panificadora El Triunfo</h4>
										<h6>Premium Labels Limited</h6>
										<p>
											Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporinc ididunt ut dolore magna aliqua.
										</p>
										<h5>Job Nature: Full time</h5>
										<p class="address"><span class="lnr lnr-map"></span> 56/8, Panthapath Dhanmondi Dhaka</p>
										<p class="address"><span class="lnr lnr-database"></span> 15k - 25k</p>
										<a href="#" class="btns text-uppercase">Ver más...</a>
									</div>
									<div class="single-rated">
										<img class="img-fluid" src="search/img/r1.jpg" alt="">
										<h4>Zapatería Flexi</h4>
										<h6>Premium Labels Limited</h6>
										<p>
											Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporinc ididunt ut dolore magna aliqua.
										</p>
										<h5>Job Nature: Full time</h5>
										<p class="address"><span class="lnr lnr-map"></span> 56/8, Panthapath Dhanmondi Dhaka</p>
										<p class="address"><span class="lnr lnr-database"></span> 15k - 25k</p>
										<a href="#" class="btns text-uppercase">Ver más...</a>
									</div>
								</div>
							</div>

							<div class="single-slidebar">
								<h4>Categorías</h4>
								<ul class="cat-list">
									<li><a class="justify-content-between d-flex" href="#"><p>Hoteles</p><span>37</span></a></li>
									<li><a class="justify-content-between d-flex" href="#"><p>Zapaterías</p><span>57</span></a></li>
									<li><a class="justify-content-between d-flex" href="#"><p>Balnearios</p><span>33</span></a></li>
									<li><a class="justify-content-between d-flex" href="#"><p>Ferreterías</p><span>36</span></a></li>
									<li><a class="justify-content-between d-flex" href="#"><p>SuperMercados</p><span>47</span></a></li>
									<li><a class="justify-content-between d-flex" href="#"><p>Veterinarias</p><span>27</span></a></li>
									<li><a class="justify-content-between d-flex" href="#"><p>Hospitales</p><span>17</span></a></li>
								</ul>
							</div>

							<!-- <div class="single-slidebar">
								<h4>Carrer Advice Blog</h4>
								<div class="blog-list">
									<div class="single-blog " style="background:#000 url(img/blog1.jpg);">
										<a href="#"><h4>Home Audio Recording <br>
										For Everyone</h4></a>
										<div class="meta justify-content-between d-flex">
											<p>
												02 Hours ago
											</p>
											<p>
												<span class="lnr lnr-heart"></span>
												06
												 <span class="lnr lnr-bubble"></span>
												02
											</p>
										</div>
									</div> -->
									<!-- <div class="single-blog " style="background:#000 url(img/blog2.jpg);">
										<a href="#"><h4>Home Audio Recording <br>
										For Everyone</h4></a>
										<div class="meta justify-content-between d-flex">
											<p>
												02 Hours ago
											</p>
											<p>
												<span class="lnr lnr-heart"></span>
												06
												 <span class="lnr lnr-bubble"></span>
												02
											</p>
										</div>
									</div> -->
									<!-- <div class="single-blog " style="background:#000 url(img/blog1.jpg);">
										<a href="#"><h4>Home Audio Recording <br>
										For Everyone</h4></a>
										<div class="meta justify-content-between d-flex">
											<p>
												02 Hours ago
											</p>
											<p>
												<span class="lnr lnr-heart"></span>
												06
												 <span class="lnr lnr-bubble"></span>
												02
											</p>
										</div>
									</div>
								</div>
							</div> -->

						</div>
					</div>
				</div>
			</section>
			<!-- End post Area -->

			<!-- Start callto-action Area -->
			<!-- <section class="callto-action-area section-gap">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content col-lg-9">
							<div class="title text-center">
								<h1 class="mb-10 text-white">Join us today without any hesitation</h1>
								<p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
								<a class="primary-btn" href="#">I am a Candidate</a>
								<a class="primary-btn" href="#">Request Free Demo</a>
							</div>
						</div>
					</div>
				</div>
			</section> -->
			<!-- End calto-action Area -->

			<!-- start footer Area -->
			<footer class="footer-area section-gap">
				<div class="container">
					<!-- <div class="row">
						<div class="col-lg-3  col-md-12">
							<div class="single-footer-widget">
								<h6>Top Products</h6>
								<ul class="footer-nav">
									<li><a href="#">Managed Website</a></li>
									<li><a href="#">Manage Reputation</a></li>
									<li><a href="#">Power Tools</a></li>
									<li><a href="#">Marketing Service</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-6  col-md-12">
							<div class="single-footer-widget newsletter">
								<h6>Newsletter</h6>
								<p>You can trust us. we only send promo offers, not a single spam.</p>
								<div id="mc_embed_signup">
									<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">

										<div class="form-group row" style="width: 100%">
											<div class="col-lg-8 col-md-12">
												<input name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '" required="" type="email">
												<div style="position: absolute; left: -5000px;">
													<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
												</div>
											</div>

											<div class="col-lg-4 col-md-12">
												<button class="nw-btn primary-btn">Subscribe<span class="lnr lnr-arrow-right"></span></button>
											</div>
										</div>
										<div class="info"></div>
									</form>
								</div>
							</div>
						</div>
						<div class="col-lg-3  col-md-12">
							<div class="single-footer-widget mail-chimp">
								<h6 class="mb-20">Instragram Feed</h6>
								<ul class="instafeed d-flex flex-wrap">
									<li><img src="img/i1.jpg" alt=""></li>
									<li><img src="img/i2.jpg" alt=""></li>
									<li><img src="img/i3.jpg" alt=""></li>
									<li><img src="img/i4.jpg" alt=""></li>
									<li><img src="img/i5.jpg" alt=""></li>
									<li><img src="img/i6.jpg" alt=""></li>
									<li><img src="img/i7.jpg" alt=""></li>
									<li><img src="img/i8.jpg" alt=""></li>
								</ul>
							</div>
						</div>
					</div> -->

					<div class="row footer-bottom d-flex justify-content-between">
						<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados | Gobierno Municipal de Acámbaro
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
						<div class="col-lg-4 col-sm-12 footer-social">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</footer>
			<!-- End footer Area -->

			<script src="search/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="search/js/vendor/bootstrap.min.js"></script>
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="search/js/easing.min.js"></script>
			<script src="search/js/hoverIntent.js"></script>
			<script src="search/js/superfish.min.js"></script>
			<script src="search/js/jquery.ajaxchimp.min.js"></script>
			<script src="search/js/jquery.magnific-popup.min.js"></script>
			<script src="search/js/owl.carousel.min.js"></script>
			<script src="search/js/jquery.sticky.js"></script>
			<script src="search/js/jquery.nice-select.min.js"></script>
			<script src="search/js/parallax.min.js"></script>
			<script src="search/js/mail-script.js"></script>
			<script src="search/js/main.js"></script>

				
		</body>
	</html>
