<?php

include_once '../../class/Anuncio.php';
require_once '../../class/Categoria.php';
$categoria = Categoria::recuperarTodos();





$idAnuncio = (isset($_REQUEST['idAnuncio'])) ? $_REQUEST['idAnuncio'] : null;

  if($idAnuncio){        
      $anuncio = Anuncio::buscarPorId($idAnuncio);  
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
  
          <table class="table table-bordered">
                <thead class="thead-dark">
                    <tr class="table-info">
                        <td colspan="2" ><h3 class="text-center font-weight-bold font-italic"> <?php echo $anuncio->getTitulo(); ?> </h3></td>
                    </tr>


                    <tr>
                    <th  scope="col">Categoría</th>
                    <td class="text-center ">
                    <?php foreach ($categoria as $item): ?>
                        <?php if($anuncio->getIdCategoria()==$item[0]){ echo $item['1'];}?>
                   <?php
                        endforeach;
                    ?>
                    
                    </td>
                    </tr>

                    <tr>
                    <th  scope="col">Nombre</th>
                    <td class="text-center"><?php echo $anuncio->getTitulo(); ?></td>
                    </tr>

                    <tr>
                    <th  scope="col">Portada</th> 
                    <td class="text-center"><img src="<?= $anuncio->getUrlImagen(); ?>" style="width:200px" /></td>               
                    </tr>

                    <tr>
                    <th  scope="col">Municipio</th> 
                    <td class=" text-center"><?php echo $anuncio->getMunicipio(); ?></td>               
                    </tr>

                    <tr>
                    <th  scope="col">Estado</th> 
                    <td class="text-center"><?php echo $anuncio->getEstado(); ?></td>               
                    </tr>

                    <tr>
                    <th  scope="col">Calle</th> 
                    <td class="text-center"><?php echo $anuncio->getCalle(); ?></td>               
                    </tr>

                    <tr>
                    <th scope="col">Colonia</th>
                    <td class=" text-center"><?php echo $anuncio->getColonia(); ?></td>                
                    </tr>

                    <tr>
                    <th scope="col">Código Postal</th> 
                    <td class="text-center"> <?php echo $anuncio->getCp(); ?></td>               
                    </tr>

                    <tr>
                    <th  scope="col">Teléfono</th>  
                    <td class=" text-center"><?php echo $anuncio->getTelefono(); ?></td>              
                    </tr>

                    <tr>
                    <th  scope="col">Sitio Web</th> 
                    <td class="text-center"><?php echo $anuncio->getSitio(); ?></td>               
                    </tr>

                    <tr>
                    <th  scope="col">Descripción</th> 
                    <td class=" text-center"><?php echo $anuncio->getDescripcion(); ?></td>               
                    </tr>

                    <tr>
                    <th scope="col">Horario</th> 
                    <td class=" text-center"> <?php echo $anuncio->getEntrada() . " - ". $anuncio->getCierre(); ?></td>               
                    </tr>

          
                </thead>

                <tbody>
         
                </tbody>
        </table>
  
      
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