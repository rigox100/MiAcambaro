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
      }

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
              $facebook = (isset($_POST['facebook'])) ? $_POST['facebook'] : null;
              $instagram = (isset($_POST['instagram'])) ? $_POST['instagram'] : null;
              $youtube = (isset($_POST['youtube'])) ? $_POST['youtube'] : null;
              $sitio = (isset($_POST['sitio'])) ? $_POST['sitio'] : null;
              $google_maps = (isset($_POST['google_maps'])) ? $_POST['google_maps'] : null;
              $descripcion = (isset($_POST['descripcion'])) ? $_POST['descripcion'] : null;
              $primer_dia_sem = (isset($_POST['primer_dia_sem'])) ? $_POST['primer_dia_sem'] : null;
              $ultimo_dia_sem = (isset($_POST['ultimo_dia_sem'])) ? $_POST['ultimo_dia_sem'] : null;
              $entrada = (isset($_POST['entrada'])) ? $_POST['entrada'] : null;
              $cierre = (isset($_POST['cierre'])) ? $_POST['cierre'] : null;
              $estatus_anuncio = (isset($_POST['estatus_anuncio'])) ? $_POST['estatus_anuncio'] : null;
              $destacado = (isset($_POST['destacado'])) ? $_POST['destacado'] : null;
              $keywords = (isset($_POST['keywords'])) ? $_POST['keywords'] : null;
              $url = (isset($_REQUEST['url'])) ? $_REQUEST['url'] : null;
              $fecha_publicacion = (isset($_REQUEST['fecha_publicacion'])) ? $_REQUEST['fecha_publicacion'] : null;

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
              $anuncio->setFacebook($facebook);
              $anuncio->setInstagram($instagram);
              $anuncio->setYoutube($youtube);
              $anuncio->setSitio($sitio);
              $anuncio->setGoogleMaps($google_maps);
              $anuncio->setDescripcion($descripcion);
              $anuncio->setPrimerDiaSem($primer_dia_sem);
              $anuncio->setUltimoDiaSem($ultimo_dia_sem);
              $anuncio->setEntrada($entrada);
              $anuncio->setCierre($cierre);
              $anuncio->setEstatusAnuncio($estatus_anuncio);
              $anuncio->setKeywords($keywords);
              $anuncio->setFechaPublicacion($fecha_publicacion);
              $anuncio->setDestacado($destacado);
      
                  if ($_FILES['image-post']['name']!=null) {
      
                    if($_FILES['image-post']['type'] ==  'image/jpg' ||  $_FILES['image-post']['type']  == 'image/jpeg' 
                      ||  $_FILES['image-post']['type']  == 'image/png'){ 
                        
                          $rutaServidor = 'uploads/images';
                          $rutaTemporal = $_FILES['image-post']['tmp_name'];
                          $nombreImagen = $_FILES['image-post']['name'];
          
                          $rutaDestino = $rutaServidor.'/'.$nombreImagen;
                          move_uploaded_file($rutaTemporal, '../admin/modules/posts/'.$rutaDestino);
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
                     header('Location: mi_negocio.php?message=success');
                    
                
      
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

            <img src="../admin/modules/posts/<?php echo $registro["url_imagen"]?>" class="d-block mx-auto img-fluid w-50 img-anuncio" />
            </br></br>

            <div class="form-group">
            <input class="form-control" type="hidden" name="estatus_cambios" id="estatus_cambios" value="1">
            </div>
            
            <div class="form-group">
            <input class="form-control" type="hidden" name="idAnuncio" id="idAnuncio" value="<?php print_r($registro[0]) ?>">
            </div>

            <div class="form-group">
            <input class="form-control" type="hidden" name="idSolicitud" id="idSolicitud" value="<?php echo $registro['idSolicitud'] ?>">
            </div>
           

            <div class="form-group">
            <input class="form-control" type="hidden" name="estatus_anuncio" id="estatus_anuncio" value="Publicado">
            </div>
           
            <div class="form-group">
            <input class="form-control" type="hidden" name="destacado" id="destacado" value="No">
            </div>

            <div class="form-group">
            <input class="form-control" type="hidden" name="fecha_publicacion" id="fecha_publicacion" value="<?php echo $registro['fecha_publicacion'] ?>">
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
            <label for="facebook">Facebook <small>(Opcional)</small></label>
            <input class="form-control" type="text" name="facebook" id="facebook" placeholder="Ingresa enlace de la cuenta de facebook" value="<?php print_r($registro['facebook']) ?>">
            </div>

            <div class="form-group">
            <label for="instagram">Instagram <small>(Opcional)</small></label>
            <input class="form-control" type="text" name="instagram" id="instagram" placeholder="Ingresa enlace de la cuenta de Instagram" value="<?php print_r($registro['instagram']) ?>">
            </div>

            <div class="form-group">
            <label for="youtube">Youtube <small>(Opcional)</small></label>
            <input class="form-control" type="text" name="youtube" id="youtube" placeholder="Ingresa enlace de la cuenta de Instagram" value="<?php print_r($registro['youtube']) ?>">
            </div>
            
            
            
            <div class="form-group">
            <label for="nombre">Sitio Web</label>
            <input class="form-control" type="text" name="sitio" id="sitio" value="<?php print_r($registro["sitio"]) ?>">
            </div>

            <div class="form-group">
            <label for="google_maps">Google Maps <small>(Opcional)</small></label>
            <input class="form-control" type="text" name="google_maps" id="google_maps" placeholder="Ingresa enlace del negocio en Google Maps" value="<?php print_r($registro['google_maps']) ?>">
            </div>



            <div class="form-group">
            <label for="descripcion">Descripción</label>
           <textarea class="form-control" name="descripcion" id="descripcion" rows="5" ><?php print_r($registro["descripcion"])?></textarea>
            </div>  

            <div class="form-group">
            <label>Horario</label> <br><br>

            <label for="primer_dia_sem">De:</label>
               
               <select name="primer_dia_sem" id="primer_dia_sem" class="form-control" style="width: 60%;">
               <option value="">Selecciona una opción</option>  
               <option value="Lunes" <?php if ($registro["primer_dia_sem"]=='Lunes'){echo 'selected';}?> >Lunes</option>
               <option value="Martes" <?php if ($registro["primer_dia_sem"]=='Martes'){echo 'selected';}?> >Martes</option>
               <option value="Miércoles" <?php if ($registro["primer_dia_sem"]=='Miércoles'){echo 'selected';}?>>Miércoles</option>
               <option value="Jueves" <?php if ($registro["primer_dia_sem"]=='Jueves'){echo 'selected';}?>>Jueves</option>
               <option value="Viernes" <?php if ($registro["primer_dia_sem"]=='Viernes'){echo 'selected';}?> >Viernes</option>
               <option value="Sábado"  <?php if ($registro["primer_dia_sem"]=='Sábado'){echo 'selected';}?>>Sábado</option>
               <option value="Domingo"  <?php if ($registro["primer_dia_sem"]=='Domingo'){echo 'selected';}?>>Domingo</option>
             </select>


            <label for="ultimo_dia_sem">a:</label>
            <select name="ultimo_dia_sem" id="ultimo_dia_sem" class="form-control" style="width: 60%;">              
            <option value="">Selecciona una opción</option>  
            <option value="Lunes" <?php if ($registro["ultimo_dia_sem"]=='Lunes'){echo 'selected';}?> >Lunes</option>
               <option value="Martes" <?php if ($registro["ultimo_dia_sem"]=='Martes'){echo 'selected';}?> >Martes</option>
               <option value="Miércoles" <?php if ($registro["ultimo_dia_sem"]=='Miércoles'){echo 'selected';}?>>Miércoles</option>
               <option value="Jueves" <?php if ($registro["ultimo_dia_sem"]=='Jueves'){echo 'selected';}?>>Jueves</option>
               <option value="Viernes" <?php if ($registro["ultimo_dia_sem"]=='Viernes'){echo 'selected';}?> >Viernes</option>
               <option value="Sábado"  <?php if ($registro["ultimo_dia_sem"]=='Sábado'){echo 'selected';}?>>Sábado</option>
               <option value="Domingo"  <?php if ($registro["ultimo_dia_sem"]=='Domingo'){echo 'selected';}?>>Domingo</option>
            </select> 
            
            <br>
            <label>Abierto desde: </label><input class="form-control" type="time" name="entrada" id="entrada" value="<?php print_r($registro['entrada']) ?>" min="00:00" max="24:00" step="3600" style="width: 60%;">
            <label>Hasta: </label><input class="form-control" type="time" name="cierre" id="cierre" value="<?php print_r($registro['cierre']) ?>" min="00:00" max="24:00" step="3600" style="width: 60%;">
            </div> 


            <div class="form-group">

           <input class="form-control" type="hidden" name="keywords" id="keywords" value="<?php print_r($registro['keywords']) ?>"> 
          
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