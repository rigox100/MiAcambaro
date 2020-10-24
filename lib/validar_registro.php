<?php
require_once 'admin/class/Usuario.php';


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

  // Ingresa tu clave secreta.....
  define("RECAPTCHA_V3_SECRET_KEY", '6LeRAtsZAAAAAG1bRIpJ-6fRrFNlIZLjlCCQn_lT');
  
  $token = $_POST['token'];
  $action = $_POST['action'];
   
  // call curl to POST request
  $ch = curl_init();
  curl_setopt($ch, CURLOPT_URL,"https://www.google.com/recaptcha/api/siteverify");
  curl_setopt($ch, CURLOPT_POST, 1);
  curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query(array('secret' => RECAPTCHA_V3_SECRET_KEY, 'response' => $token)));
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  $response = curl_exec($ch);
  curl_close($ch);
  $arrResponse = json_decode($response, true);
   
  // verificar la respuesta
  if($arrResponse["success"] == '1' && $arrResponse["action"] == $action && $arrResponse["score"] >= 0.5) {
     
  $nombre = (isset($_POST['nombre'])) ? $_POST['nombre'] : null;
  $apellido = (isset($_POST['apellido'])) ? $_POST['apellido'] : null;
  $email = (isset($_POST['email'])) ? $_POST['email'] : null;
  $password = md5((isset($_POST['new_password'])) ? $_POST['new_password'] : null);
  $estatus = "Inactivo";
  $token = md5($email);
  $idRol = 3;
  $usuario = new Usuario();
  $usuario->setNombre($nombre);
  $usuario->setApellido($apellido);
  $usuario->setEmail($email);
  $usuario->setPassword($password);
  $usuario->setEstatus($estatus);
  $usuario->setIdRol($idRol);
  if ($usuario->guardar()) {

    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $from = "admin@miacambaro.mx";
    $to = $email;
    $subject = "Confirmar tu cuenta en MiAcambaro.mx";
    $message = '
    <html>
    <head>
      <title>Confirmar tu cuenta en MiAcambaro.mx</title>
    </head>
    <body>
      <h1>¡Gracias por registrarte en Mi Ac&aacute;mbaro</h1>
      <p> Para completar activar tu cuenta, ingresa al siguiente enlace <a href="https://miacambaro.mx/activation.php?token='.$token.'&activate=1">Activar mi cuenta</a> </p>
    </body>
    </html>
    ';

    $headers = "MIME-Version: 1.0\r\n"; 
    $headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
    $headers = "From: MiAcambaro <admin@miacambaro,mx>";
    mail($to,$subject,$message, $headers);
    //echo "The email message was sent.";

    header('Location: login.php?email=' . $email . '&message=success');
  } else {

    echo '<p class="aler alert-warning">Ocurrió un error al procesar el registro, por favor vuelva a intentarlo</p>';
  }

  } else {
      // Si entra aqui, es un robot....
    echo "Ha ocurrido un error, por favor vuelva a intentarlo";
  }


}
