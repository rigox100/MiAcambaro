<?php
session_start();
if (isset($_SESSION['idUsuario']) && $_SESSION['idRol'] == 3 && $_REQUEST['estatus_solicitud']=="Rechazada") {

 require_once '../admin/class/Solicitud.php';

  $idUsuario = $_SESSION['idUsuario'];
  $idSolicitud = (isset($_REQUEST['idSolicitud'])) ? $_REQUEST['idSolicitud'] : null;
if($idSolicitud){
  $solicitud = Solicitud::buscarPorId($idSolicitud);
}

  include_once '../template/template1/header.php';
?>


  <!-- Main content -->
  <div class="content" id="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col">
        <?php
            if(isset($_GET['error'])){
                if($_GET['error']==1){
                  echo '<p class="btn btn-danger">Ocurrio un error al procesar los cambios, por favor vuelva a intentarlo</p>';
                }
            }
        ?>
        <p class="alert alert-info">
Revisa las <a href="../lib/validar_solicitud.php" data-toggle="modal" data-target="#exampleModal">observaciones </a> y realiza los ajustes necesarios </p>

        <div  style="width:80%; margin-left:10%; background-color: white; padding:20px; border-radius:10px;">

        <h4 class="text-center"> Editar Solicitud Folio No. <?php echo $solicitud->getIdSolicitud();?></h4>
        <h4 class="text-center"> <?php echo $solicitud->getNombreNegocio();?></h4> <br>
        
        <form action="../lib/validar_solicitud.php" method="post" enctype="multipart/form-data">
     
        <div class="form-group">
            <input class="form-control" type="hidden" name="idSolicitud" id="idSolicitud" value="<?php echo $solicitud->getIdSolicitud()?>">
            </div>    
        
        <div class="form-group">
            <input class="form-control" type="hidden" name="idUsuario" id="idUsuario" value="<?php echo $solicitud->getIdUsuario()?>">
            </div>

            <div class="form-group">
            <input class="form-control" type="hidden" name="url-imagen1" id="url-imagen1" value="<?php echo $solicitud->getUrlImagen()?>">
            </div>

            <img src="../admin/modules/posts/<?php echo $solicitud->getUrlImagen()?>" class="img-fluid img-anuncio w-50 d-block mx-auto">

            <div class="form-group">
            <label for="nombre_negocio">Nombre del Negocio</label>
            <input class="form-control" type="text" name="nombre_negocio" id="nombre_negocio" value="<?php echo $solicitud->getNombreNegocio()?>">
            </div>

            <div class="form-group">
            <label for="url_imagen">Imagen <small class="text-info ml-2">Seleccione la imagen que desea mostrar de su negocio Ejem: Portada, Logotipo.</small></label>
            <input class="form-control" type="file" name="url_imagen" id="url_imagen">
            </div>

            
            <div class="form-group">
            <!--<label for="rfc">RFC</label>-->
            <input class="form-control" type="hidden" name="rfc" id="rfc" placeholder="Ingresa el RFC de tu negocio" value="">
            </div>
          

            <div class="form-group">
            <label for="tel">Télefono de contacto</label>
            <input class="form-control" type="text" name="tel" id="tel" value="<?php echo $solicitud->getTel()?>">
            </div>

            <div class="form-group">
            <label for="calle">Calle</label>
            <input class="form-control" type="text" name="calle" id="calle" value="<?php echo $solicitud->getCalle()?>">
            </div>

            <div class="form-group">
            <label for="colonia">Colonia</label>
            <input class="form-control" type="text" name="colonia" id="colonia" value="<?php echo $solicitud->getColonia()?>">
            </div>

            <div class="form-group">
            <label for="cp">Código Postal</label>
            <input class="form-control" type="text" name="cp" id="cp" value="<?php echo $solicitud->getCP()?>">
            </div>

            <div class="form-group">
            <label for="municipio">Localidad/Municipio</label>
          <input type="text" name="municipio" id="municipio" class="form-control"value="<?php echo $solicitud->getMunicipio()?>" >
            </div>

            <div class="form-group">
            <label for="tel">Estado</label>
            <input class="form-control" type="text" name="estado" id="estado" value="Guanajuato" readonly>
            </div>

            <div class="form-group">
            <label for="descripcion">Cuentanos un poco de tu negocio</label>
           <textarea name="descripcion" id="descripcion" rows="4" class="form-control"><?php echo $solicitud->getDescripcion()?></textarea>
            </div>

            <div class="form-group">
            <input type="submit" value="Enviar solicitud" class="btn btn-primary">
            </div>
            

            </form>
</div>
<?php 
include_once '../template/partials/msj_modal_observaciones.php';
?>
         

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