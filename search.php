<?php
 session_start();
include_once 'admin/class/Anuncio.php';

require_once 'admin/class/Categoria.php';
$categoria = Categoria::getRandom();
$categorias = Categoria::recuperarTodos();








			$search = (isset($_POST['busqueda'])) ? $_POST['busqueda'] : null;
			
            if(empty($search)){
			
					header("Location: index2.php");
				
                
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
		<link rel="shortcut icon" href="search/img/logo.png">
		

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">

		
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
   		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		<link rel="stylesheet" href="search/css/jquery-ui.css">
    		
    		
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
									<div class="col-lg-5 form-cols">
										<input type="text" class="form-control" name="busqueda" value="<?php echo $search_original ?>">
									</div>

									<div class="col-lg-5 form-cols">
										<input id="cate" type="text" class="form-control" name="categorias" placeholder = "Escriba el nombre de una categoría" >
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
									<a href="#" data-toggle="modal" data-target="#exampleModalCenter"><img src="admin/modules/posts/<?php echo $item['url_imagen']; ?>" alt="" width="70" height="70" class="rounded-circle"></a>
								</div>

								<div class="details">
									<div class="title d-flex flex-row justify-content-between">
										<div class="titles">
											<a href="#" data-toggle="modal" data-target="#exampleModalCenter"><h4><?php echo $item['titulo']; ?></h4></a>
										</div>
								</div>

								
                                
								<div class="starts">
									<ul class="list-unstyled list-inline rating mb-0">
										<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
										<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
										<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
										<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
										<li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
										<li class="list-inline-item"><p class="text-muted">4.5 (413)</p></li>
									</ul>
								</div>
								
								<div class="closed-ca ti-home"><?php echo $item['calle']; ?> &#x23; 30,&nbsp;&nbsp; <span class="fa fa-whatsapp closed-wa ">&nbsp;417-117-3020</span>  &nbsp;&nbsp; <span class="closed-mun"><?php echo $item['municipio']; ?> </span> - <span class="closed-cat"><?php echo $item['nombre']; ?></span>  </div> 
						
								
								
								
								<div class="closed-now">ABIERTO AHORA</div>

								




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
						


						<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Información</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
       
      </div>
    </div>
  </div>
</div>



						<div class="col-lg-4 sidebar">

							

							<div class="single-slidebar">

								<h4 class="text-center">Lugares Destacados</h4> 

								<?php
                    				include_once 'admin/class/Anuncio.php';
                    				$anuncio = Anuncio::getRandom(3);

                    					if (count($anuncio) > 0):
                				?>

								<div class="active-relatedjob-carusel">
								<?php foreach ($anuncio as $item): ?>

									<div class="single-rated">
									<a href="#">
										<img src="./admin/modules/posts/<?php echo $item['url_imagen']; ?>" class="img-fluid" alt="#" >
										<h4><?php echo $item['titulo']; ?></h4>
								   </a>	
										   
										<div class="starts">
											<ul class="list-unstyled list-inline rating mb-0">
												<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
												<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
												<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
												<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
												<li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
												<li class="list-inline-item"><p class="text-muted">4.5 (413)</p></li>
											</ul>
										</div>
										<h6><span class="closed-mun"><?php echo $item['municipio']; ?> </span> - <span class="closed-cat"><?php echo $item['nombre']; ?></span></h6>
										<p>
												<?php echo $item[11]; ?>
										</p>
										<hr>

										<div class="info">
											<h5 class="far fa-address-book">&nbsp;<?php echo $item['calle']; ?> &#x23; 30</h5>
										</div>

										<div class="info">
											<h5 class="fa fa-whatsapp">&nbsp;417-120-9696</h5>
										</div>

										<div class="info">
											<h5 class="far fa-clock">&nbsp;<?php echo $item['entrada']; ?> - <?php echo $item['cierre']; ?></h5>
										</div>




										
										<a href="#" class="btns text-uppercase">Ver más...</a>
									</div>

									<?php endforeach; ?>

								


								</div>
								<?php else: ?>
                        				<p class="alert alert-info"> No hay lugares destacados agregados </p>
                     			<?php endif; ?>
							</div>

							<div class="single-slidebar">
								<h4 class="text-center">Categorías</h4>
								<ul class="cat-list">
								<?php foreach ($categoria as $item): ?>
									<li><a class="justify-content-between d-flex" href="#"><p><?php echo $item[1];?></p></a></li>
									<?php
									 endforeach;
									?>
								</ul>
							</div>

						

						</div>
					</div>
				</div>
			</section>
			<!-- End post Area -->

		

			<!-- start footer Area -->
			<footer class="footer-area section-gap">
				<div class="container">
				

					<div class="row footer-bottom d-flex justify-content-between">
						<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados | miacambaro.mx
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
						<div class="col-lg-4 col-sm-12 footer-social">
							<a href="#"><i class="fa fa-facebook"></i></a>
							
							<a href="#"><i class="fa fa-whatsapp"></i></a>
							<a href="#"><i class="fa fa-instagram"></i></a>
							
						</div>
					</div>
				</div>
			</footer>
			<!-- End footer Area -->
		
			 <script src="search/js/vendor/jquery-2.2.4.min.js"></script>
			 <script src="https://code.jquery.com/jquery-2.1.3.min.js" integrity="sha256-ivk71nXhz9nsyFDoYoGf2sbjrR9ddh+XDkCcfZxjvcM=" crossorigin="anonymous"></script>
			 <script src="search/js/jquery-ui.min.js"></script>

			 <script type = "text/javascript">

					$(document).ready(function() {
						
						var colores =[

							"Hoteles",
							"Zapaterias",
							"restaurantes",
							"Ferreterias",
							"Supermercados",
							"Panaderias",
							"Balnearios"
							
						];
						$('#cate').autocomplete({

							source: colores 

						});
					});

				</script>


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
