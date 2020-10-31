<?php

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $email = (isset($_POST['email'])) ? $_POST['email'] : null;
    $token = md5($email);
    $str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
    $password = "";
    for($i=0;$i<8;$i++) {
       $password .= substr($str,rand(0,62),1);
    } 


     // Mail
	define("DEMO", false); 


	$template_file = "./template/email_templates/template_email_recovery.php";


	$email_from = "MiAcambaro <admin@miacambaro.mx>";


	$swap_var = array(
		"{SITE_ADDR}" => "https://www.miacambaro.mx",
		//"{EMAIL_LOGO}" => "",
		"{EMAIL_TITLE}" => "Solicitud de reestablecimiento de password",
		"{CUSTOM_URL}" => $token,
		//"{CUSTOM_IMG}" => "",
		//"{TO_NAME}" => $nombre
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

    ?>
<script>
      $(document).ready(function()
      {
        $('#MsjModalRecovery').modal({backdrop: 'static', keyboard: false}); 
         $("#MsjModalRecovery").modal("show");
        
      });
</script>

 <?php 
  
  }else{
		echo '<hr /><center> Ha ocurrido un error y no pudo enviarse el correo </center>';
  }


}
?>
<!-- Modal -->
<div class="modal fade" id="MsjModalRecovery" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Confirmación de cuenta</h5>
        <!--<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>-->
      </div>
      <div class="modal-body">
        <p> <strong> Reestablecimiento de contraseña <strong> </p>
        <P> Se te ha enviado un mensaje a tu correo electrónico, por favor revisa el mensaje y sigue las instrucciones para reestablecer tu contraseña.</p>
      </div>
      <div class="modal-footer">
        <a href="index.php" class="btn btn-secondary">Cerrar </a>
      </div>
    </div>
  </div>
</div>



    




