<?php
include_once '../../class/Solicitud.php';
include_once '../../class/Anuncio.php';
require_once '../../class/Categoria.php';
$categoria = Categoria::recuperarTodos();
$actualizar_solicitud = new Solicitud();
$anuncio= new Anuncio();

  $idSolicitud = (isset($_REQUEST['idSolicitud'])) ? $_REQUEST['idSolicitud'] : null;
  
 
    $solicitud = solicitud::buscarPorId($idSolicitud); 
    //var_dump($solicitud);  
    
    if($_SERVER['REQUEST_METHOD'] == 'POST'){

      $idSolicitud = (isset($_POST['idSolicitud'])) ? $_POST['idSolicitud'] : null;
      $estatus_solicitud= (isset($_POST['estatus_solicitud'])) ? $_POST['estatus_solicitud'] : null;
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


      $anuncio->setIdCategoria($idCategoria);
      $anuncio->setTitulo($titulo);
      $anuncio->setUrlImagen($url);
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
      $anuncio->setIdSolicitud($idSolicitud);
      $anuncio->guardar();
    
      //Actualizar solicitud
      $actualizar_solicitud->setIdSolicitud($idSolicitud);
      $actualizar_solicitud->setEstatusSolicitud('Publicada');
      $actualizar_solicitud->setObservaciones(NULL);
      $actualizar_solicitud->actualizarEstadoSolicitud();


       
       header('Location: index.php?message=success&negocio='.$titulo);
        
  
    }
      
    include_once '../../assets/template/header.php';
?>


<!-- Main content -->
    <div class="content" id="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col">
          <a href="index.php" class="btn btn-info">Regresar</a><br>
          
          <div  style="width:80%; margin-left:10%; background-color: white; padding:20px; border-radius:10px;">

          <p class="alert alert-primary">El anuncio del usuario está a punto de ser publicado, seleccione la categoría que mejor se describa al negocio, en caso de no existir puede <a href="../posts_categories/index.php" target="_blank"> crear una categoría nueva </a> y asignela.</p>

          <h4 class="text-center display-4">Publicar Anuncio de <?php echo $solicitud->getNombreNegocio(); ?> </h4> <br>
      
          
            <form action="publicar.php" method="post">

            <img src="../posts/<?php echo $solicitud->getUrlImagen()?>" class="d-block mx-auto img-fluid w-70 img-anuncio">

            <div class="form-group">
            <input class="form-control" type="hidden" name="idSolicitud" id="idSolicitud" value="<?php echo $solicitud->getIdSolicitud(); ?>">
            </div>

            <div class="form-group">
            <input class="form-control" type="hidden" name="url" id="url" value="<?php echo $solicitud->getUrlImagen(); ?>">
            </div>
           
            <div class="form-group">
            <label for="idCategoria">Categoría</label>
            <select class="form-control" name="idCategoria" id="idCategoria">
                <option value="">Selecciona una opción</option>
                <?php foreach ($categoria as $item): ?>
                <option value="<?php echo $item[0]; ?>" > <?php echo $item[1];?> </option>
            <?php
              endforeach;
            ?>
            </select>
            </div>
            
            <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
   Mostrar todo
  </a>

  <div class="collapse" id="collapseExample">
            <div class="form-group">
            <label for="titulo">Nombre de la Empresa</label>
            <input class="form-control" type="text" name="titulo" id="titulo" value="<?php echo $solicitud->getNombreNegocio(); ?>">
            </div>
    
  
            <div class="form-group">
            <label for="municipio">Municipio</label>
            <select class="form-control" name="municipio" id="municipio">
                <option value="">Selecciona una opción</option>
                <option value="Acámbaro" <?php if($solicitud->getMunicipio()=='Acámbaro'){ echo 'Selected';}?>>Acámbaro</option>
                <option value="Taranda" <?php if($solicitud->getMunicipio()=='Taranda'){ echo 'Selected';}?>>Taranda</option>
                <option value="Jerécuaro" <?php if($solicitud->getMunicipio()=='Jerecuaro'){ echo 'Selected';}?>>Jerécuaro</option>
                <option value="Coroneo" <?php if($solicitud->getMunicipio()=='Coroneo'){ echo 'Selected';}?>>Coroneo</option>
            </select>
            </div>

            <div class="form-group">
            <label for="estado">Estado</label>
            <input class="form-control" type="text" name="estado" id="estado" value="Guanajuato" readonly>
            </div>

            <div class="form-group">
            <label for="calle">Calle</label>
            <input class="form-control" type="text" name="calle" id="calle" value="<?php echo $solicitud->getCalle(); ?>">
            </div>

            <div class="form-group">
            <label for="colonia">Colonia</label>
            <input class="form-control" type="text" name="colonia" id="colonia" value="<?php echo $solicitud->getColonia(); ?>">
            </div>

            <div class="form-group">
            <label for="cp">Código Postal</label>
            <input class="form-control" type="text" name="cp" id="cp" value="<?php echo $solicitud->getCP(); ?>">
            </div>

            <div class="form-group">
            <label for="nombre">Teléfono</label>
            <input class="form-control" type="text" name="tel" id="tel" value="<?php echo $solicitud->getTel(); ?>">
            </div>

            <div class="form-group">
            <label for="nombre">Sitio Web</label>
            <input class="form-control" type="text" name="sitio" id="sitio" value="<?php echo $anuncio->getSitio()?>">
            </div>

            <div class="form-group">
            <label for="descripcion">Descripción</label>
           <textarea class="form-control" name="descripcion" id="descripcion" rows="5" ><?php echo $solicitud->getDescripcion(); ?></textarea>
            </div>  

            <div class="form-group">
            <label for="descripcion">Horario</label> </br>
            
            Entrada: <input class="form-control" type="time" name="entrada" id="entrada" value="<?php if($anuncio->getEntrada()){ echo $anuncio->getEntrada();}else{echo "00:00";} ?>" min="00:00" max="24:00" step="3600">
            Cierre: <input class="form-control" type="time" name="cierre" id="cierre" value="<?php if($anuncio->getCierre()){ echo $anuncio->getCierre();}else{echo "00:00";} ?>" min="00:00" max="24:00" step="3600">
            </div> 
            </div>
            <br>
            <br>
            <div class="form-group">
            <input type="submit" class="btn btn-success w-100" value="Guardar cambios y publicar">
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