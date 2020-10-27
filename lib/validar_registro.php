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
  $tokenId = md5($email);
  $idRol = 3;
  $usuario = new Usuario();
  $usuario->setNombre($nombre);
  $usuario->setApellido($apellido);
  $usuario->setEmail($email);
  $usuario->setPassword($password);
  $usuario->setEstatus($estatus);
  $usuario->setToken($tokenId);
  $usuario->setIdRol($idRol);
  if ($usuario->guardar()) {

    // Mail
	define("DEMO", false); 


	$template_file = "./template/email_templates/template_email_activation.php";


	$email_from = "MiAcambaro <admin@miacambaro.mx>";


	$swap_var = array(
		"{SITE_ADDR}" => "https://www.miacambaro.mx",
		//"{EMAIL_LOGO}" => "",
		"{EMAIL_TITLE}" => "Confirmar tu cuenta en MiAcambaro",
		"{CUSTOM_URL}" => $tokenId,
		//"{CUSTOM_IMG}" => "",
		"{TO_NAME}" => $nombre
		//"{TO_EMAIL}" => "user@test.com"
	);


	$email_headers = "From: ".$email_from."\r\nReply-To: ".$email_from."\r\n";
	$email_headers .= "MIME-Version: 1.0\r\n";
	$email_headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";


	$email_to = $email;
	$email_subject = $swap_var['{EMAIL_TITLE}']; 


	if (file_exists($template_file))
		$email_message = file_get_contents($template_file);
	else
		die ("Error al cargar el template");

	
	foreach (array_keys($swap_var) as $key){
		if (strlen($key) > 2 && trim($swap_var[$key]) != '')
			$email_message = str_replace($key, $swap_var[$key], $email_message);
	}

	if (DEMO)
		die("<hr /><center>Esto solo es una prueba </center>");


	if (mail($email_to, $email_subject, $email_message, $email_headers) ){ 
  header('Location: login.php?email=' . $email . '&message=success');
  }else{
		echo '<hr /><center> Ha ocurrido un error y no pudo enviarse el correo </center>';
  }

  header('Location: login.php?email=' . $email . '&message=success');

    
  } else {

    echo '<p class="aler alert-warning">Ocurrió un error al procesar el registro, por favor vuelva a intentarlo</p>';
  }

  } else {
      // Si entra aqui, es un robot....
    echo "Ha ocurrido un error, por favor vuelva a intentarlo";
  }


}
