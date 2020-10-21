<?php
session_start();
if (isset($_SESSION['idUsuario']) && $_SESSION['idRol'] == 3) {

  require_once '../admin/class/Usuario.php';

  $idUsuario = $_SESSION['idUsuario'];

  include_once '../template/template1/header.php';
?>


  <!-- Main content -->
  <div class="content" id="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col">

          <h3 class="text-center">Mis favoritos</h3> <br>

          <p class="alert alert-info">No tiene anuncios favoritos agregados</p>



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