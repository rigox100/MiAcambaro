<?php
session_start();
if(isset($_SESSION['idRol'])){
    header('Location: index.php');
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Author Meta -->
    <meta name="author" content="MiAcambaro">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/registrer_form.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="css/set1.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
    <script src="https://www.google.com/recaptcha/api.js?render=6LeRAtsZAAAAAFPj_jVnUreuGCaI8Z09QCG3kz9d"></script>
    <title>Registro</title>
    <style>
        input {
            font-family: FontAwesome, "Open Sans", Verdana, sans-serif;
            font-style: normal;
            font-weight: normal;
            text-decoration: inherit;

        }
    </style>
</head>

<body>

    <div class="nav-menu">
        <div class="bg transition">
            <div class="container-fluid fixed" style="border:none;">
                <div class="row">
                    <div class="col-md-12" style="background-color: #ff4a00">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="index.php" style="color:white;">
                                MiAcámbaro
                                <!-- <img src="images/logo.png" width="120" height="42" class="d-inline-block align-top" alt=""> -->
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="icon-menu"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" style="color:white;" href="index.php">Inicio</a>
                                    </li>

                                    <?php
                                    if (isset($_SESSION['idUsuario'])) {
                                    ?>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <?php echo $_SESSION['nombre'] ?>
                                                <span class="icon-arrow-down"></span>
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

                                                <?php
                                                if ($_SESSION['idRol'] != 3) {

                                                    echo '<a class="dropdown-item" href="admin/index.php">CPANEL</a>';
                                                } else {
                                                ?>
                                                    <a class="dropdown-item" href="user_account/perfil.php" style="color:white;">Mi cuenta</a>

                                                <?php } ?>
                                                <a class="dropdown-item" href="logout.php" style="color:white;">Cerrar sesión</a>
                                            </div>
                                        </li>

                                    <?php
                                    } else {
                                    ?>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:white;">
                                                Login
                                                <span class="icon-arrow-down"></span>
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                                <a class="dropdown-item" href="login.php">Iniciar Sesión</a>
                                                <a class="dropdown-item" href="registro.php">Registro</a>
                                            </div>
                                        </li>
                                    <?php
                                    }
                                    ?>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#" style="color:white;">Contacto</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="aviso-privacidad.php" style="color:white;">Aviso de privacidad</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <main class="login-form" style="margin-top: 7%; margin-bottom:1%;">
        <div class="cotainer">
            <div class="row justify-content-center">
                <div class="row">
                    <div class="col display-4 mb-3">Registrate</div>
                </div>
                <div class="col-md-10">

                    <div class="card" style="border: none;">

                        <div class="card-body">
                            <?php
                            require_once "lib/recaptcha.php";
                            include_once "lib/validar_registro.php";
                            ?>
                            <form action="registro.php" method="post" id="form">

                                <div class="form-group row">
                                    <label for="nombre" class="col-md-4 col-form-label text-md-right">Nombre</label>
                                    <div class="col-md-6">

                                        <input type="text" id="nombre" class="form-control" name="nombre" placeholder="&#xf007" onfocus="this.placeholder = ''" onblur="this.placeholder = '&#xf007'" value="<?php if (isset($_POST['nombre'])) {
                                                                                                                                                                echo $_POST['nombre'];
                                                                                                                                                            } ?>" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="apellido" class="col-md-4 col-form-label text-md-right">Apellido</label>
                                    <div class="col-md-6">
                                        <input type="text" id="apellido" class="form-control" name="apellido" placeholder="&#xf007" onfocus="this.placeholder = ''" onblur="this.placeholder = '&#xf007'" value="<?php if (isset($_POST['apellido'])) {
                                                                                                                            echo $_POST['apellido'];
                                                                                                                        } ?>" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">Correo electrónico</label>
                                    <div class="col-md-6">
                                        <input type="email" id="email" class="form-control" name="email"  class="form-control" name="confirm_password" placeholder="&#xf0e0" onfocus="this.placeholder = ''" onblur="this.placeholder = '&#xf0e0'" value="<?php if (isset($_POST['email'])) {
                                                                                                                    echo $_POST['email'];
                                                                                                                } ?>" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="new_password" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="password" id="new_password" class="form-control" name="new_password" placeholder="&#xf023 Ingresa una contraseña de al menos 8 caracteres" onfocus="this.placeholder = ''" onblur="this.placeholder = '&#xf023 Ingresa una contraseña de al menos 8 caracteres'" value="" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="confirm_password" class="col-md-4 col-form-label text-md-right">Confirmar Password</label>
                                    <div class="col-md-6">
                                        <input type="password" id="confirm_password" class="form-control" name="confirm_password" placeholder="&#xf023" onfocus="this.placeholder = ''" onblur="this.placeholder = '&#xf023'" value="" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6 offset-md-4">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="politica_privacidad" required> He leído el <a href="aviso-privacidad.php" target="_blank"> aviso de privacidad</a>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 offset-md-4">

                                    </div>
                                </div>
                                <div class="col-md-6 offset-md-4 w-100">
                                    <button type="submit" class="btn btn-dark w-100">
                                        Registrarme
                                    </button>
                                </div>
                        </div>
                        </form>

                        <script src="template/js/registro_validate.js"></script>
                        <script>
                            $('#form').submit(function(event) {


                                if ($("#form").valid()) {
                                    event.preventDefault();
                                    grecaptcha.ready(function() {
                                        grecaptcha.execute('6LeRAtsZAAAAAFPj_jVnUreuGCaI8Z09QCG3kz9d', {
                                            action: 'registro'
                                        }).then(function(token) {
                                            $('#form').prepend('<input type="hidden" name="token" value="' + token + '">');
                                            $('#form').prepend('<input type="hidden" name="action" value="registro">');
                                            $('#form').unbind('submit').submit();
                                        });;
                                    });
                                }
                            });
                        </script>
                        <?php
                        include_once 'template/partials/msj_modal_activacion.php';
                        ?>
                    </div>
                </div>
            </div>
        </div>
        </div>

    </main>


    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright &copy; <?php echo date('Y') ?>. Todos los derechos reservados | miacambaro.mx</p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <ul>
                            <li><a href="#"><span class="ti-facebook"></span></a></li>
                            <li><a href="#"><span class="fa fa-whatsapp" style="font-size:28px"></span></a></li>
                            <li><a href="#"><span class="ti-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--//END FOOTER -->

</body>

</html>