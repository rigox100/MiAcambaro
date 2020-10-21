<?php
session_start();
if (isset($_SESSION['idUsuario']) && $_SESSION['idRol'] == 3) {

  require_once '../admin/class/Usuario.php';
  require_once '../admin/class/Solicitud.php';
  require_once '../admin/class/Anuncio.php';
  require_once '../admin/class/Categoria.php';



  $idUsuario = $_SESSION['idUsuario'];

  $usuario = Usuario::buscarPorId($idUsuario);
  $solicitud = Solicitud::buscarPorIdUsuario($idUsuario);


  include_once '../template/template1/header.php';
?>
  <div class="content" id="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col">
          <?php
          if(isset($_GET['message'])){
              if($_GET['message']=="success"){
                ?>
             <div class="alert alert-success alert-dismissible fade show" role="alert">
  <small>Los datos de la solicitud se han actualizado correctamente </small>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
            <?php
            }
          }
      
          if ($solicitud) {
            foreach ($solicitud as $item) {
              include_once '../template/partials/msj_estatus.php';
              $idSolicitud= $item[0];
            ?>
              
            <div class="jumbotron">
              <h4 class="display-4"><?php echo $title1;?></h4>
              <p class="lead"> <?php echo $content1;?></p>
            </div>
            <?php
          }
            ?>

            <table class="table table-bordered">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">Fecha de solicitud</th>
                  <th scope="col">RFC</th>
                  <th scope="col">Nombre del Negocio</th>
                  <th scope="col">Estatus</th>
                  <th scope="col">Observaciones</th>
                  <?php 
                    if ($item[11] == 'Publicada') {
                      echo '<th scope="col">Ver</th>';
                      echo '<th scope="col">Ajustes</th>';
                    }
                  ?>
                  <th scope="col">Cancelar</th>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($solicitud as $item) : ?>
                  <tr>

                    <td><?php echo $item[15] ?></td>
                    <td><?php echo $item[4] ?></td>
                    <td><?php echo $item[2] ?></td>
                    <td>
                      <?php
                      if ($item[11] == 'En proceso') {
                        echo '<p class="alert alert-secondary text-center">' . $item[11] . '</p>';
                      } elseif ($item[11] == 'Aceptada') {
                        echo '<p class="alert alert-primary text-center">' . $item[11] . '</p>';
                      }elseif ($item[11] == 'Publicada') {
                        echo '<p class="alert alert-success text-center">' . $item[11] . '</p>';
                      }else {
                        echo '<p class="alert alert-danger text-center">' . $item[11] . '</p>';
                      }
                      ?>

                    </td>
                    <td>
                      <?php 
                    echo $item[14].'<br>'; 
                    if($item[11] == 'Rechazada'){
                      ?>
                     <a href="ajustes_solicitud.php?idSolicitud=<?php echo $item[0];?>&estatus_solicitud=<?php echo $item[11];?>">Dar clic aquí para efectuar ajustes</a>
                    <?php
                    }
                    ?>
                    </td>
                    <?php 
                    if ($item[11] == 'Publicada') {
                      ?>
                      <td class="text-center"><a href="" data-toggle="modal" data-target="#exampleModal2" class="btn btn-info fa fa-eye mr-2"></a></td>';
                      <td class="text-center">
                        <form action="editar_publicacion.php" method="post">
                          <input type="hidden" name="idSolicitud" value="<?php echo $item[0] ?>">
                          <button type="submit" class="btn btn-warning fas fa-edit mr-2"></button>
                        </form>
                    </td>
                  <?php
                    }
                  ?>
                    <td class="text-center"><a href="../admin/modules/ad_request/delete.php?idSolicitud=<?php echo $item[0]; ?>&redirect=user_account" onclick="return confirm('¿Está seguro que desea cancelar esta solicitud?')" class="btn btn-danger far fa-trash-alt"></a></td>

                  </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
            <script> 
    

</script> 
          <?php
          } else {
            include_once '../template/partials/frm_modal_solicitud.php';
          }

          if(isset($idSolicitud)){
            include_once '../template/partials/modal_preview_anuncio.php';
          }
          ?>

        
        </div>
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