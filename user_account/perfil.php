<?php
session_start();
if (isset($_SESSION['idUsuario']) && $_SESSION['idRol'] == 3) {

  require_once '../admin/class/Usuario.php';

  $idUsuario = $_SESSION['idUsuario'];
  $usuario = Usuario::buscarPorId($idUsuario);

  include_once '../template/template1/header.php';
?>


  <!-- Main content -->
  <div class="content" id="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col">

          <?php if (isset($_GET['message'])) {
            echo '<p class="alert alert-success">La información ha sido actualizada correctamente</p>';
          } ?>

          <h3 class="text-center">Mi Perfil</h3>
          <div style="width:80%; margin-left:10%; background-color: white; padding:20px; border-radius:10px;">

            <form action="../admin/modules/users/save.php" method="post">

              <div class="form-group">
                <input class="form-control" type="hidden" name="idUsuario" id="idUsuario" value="<?php echo $usuario->getIdUsuario(); ?>">
              </div>
              <div class="form-group">
                <input class="form-control" type="hidden" name="estatus" id="estatus" value="<?php echo $usuario->getEstatus(); ?>">
              </div>

              <div class="form-group">
                <input class="form-control" type="hidden" name="idRol" id="idRol" value="<?php echo $usuario->getIdRol(); ?>">
              </div>

              <div class="form-group">
                <label for="nombre">Nombre</label>
                <input class="form-control" type="text" name="nombre" id="nombre" value="<?php echo $usuario->getNombre(); ?>" required>
              </div>

              <div class="form-group">
                <label for="apellido">Apellido</label>
                <input class="form-control" type="text" name="apellido" id="apellido" value="<?php echo $usuario->getApellido(); ?>" required>
              </div>

              <div class="form-group">
                <label for="email">Email</label>
                <input class="form-control" type="email" name="email" id="email" value="<?php echo $usuario->getEmail(); ?>" readonly>
              </div>

              <div class="form-group">
                <label for="password">Contraseña</label>
                <?php if (!$usuario->getPassword()) { ?>
                  <input class="form-control" type="password" name="new_password" id="password" value="" required>
                <?php } else { ?>
                  <input class="form-control" type="hidden" name="old_password" value="<?php echo $usuario->getPassword() ?>">
                  <div><a class="btn btn-warning" data-toggle="collapse" href="#collapsePasswordReset" role="button" aria-expanded="false" aria-controls="collapsePasswordReset">Reestablecer mi contraseña</a></div>
                  <div class="collapse" id="collapsePasswordReset">
                    <div class="card card-body">
                      <input class="form-control" type="password" name="new_password" id="password" placeholder="Ingrese una nueva contraseña" value="">
                    </div>
                  <?php
                }
                  ?>
                  </div><br>

                  <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Actualizar datos">
                  </div>

            </form>

            <form action="">
              <input type="submit" class="btn btn-danger" data-toggle="modal" data-target="#myModal" value="Eliminar cuenta">
            </form>


          </div>
        </div>
        <br>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </div><!-- /.container-fluid -->
  </div>
  <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<?php
  include_once '../template/template1/footer.php';
} else {

  header('Location: ../index.php');
}
?>