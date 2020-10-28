<?php

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $email = (isset($_POST['email'])) ? $_POST['email'] : null;
    $token = md5($email);
    $str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
    $password = "";
    for($i=0;$i<8;$i++) {
       $password .= substr($str,rand(0,62),1);
    } 

}



    




