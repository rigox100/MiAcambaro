<?php

include_once '../../class/Anuncio.php';
require_once '../../class/Categoria.php';
require_once '../../class/Solicitud.php';
$categoria = Categoria::recuperarTodos();

  $idAnuncio = (isset($_REQUEST['idAnuncio'])) ? $_REQUEST['idAnuncio'] : null;
  $idSolicitud = (isset($_REQUEST['idSolicitud'])) ? $_REQUEST['idSolicitud'] : null;
  
    
    if($idAnuncio){        
        $anuncio = Anuncio::buscarPorId($idAnuncio);   
        $solicitud = Solicitud::buscarPorId($idSolicitud);  
    }else{
        $anuncio = new Anuncio(); 
        $solicitud = new Solicitud();  
    }

   
 
    if($_SERVER['REQUEST_METHOD'] == 'POST'){

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

     
       
      if($idCategoria && $titulo && $municipio && $estado && $calle && $colonia && $cp && $tel  && $descripcion && $entrada && $cierre) {
            //Procesamiento Anuncio
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


              if($idSolicitud != NULL){
               
              //Procesamiento Solicitud
              $solicitud->setNombreNegocio($titulo);
              $solicitud->setTel($tel);
              $solicitud->setCalle($calle);
              $solicitud->setColonia($colonia);
              $solicitud->setCP($cp);
              $solicitud->setMunicipio($municipio);
              $solicitud->setDescripcion($descripcion);
              $solicitud->setEstatusSolicitud('Publicada');
              $solicitud->setObservaciones(NULL);
              
              }

              

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
                    if($idSolicitud != NULL){
                    $solicitud->setUrlImagen($rutaDestino);  
                    }
            
              }else{
                    echo '<script>
                          alert("Solo se admiten archivos con extensiones jpeg, jpg, png");
                          
                          window.location.href="save.php";
                          </script>';
              } 
            }else{
              $anuncio->setUrlImagen($url);  
              if($idSolicitud != NULL){
              $solicitud->setUrlImagen($url);
              }  
            } 
                $anuncio->guardar();
                if($idSolicitud != NULL){
                $solicitud->actualizarSolicitud();
                }
              

               header('Location: index.php');
              


      }
        
  
    }
      
    include_once '../../assets/template/header.php';
?>


<!-- Main content -->
    <div class="content" id="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col">
          <a href="index.php" class="btn btn-info">Regresar</a><br>
          
          <?php 
          if (isset($_REQUEST['idAnuncio'])){

            $title = 'Editar';
          }else{
            $title = 'Registrar nuevo';
          }
          ?>


          <div  style="width:80%; margin-left:10%; background-color: white; padding:20px; border-radius:10px;">

          <h4 class="text-center"><?php echo $title ?> anuncio</h4> <br>
      

            <form action="save.php" method="post" enctype="multipart/form-data">

            <div class="form-group">
            <input class="form-control" type="hidden" name="idAnuncio" id="idAnuncio" value="<?php echo $anuncio->getIdAnuncio(); ?>">
            </div>

            <div class="form-group">
            <input class="form-control" type="hidden" name="url" id="url" value="<?php echo $anuncio->getUrlImagen(); ?>">
            </div>

            <div class="form-group">
            <input class="form-control" type="hidden" name="idSolicitud" id="idSolicitud" value="<?php echo $anuncio->getIdSolicitud(); ?>">
            </div>
           
            <div class="form-group">
            <label for="idCategoria">Categoría</label>
            <select class="form-control" name="idCategoria" id="idCategoria">
                <option value="">Selecciona una opción</option>
                <?php foreach ($categoria as $item): ?>
                <option value="<?php echo $item[0]; ?>"  <?php if($anuncio->getIdCategoria()==$item[0]){ echo 'Selected';}?>> <?php echo $item[1];?> </option>
            <?php
              endforeach;
            ?>
            </select>
            </div>
            


            <div class="form-group">
            <label for="titulo">Nombre de la Empresa</label>
            <input class="form-control" type="text" name="titulo" id="titulo" value="<?php echo $anuncio->getTitulo(); ?>">
            </div>

            <div class="form-group">
            <label for="image-post">Imagen </label>
            <?php    if(isset($_REQUEST['idAnuncio'])): ?>
              </br>
            <img src="<?= $anuncio->getUrlImagen(); ?>" style="width:100px" />
            </br></br>
            <?php endif; ?>
            <input type="file" class="form-control-file" name="image-post" id="image-post">
            </div>

            <div class="form-group">
            <label for="municipio">Municipio</label>
            <select class="form-control" name="municipio" id="municipio">
                <option value="">Selecciona una opción</option>
                <option value="Acámbaro" <?php if($anuncio->getMunicipio()=='Acámbaro'){ echo 'Selected';}?>>Acámbaro</option>
                <option value="Taranda" <?php if($anuncio->getMunicipio()=='Taranda'){ echo 'Selected';}?>>Taranda</option>
                <option value="Jerécuaro" <?php if($anuncio->getMunicipio()=='Jerecuaro'){ echo 'Selected';}?>>Jerécuaro</option>
                <option value="Coroneo" <?php if($anuncio->getMunicipio()=='Coroneo'){ echo 'Selected';}?>>Coroneo</option>
                <option value="Salvatierra" <?php if($anuncio->getMunicipio()=='Salvatierra'){ echo 'Selected';}?>>Salvatierra</option>
                <option value="Tarimoro" <?php if($anuncio->getMunicipio()=='Tarimoro'){ echo 'Selected';}?>>Tarimoro</option>
            </select>
            </div>

            <div class="form-group">
            <label for="estado">Estado</label>
            <input class="form-control" type="text" name="estado" id="estado" value="Guanajuato" readonly>
            </div>

            <div class="form-group">
            <label for="calle">Calle</label>
            <input class="form-control" type="text" name="calle" id="calle" value="<?php echo $anuncio->getCalle(); ?>">
            </div>

            <div class="form-group">
            <label for="colonia">Colonia</label>
            <input class="form-control" type="text" name="colonia" id="colonia" value="<?php echo $anuncio->getColonia(); ?>">
            </div>

            <div class="form-group">
            <label for="cp">Código Postal</label>
            <input class="form-control" type="text" name="cp" id="cp" value="<?php echo $anuncio->getCp(); ?>">
            </div>

            <div class="form-group">
            <label for="nombre">Teléfono</label>
            <input class="form-control" type="text" name="tel" id="tel" value="<?php echo $anuncio->getTelefono(); ?>">
            </div>

            <div class="form-group">
            <label for="nombre">Sitio Web</label>
            <input class="form-control" type="text" name="sitio" id="sitio" value="<?php echo $anuncio->getSitio(); ?>">
            </div>

            <div class="form-group">
            <label for="descripcion">Descripción</label>
           <textarea class="form-control" name="descripcion" id="descripcion" rows="5" ><?php echo $anuncio->getDescripcion(); ?></textarea>
            </div>  

            <div class="form-group">
            <label for="descripcion">Horario</label> </br>
            
            Entrada: <input class="form-control" type="time" name="entrada" id="entrada" value="<?php if($anuncio->getEntrada()){ echo $anuncio->getEntrada();}else{echo "00:00";} ?>" min="00:00" max="24:00" step="3600">
            Cierre: <input class="form-control" type="time" name="cierre" id="cierre" value="<?php if($anuncio->getCierre()){ echo $anuncio->getCierre();}else{echo "00:00";} ?>" min="00:00" max="24:00" step="3600">
            </div> 

            <div class="form-group">
            <input type="submit" class="btn btn-primary" value="Guardar">
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
    
    include_once '../../assets/template/footer.php';
?>