<?php
session_start();
include_once 'admin/class/Anuncio.php';

require_once 'admin/class/Categoria.php';
$categoria = Categoria::getRandom();
$categorias = Categoria::recuperarTodos();







$idAnuncio = (isset($_REQUEST['idAnuncio'])) ? $_REQUEST['idAnuncio'] : null;

if ($idAnuncio) {
	$anuncioBuscado = Anuncio::buscarPorId($idAnuncio);
}












$search = (isset($_POST['busqueda'])) ? $_POST['busqueda'] : null;

if (empty($search)) {

	header("Location: index2.php");
}



$search_original = $search;
//$array=["en", "de", "y", "sobre", "hasta"];
/* for($i=0; $i<count($array); $i++){
				$resultado = str_replace(" ".$array[$i]." ", " ", $search);
				$search = $resultado;
			} */

//$arreglo = explode(' ', $search);

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

$articulosPagina = 10;
$paginas = ceil($total / $articulosPagina);
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
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
	<script src="js/data.js"></script>






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
						<!-- <li><a href="#">Categorías</a></li>-->



						<li class="menu-has-children"><a href="">Login</a>
							<ul>
								<li><a href="login.php">Iniciar Sesión</a></li>
								<li><a href="registro.php">Registro</a></li>

							</ul>

						<li><a href="contacto.php">Contacto</a></li>
						</li>
						<li><a href="aviso-privacidad.php">Aviso de privacidad</a></li>

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

					<form action="search.php" method="POST" class="serach-form-area">
						<div class="row justify-content-center form-wrap">
							<div class="col-lg-10 form-cols">
								<input type="text" class="form-control" name="busqueda" value="<?php echo $search_original ?>">
							</div>

							<!-- 	<div class="col-lg-5 form-cols">
										<input id="cate" type="text" class="form-control" name="categorias" placeholder = "Escriba el nombre de una categoría" >
									</div> -->


							<div class="col-lg-2 form-cols">
								<button type="submit" class="btn btn-info">
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


		<div class="container">
			<?php if ($total > 0) : ?>
				<?php

				if ($total == 1) {
					echo '<p class="text-black"><span class="text-orange">' .  $total . '</span> resultado encontrado para <span class="text-orange">' . $search_original . '</span></p>';
				} else {
					echo '<p class="text-black"><span class="text-orange">' .  $total . '</span> resultados encontrados para <span class="text-orange">' . $search_original . '</span></p>';
				}


				?>





				<div class="row justify-content-center d-flex">

					<div class="col-lg-8 post-list">
						<table class="table table-bordered" id="table-data">
							<tbody>
								<?php foreach ($busqueda as $item) : ?>
									<tr>
										<td>
											<div class="single-post d-flex flex-row">

												<div class="thumb">
													<a href="" data-toggle="modal" data-target="#modal<?php echo $item[0]; ?>"><img src="admin/modules/posts/<?php echo $item['url_imagen']; ?>" alt="" width="70" height="70" class="rounded-circle"></a>
												</div>

												<div class="details">
													<div class="title d-flex flex-row justify-content-between">
														<div class="titles">
															<a href="" data-toggle="modal" data-target="#modal<?php echo $item[0]; ?>">
																<h4><?php echo $item['titulo']; ?></h4>
															</a>
														</div>
													</div>



													<div class="starts">
														<ul class="list-unstyled list-inline rating mb-0">
															<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
															<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
															<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
															<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
															<li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
															<li class="list-inline-item">
																<p class="text-muted">4.5 (413)</p>
															</li>
														</ul>
													</div>

													<div class="closed-ca ti-home"><?php echo $item['calle']; ?>,&nbsp;&nbsp; <span class="fa fa-whatsapp closed-wa ">&nbsp;417-117-3020</span> &nbsp;&nbsp; <span class="closed-mun"><?php echo $item['municipio']; ?> </span> - <span class="closed-cat"><?php echo $item['nombre']; ?></span> </div>




													<div class="closed-now">ABIERTO AHORA</div>






												</div>

											</div>

											<!-- Modal -->

											<div class="modal fade" id="modal<?php echo $item[0]; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">





												<div class="modal-dialog modal-dialog-centered" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="text-center modal-title" id="exampleModalCenterTitle"><?php echo $item['titulo']; ?></h5>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>

														<div class="modal-body">

															<nav>
																<div class="nav nav-tabs" id="nav-tab" role="tablist">
																	<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Información</a>
																	<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Encuentranos</a>
																	<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Opiniones</a>
																</div>
															</nav>
															<div class="tab-content" id="nav-tabContent">
																<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
																	<div>
																		<img src="admin/modules/posts/<?php echo $item['url_imagen']; ?>" alt="" width="95%" height="200">
																	</div>
																	<div>
																		<br>
																		<h4>General</h4>
																		<hr>
																		<div class="starts">
																			<ul class="list-unstyled list-inline rating mb-0">
																				<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
																				<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
																				<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
																				<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
																				<li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
																				<li class="list-inline-item">
																					<p class="text-muted">4.5 (413)</p>
																				</li>
																			</ul>
																		</div>

																		<div class="">
																			<h6 class="closed-ca  fa fa-map-marker">&nbsp;<?php echo $item['calle']; ?>&nbsp;<?php echo $item['cp']; ?> &nbsp;<span class="closed-mun"><?php echo $item['municipio']; ?>&nbsp; Guanajuato </span></h6>
																		</div>

																		<br>
																		<h4>Horario</h4>
																		<hr>

																		<div class="closed-now">ABIERTO AHORA</div><br>
																		<h5 class="closed-ca fa fa-clock-o">&nbsp;8:00 AM - 11:00 PM</h5>

																		<br><br>
																		<h4>Información de Contacto</h4>
																		<hr>

																		<h6 class="closed-ca  fa fa-phone">&nbsp;417-117-36-69</h6> <br>

																		<h6 class="closed-ca  fa fa-envelope">&nbsp;minegocio@miacambaro.mx</h6><br>
																		<h6 class="closed-ca  fa fa-facebook-square">&nbsp;www.facebook.com/minegocio</h6>

																	</div>
																</div>


																<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
																	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.4946196625824!2d-100.7175894848515!3d20.02971482650514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842cd6735f901b2f%3A0x9d62286fb596538d!2sMelchor%20Ocampo%20661%2C%20Zona%20Centro%2C%2038600%20Ac%C3%A1mbaro%2C%20Gto.!5e0!3m2!1ses-419!2smx!4v1604547700518!5m2!1ses-419!2smx" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

																</div>


																<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
																	 <div class="single-post d-flex flex-row">

																		<div class="thumb">
																			<img src="admin/modules/posts/<?php echo $item['url_imagen']; ?>" alt=""  width="70" height="70" class="rounded-circle">
																		</div>

																		<div class="details">
																			<div class="title d-flex flex-row justify-content-between">
																				<div class="titles">
																					<br>
																						<h4>José Hernández</h4>
																					
																				</div>
																			</div>

																			<div class="closed-ca"> Excelente lugar, muy recomendado.</div>
																	
																		</div>

																		

																</div>

															</div>
														</div>
													</div>


													<div class="modal-footer">
														<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>

													</div>
												</div>
											</div>
					</div>


					</td>
					</tr>
				<?php endforeach; ?>
				</tbody>
				</table>


			<?php else : ?>

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
											<a href="single.html">
												<h4>Ups!! No hemos encontrado resultados para "<?php echo $search_original ?>" </h4>
											</a>

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

								<h4 class="text-center">Lugares Destacados</h4>

								<?php
								include_once 'admin/class/Anuncio.php';
								$anuncio = Anuncio::getRandom();

								if (count($anuncio) > 0) :
								?>

									<div class="active-relatedjob-carusel">
										<?php foreach ($anuncio as $item) : ?>

											<div class="single-rated">
												<a href="#">
													<img src="./admin/modules/posts/<?php echo $item['url_imagen']; ?>" class="img-fluid" alt="#">
													<h4><?php echo $item['titulo']; ?></h4>
												</a>

												<div class="starts">
													<ul class="list-unstyled list-inline rating mb-0">
														<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
														<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
														<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
														<li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
														<li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
														<li class="list-inline-item">
															<p class="text-muted">4.5 (413)</p>
														</li>
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
								<?php else : ?>
									<p class="alert alert-info"> No hay lugares destacados agregados </p>
								<?php endif; ?>
							</div>

							<div class="single-slidebar">
								<h4 class="text-center">Categorías</h4>
								<ul class="cat-list">
									<?php foreach ($categoria as $item) : ?>
										<li><a class="justify-content-between d-flex" href="#">
												<p><?php echo $item[1]; ?></p>
											</a></li>
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
					Copyright &copy;<script>
						document.write(new Date().getFullYear());
					</script> Todos los derechos reservados | miacambaro.mx
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
	< <script src="search/js/vendor/jquery-2.2.4.min.js">
		</script>
		<script src="https://code.jquery.com/jquery-2.1.3.min.js" integrity="sha256-ivk71nXhz9nsyFDoYoGf2sbjrR9ddh+XDkCcfZxjvcM=" crossorigin="anonymous"></script>





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