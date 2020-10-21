<?php
session_start();
if (isset($_SESSION['idUsuario']) && $_SESSION['idRol'] == 3) {

    include_once '../admin/class/Anuncio.php';
    include_once '../admin/class/Solicitud.php';

      $idSolicitud= (isset($_REQUEST['idSolicitud'])) ? $_REQUEST['idSolicitud'] : null;
      $idAnuncio= (isset($_REQUEST['idAnuncio'])) ? $_REQUEST['idAnuncio'] : null;

      if($idSolicitud){        
        $registro = Anuncio::buscarPorIdSolictud2($idSolicitud); 
        $actualizar_solicitud = new Solicitud();

        if(isset($_REQUEST['estatus_cambios'])){

            if($_REQUEST['estatus_cambios']==1){

            
           
            $idCategoria = (isset($_POST['idCategoria'])) ? $_POST['idCategoria'] : null;
            $titulo = (isset($_POST['titulo'])) ? $_POST['titulo'] : null;
            $municipio = (isset($_POST['municipio'])) ? $_POST['municipio'] : null;
            $estado = (isset($_POST['estado'])) ? $_POST['estado'] : null;
            $calle = (isset($_POST['calle'])) ? $_POST['calle'] : null;
            $colonia = (isset($_POST['colonia'])) ? $_POST['colonia'] : null;
            $cp = (isset($_POST['cp'])) ? $_POST['cp'] : null;
            $tel = (isset($_POST['tel'])) ? $_POST['tel'] : null;
            $sitio = (isset($_POST['sitio'])) ? $_POST['sitio'] : null;
            $descripcion = (isset($_POST['descripcion'])) ? $_POST['descripcion'] : null;
            $entrada = (isset($_POST['entrada'])) ? $_POST['entrada'] : null;
            $cierre = (isset($_POST['cierre'])) ? $_POST['cierre'] : null;
            $url = (isset($_REQUEST['url'])) ? $_REQUEST['url'] : null;

            //--------- Actualizar Datos del Anuncio------------------
                    $anuncio = new Anuncio();
      
                    $anuncio->setIdAnuncio($idAnuncio);
                    $anuncio->setIdCategoria($idCategoria);
                    $anuncio->setTitulo($titulo);
                    $anuncio->setMunicipio($municipio);
                    $anuncio->setEstado($estado);
                    $anuncio->setCalle($calle);
                    $anuncio->setColonia($colonia);
                    $anuncio->setCp($cp);
                    $anuncio->setTelefono($tel);
                    $anuncio->setSitio($sitio);
                    $anuncio->setDescripcion($descripcion);
                    $anuncio->setEntrada($entrada);
                    $anuncio->setCierre($cierre);
      
                  if ($_FILES['image-post']['name']!=null) {
      
                    if($_FILES['image-post']['type'] ==  'image/jpg' ||  $_FILES['image-post']['type']  == 'image/jpeg' 
                      ||  $_FILES['image-post']['type']  == 'image/png'){ 
                        
                          if (!is_dir('uploads/images')) {
                            mkdir('uploads/images', 0777, true); //true es para que pueda crear directorios recursivos, osea uno dentro de otro
                          }
                          $rutaServidor = 'uploads/images';
                          $rutaTemporal = $_FILES['image-post']['tmp_name'];
                          $nombreImagen = $_FILES['image-post']['name'];
          
                          $rutaDestino = $rutaServidor.'/'.$nombreImagen;
                          move_uploaded_file($rutaTemporal, $rutaDestino);
                          $anuncio->setUrlImagen($rutaDestino);  
                          $actualizar_solicitud->setUrlImagen($rutaDestino);  
                  
                    }else{
                          echo '<script>
                                alert("Solo se admiten archivos con extensiones jpeg, jpg, png");
                                
                                window.location.href="save.php";
                                </script>';
                    } 
                  }else{
                    $anuncio->setUrlImagen($url);  
                    $actualizar_solicitud->setUrlImagen($url);
                  } 
                     
                  $anuncio->guardar();

                    //--------Actualizar datos de la solicitud------------- 
                    
                    $actualizar_solicitud->setIdSolicitud($idSolicitud);
                    $actualizar_solicitud->setNombreNegocio($titulo);
                    $actualizar_solicitud->setMunicipio($municipio);
                    $actualizar_solicitud->setTel($tel);
                    $actualizar_solicitud->setCalle($calle);
                    $actualizar_solicitud->setColonia($colonia);
                    $actualizar_solicitud->setCp($cp);
                    $actualizar_solicitud->setEstatusSolicitud('Publicada');
                    $actualizar_solicitud->setDescripcion($descripcion);
                    $actualizar_solicitud->setObservaciones('');
                    $actualizar_solicitud->actualizarSolicitud();
                
                    //Redirección
                     header('Location: mi_negocio.php');
                    
                }
      
            }
           
    }

  include_once '../template/template1/header.php';
?>


  <!-- Main content -->
  <div class="content" id="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col">
               
                <div  style="width:80%; margin-left:10%; background-color: white; padding:20px; border-radius:10px;">

                <h3 class="alert alert-warning text-center"> <i class="fas fa-cogs mr-2"></i> Editar Ajustes - <?php echo $registro["titulo"] ?> -</h3>

            <form action="editar_publicacion.php" method="post" enctype="multipart/form-data">

            <img src="../admin/modules/posts/<?php print_r($registro["url_imagen"])?>" class="d-block mx-auto img-fluid w-70 img-anuncio" />
            </br></br>

            <div class="form-group">
            <input class="form-control" type="hidden" name="estatus_cambios" id="estatus_cambios" value="1">
            </div>
            
            <div class="form-group">
            <input class="form-control" type="hidden" name="idAnuncio" id="idAnuncio" value="<?php print_r($registro[0]) ?>">
            </div>

            <div class="form-group">
            <input class="form-control" type="hidden" name="idSolicitud" id="idSolicitud" value="<?php print_r($registro[14]) ?>">
            </div>

            <div class="form-group">
            <input class="form-control" type="hidden" name="idCategoria" id="idCategoria" value="<?php print_r($registro[1]) ?>">
            </div>

            <div class="form-group">
            <input class="form-control" type="hidden" name="url" id="url" value="<?php print_r($registro[3])  ?>">
            </div>

            <div class="form-group">
            <label for="titulo">Nombre de la Empresa</label>
            <input class="form-control" type="text" name="titulo" id="titulo" value="<?php print_r($registro["titulo"])  ?>" readonly>
            </div>
           
            <div class="form-group">
            <label for="nombre_categoria">Categoría</label>
            <input class="form-control" type="text" name="nombre_categoria" id="nombre_categoria" value="<?php print_r($registro["nombre"])  ?>" readonly>
            </select>
            </div>
            <div class="form-group">
            <label for="image-post">Imagen de Portada </label>
            
            <input type="file" class="form-control" name="image-post" id="image-post">
            </div>

            <div class="form-group">
            <label for="municipio">Municipio</label>
            <input class="form-control" type="text" name="municipio" id="municipio" value="<?php print_r($registro["municipio"])  ?>" readonly>
           
            </div>

            <div class="form-group">
            <label for="estado">Estado</label>
            <input class="form-control" type="text" name="estado" id="estado" value="Guanajuato" readonly>
            </div>

            <div class="form-group">
            <label for="calle">Calle</label>
            <input class="form-control" type="text" name="calle" id="calle" value="<?php print_r($registro["calle"]) ?>" readonly>
            </div>

            <div class="form-group">
            <label for="colonia">Colonia</label>
            <input class="form-control" type="text" name="colonia" id="colonia" value="<?php  print_r($registro["colonia"]) ?>" readonly>
            </div>

            <div class="form-group">
            <label for="cp">Código Postal</label>
            <input class="form-control" type="text" name="cp" id="cp" value="<?php print_r($registro["cp"]) ?>" readonly>
            </div>

            <div class="form-group">
            <label for="nombre">Teléfono</label>
            <input class="form-control" type="text" name="tel" id="tel" value="<?php print_r($registro["telefono"]) ?>">
            </div>

            <div class="form-group">
            <label for="nombre">Sitio Web</label>
            <input class="form-control" type="text" name="sitio" id="sitio" value="<?php print_r($registro["sitio"]) ?>">
            </div>

            <div class="form-group">
            <label for="descripcion">Descripción</label>
           <textarea class="form-control" name="descripcion" id="descripcion" rows="5" ><?php print_r($registro["descripcion"])?></textarea>
            </div>  

            <div class="form-group">
            <label for="descripcion">Horario</label> </br>
            
            Entrada: <input class="form-control" type="time" name="entrada" id="entrada" value="<?php print_r($registro["entrada"])  ?>" min="00:00" max="24:00" step="3600">
            Cierre: <input class="form-control" type="time" name="cierre" id="cierre" value="<?php print_r($registro["cierre"]) ?>" min="00:00" max="24:00" step="3600">
            </div> 

            <div class="form-group">
            <input type="submit" class="btn btn-primary w-100" value="Guardar cambios y regresar">
            </div>  
           
            </form>
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