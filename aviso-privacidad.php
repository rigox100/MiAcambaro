<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Author Meta -->
	<meta name="author" content="MiAcambaro">
	 <!-- Meta Keyword -->
	 <meta name="keywords" content="MiAcambaro, Todo lo que buscas, encuentras, negocios, Acámbaro">
    <!-- Meta Description -->
    <meta name="description" content="Entra y descubre lugares en Acámbaro, aquí todo lo que buscas lo encuentras y lo que no tambien, animate y anuncia tu negocio.
     miacambaro.mx es un proyecto creado con el objetivo de apoyar a reactivar la economía de la región de Acámabro, Guanajuato por medio de la publicación y publicidad de los negocios, profesionistas y oficios con el fin de darlos a conocer">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="dns-prefetch" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="css/main1.css">
	<title>Aviso Privacidad | Mi Acámbaro</title>

</head>

<body>

	<header id="header" id="home"style="background-color: #ff4a00;">
		<div class="container">

			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a class="text-white" href="index.php">MiAcámbaro</a>
				</div>

				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li class="menu-active"><a href="index.php">Inicio</a></li>
						<!--Session-->
						<?php
						if (isset($_SESSION['idUsuario'])) {
						?>

							<li class="menu-has-children"><a href="#"><?php echo $_SESSION['nombre'] ?></a>
								<ul>
									<?php
									if ($_SESSION['idRol'] != 3) {
										echo '<li><a href="admin/index.php">CPANEL</a>';
									} else {	
										echo '<li><a href="user_account/perfil.php">Mi cuenta</a></li>';
									}
									?>
									<li><a href="logout.php">Cerrar sesión</a></li>

								</ul>
							</li>

						<?php

						} else {
						?>
							<li class="menu-has-children"><a href="#">Login</a>
								<ul>
									<li><a href="login.php">Iniciar Sesión</a></li>
									<li><a href="registro.php">Registro</a></li>

								</ul>
							</li>

						<?php
						}
						?>
						<!--End Menu Session-->
						<li><a href="#">Contacto</a></li>
						<li><a href="aviso-privacidad.php">Aviso de privacidad</a></li>

					</ul>
				</nav><!-- #nav-menu-container -->
			</div>
		</div>

	</header><!-- #header -->

	<section class="post-area section-gap">

		<div class="container">
			<div class="row d-flex">

				<div class="col post-list">
					<div class="single-post">
						<h3 class="text-center">Aviso de privacidad</h3><br>

						<p><a href="https://www.miacambaro.mx">MiAcambaro</a> , es una plataforma web desarrollada en la ciudad de Acámbaro, Gto. México, esta plataforma está creada como apoyo para los comercios que buscan darse a conocer,
							así como buscar una reactivación económica en la región de Acámbaro, Guanajuato. y sus zonas aledañas. Esta plataforma no busca fines de lucro y los recursos obtenidos para su mantenimiento y mejora se basan en cooperaciones o aportaciones de los negocios afilidos.</p>
						<p> Esta plataforma es la responsable del uso y protección de sus datos personales, y al respecto le informamos a continuación.</p>
						<p>Su información personal puede ser utilizada para las siguientes finalidades secundarias que no son necesarias para el servicio solicitado, pero que nos permiten y facilitan brindarle una mejor atención: </p>
						<ul>
							<li>*Verificar la identidad de los suscriptores</li>
							<li>*Obtener los datos necesarios para dar a conocer su negocio en la plataforma.</li>
						</ul>
						<br>
						<p> En caso de que no desee que sus datos personales sean tratados para estos fines secundarios, desde este momento usted nos puede comunicar lo anterior a través del siguiente mecanismo: </p>
						<ul>
							<li>*Enviar un mensaje al administrador de la plataforma por medio de la sección <a href="Contacto.php">Contacto</a></li>
							<li>*Enviar un correo electrónico directamente al Administrador a la dirección <a href="mailto:admin@miacambaro.mx" target="_blank"> admin@miacambaro.mx </a></li>
						</ul>
						<br>
						<p>La negativa para el uso de sus datos personales para estas finalidades no podrá ser un motivo para que le neguemos los servicios y productos que solicita o contrata con nosotros.</p>

					</div>
				</div>
			</div>


		</div>

	</section>
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

	<script src="search/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-2.1.3.min.js" integrity="sha256-ivk71nXhz9nsyFDoYoGf2sbjrR9ddh+XDkCcfZxjvcM=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="search/js/vendor/bootstrap.min.js"></script>
	<script src="search/js/superfish.min.js"></script>
	<script src="search/js/jquery.magnific-popup.min.js"></script>
	<script src="search/js/main.js"></script>


</body>

</html>