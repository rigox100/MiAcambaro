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
  $token= md5($email);
  $password = md5((isset($_POST['new_password'])) ? $_POST['new_password'] : null);
  $estatus = 0;
  $idRol = 3;
  $usuario = new Usuario();
  $usuario->setNombre($nombre);
  $usuario->setApellido($apellido);
  $usuario->setEmail($email);
  $usuario->setPassword($password);
  $usuario->setEstatus($estatus);
  $usuario->setIdRol($idRol);
  
  if ($usuario->guardar()) {

    $from = "admin@miacambaro.mx";
    $to = $email;
    $subject = "Activiación de cuenta en MiAcámbaro";
    $message = 
    '<html>'.
    '<head><title>Mi Acámbaro</title></head>'.
    '<body><h1>Activiación de Cuenta</h1>'.
    'Gracias por registrarte en Mi Acámbaro'.
    '<hr>'.
    'Para activar tu cuenta por favor ingresa al siguiente enlace '.'<a href="https://www.miacambaro.mx/activation.php?token='.$token.'&activation=1">'.
    '</body>'.
    '</html>';
 
    $headers = "From: Mi Acambaro";
    mail($to,$subject,$message, $headers);
  

    header('Location: login.php?email=' . $email . '&message=success');
  } else {

    echo '<p class="aler alert-warning">Ocurrió un error al procesar el registro, por favor vuelva a intentarlo</p>';
  }

  } else {
      // Si entra aqui, es un robot....
    //echo "Lo siento, parece que eres un Robot";
  }


}
