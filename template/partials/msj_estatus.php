<?php 
if($item[11]=="En proceso"){

     $title1 = 'Solicitud en proceso';   
    $content1 = 'La solicitud para publicar su anuncio se ha generado con éxito,
     el administrador del sitio revisará la información proporcionada y una vez validada la información 
     nos pondremos en contacto con usted a la brevedad posible.';

}elseif($item[11]=="Aceptada"){

    $title1='Solicitud Aceptada';
    $content1 = 'El anuncio de su negocio fue aceptado y en breve será publicado para que pueda visualizarlo y editar algunas opciones.';
}elseif($item[11]=="Publicada"){

    $title1='Anuncio Publicado';
    $content1 = 'El anuncio de su negocio ha sido publicado con éxito, usted puede ver su anuncio y/o modificar algunos detalles desde la sección <strong>Ajustes</strong> <i class="btn btn-warning fa fa-edit mr-2"></i>';
}else{
    $title1='Solicitud Rechazada';
    $content1 ='La solicitud para publicar su anuncio no ha podido ser validada,
     revise las observaciones del administrador, 
    le recomendamos cancele la solicitud actual y genere una solicitud nueva tomando
     en cuenta las observaciones enviadas.';

}