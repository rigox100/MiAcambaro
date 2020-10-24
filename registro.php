<?php session_start(); ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="css/registrer_form.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://www.google.com/recaptcha/api.js?hl=es" async defer></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
    <script src="https://www.google.com/recaptcha/api.js?hl=es" async defer></script>
    <title>Registro</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light navbar-registrer">
    <div class="container">
        <a class="navbar-brand" href="#">Directorio MiAcámbaro</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="login.php">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registro.php">Registro</a>
                </li>
            </ul>

        </div>
    </div>
</nav>

<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Registrate</div>
                    <div class="card-body">
                    <?php
                      require_once "lib/recaptcha.php";
                      include_once "lib/validar_registro.php";
                     ?>
                        <form action="registro.php" method="post" id="form">
                        
                            <div class="form-group row">
                                <label for="nombre" class="col-md-4 col-form-label text-md-right">Nombre</label>
                                <div class="col-md-6">
                                    <input type="text" id="nombre" class="form-control" name="nombre"  pattern="^[a-zA-Z0-9]([a-zA-Z ]*)[a-zA-Z0-9]$" value="<?php if(isset($_POST['nombre'])){ echo $_POST['nombre'];}?>" required autofocus>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="apellido" class="col-md-4 col-form-label text-md-right">Apellido</label>
                                <div class="col-md-6">
                                    <input type="text" id="apellido" class="form-control" pattern="^[a-zA-Z0-9]([a-zA-Z ]*)[a-zA-Z0-9]$" name="apellido" value="<?php if(isset($_POST['apellido'])){ echo $_POST['apellido'];}?>"required autofocus>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">Correo electrónico</label>
                                <div class="col-md-6">
                                    <input type="email" id="email" class="form-control" name="email" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" value="<?php if(isset($_POST['email'])){ echo $_POST['email'];}?>" required autofocus>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="new_password" class="col-md-4 col-form-label text-md-right">Password</label>
                                <div class="col-md-6">
                                    <input type="password" id="new_password" class="form-control" name="new_password"  value="" required autofocus>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-6 offset-md-4">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="politica_privacidad" required> He leído y  acepto la <a href="#"> política de privacidad</a>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                            <div class="col-md-6 offset-md-4">
                            <div class="g-recaptcha" data-sitekey="6LfT2NoZAAAAAFKEq3QkQPFaGeMv8L0I4BKz-w98"></div>
                             </div>
                            </div>
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    Registrar
                                </button>
                                <a href="#" class="btn btn-link">
                                    ¿Olvidaste tu contraseña?
                                </a>
                            </div>
                    </div>
                    </form>
                    <script src="template/js/registro_validate.js"></script>
                </div>
            </div>
        </div>
    </div>
    </div>

</main>







</body>
</html>