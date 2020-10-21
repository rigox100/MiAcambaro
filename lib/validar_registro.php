<?php
require_once 'admin/class/Usuario.php';


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $nombre = (isset($_POST['nombre'])) ? $_POST['nombre'] : null;
  $apellido = (isset($_POST['apellido'])) ? $_POST['apellido'] : null;
  $email = (isset($_POST['email'])) ? $_POST['email'] : null;
  $password = md5((isset($_POST['new_password'])) ? $_POST['new_password'] : null);
  $estatus = 1;
  $idRol = 3;
  $usuario = new Usuario();
  $usuario->setNombre($nombre);
  $usuario->setApellido($apellido);
  $usuario->setEmail($email);
  $usuario->setPassword($password);
  $usuario->setEstatus($estatus);
  $usuario->setIdRol($idRol);
  if ($usuario->guardar()) {

    header('Location: login.php?email=' . $email . '&message=success');
  } else {

    echo '<p class="aler alert-warning">Este correo ya ha sido registrado</p>';
  }
}
