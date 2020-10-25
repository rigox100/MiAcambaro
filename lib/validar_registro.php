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
  $usuario->setIdRol($idRol);
  if ($usuario->guardar()) {

    /*ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    
    $headers = "MIME-Version: 1.0\r\n"; 
    $headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
    $headers = "From: MiAcambaro <admin@miacambaro.mx>";

    $from = "admin@miacambaro.mx";
    $to = $email;
    $subject = "Confirmar tu cuenta en MiAcambaro.mx";
    $message = "¡Gracias por registrarte en MiAcambaro.mx, 
    Para activar tu cuenta, ingresa al siguiente enlace https://miacambaro.mx/activation.php?token='.$token ";

    
    mail($to,$subject,$message, $headers);
    //echo "The email message was sent.";

    */

    
  // mail Sender
	define("DEMO", true); 

	// set the location of the template file to be loaded
	$template_file = "../template/email_templates/template_email_activation.php";

	// set the email 'from' information
	$email_from = "MiAcambaro <admin@miacambaro.mx>";

	// create a list of the variables to be swapped in the html template
	$swap_var = array(
		"{SITE_ADDR}" => "https://www.miacambaro.mx",
		"{EMAIL_LOGO}" => "",
		"{EMAIL_TITLE}" => "Confirmar tu cuenta en MiAcambaro",
		"{CUSTOM_URL}" => "https://www.miacambaro.mx/activation.php?token=$tokenId",
		"{CUSTOM_IMG}" => "",
		"{TO_NAME}" => "Suscriptor"
		//"{TO_EMAIL}" => "this_person@their_website.com"
	);

	// create the email headers to being the email
	$email_headers = "From: ".$email_from."\r\nReply-To: ".$email_from."\r\n";
	$email_headers .= "MIME-Version: 1.0\r\n";
	$email_headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

    // load the email to and subject from the $swap_var
	$email_to = $email;
	$email_subject = $swap_var['{EMAIL_TITLE}']; // you can add time() to get unique subjects for testing: time();

	// load in the template file for processing (after we make sure it exists)
	if (file_exists($template_file))
		$email_message = file_get_contents($template_file);
	else
		die ("Error al cargar el template");

	// search and replace for predefined variables, like SITE_ADDR, {NAME}, {lOGO}, {CUSTOM_URL} etc
	foreach (array_keys($swap_var) as $key){
		if (strlen($key) > 2 && trim($swap_var[$key]) != '')
			$email_message = str_replace($key, $swap_var[$key], $email_message);
	}

	// display the email template back to the user for final approval
	echo $email_message;

    // check if the email script is in demo mode, if it is then dont actually send an email
	if (DEMO)
		die("<hr /><center>This is a demo of the HTML email to be sent. No email was sent. </center>");

	// send the email out to the user	
	if ( mail($email_to, $email_subject, $email_message, $email_headers) )
  
  header('Location: login.php?email=' . $email . '&message=success');
	else
		echo '<hr /><center> Ha ocurrido un error y no pudo enviarse el correo </center>';




    
  } else {

    echo '<p class="aler alert-warning">Ocurrió un error al procesar el registro, por favor vuelva a intentarlo</p>';
  }

  } else {
      // Si entra aqui, es un robot....
    echo "Ha ocurrido un error, por favor vuelva a intentarlo";
  }


}
