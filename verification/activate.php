<?php
if(isset($_REQUEST['token'])){

    require_once '../admin/class/Usuario.php';

    $token = (isset($_REQUEST['token'])) ? $_POST['token'] : null;

    $registro = new Usuario;
    //$registro->setToken();
    if($registro->verificar_token()){

        //$registro->actualizar_estatus();

    }else{
        echo 'Se ha producido un error';
    }

}else{
    header('Location: ../index.php');
}