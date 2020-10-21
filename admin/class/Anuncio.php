<?php

require_once 'Conexion.php';

class Anuncio {

    private $idAnuncio;
    private $idCategoria;
    private $titulo;
    private $url_imagen;
    private $municipio;
    private $estado;
    private $calle;
    private $colonia;
    private $cp;
    private $telefono;
    private $sitio;
    private $descripcion;
    private $entrada;
    private $cierre;
    private $idSolicitud;
    

    const TABLA = 'anuncios';
    
  
    
    public function __construct( $titulo=null, $url_imagen=null, $municipio=null, $estado=null, $calle=null, $colonia=null, $cp=null, $telefono=null, $sitio=null, $descripcion=null, $entrada=null, $cierre = null, $idAnuncio=null, $idCategoria=null, $idSolicitud=null) {
       
        
        $this->titulo = $titulo;
        $this->url_imagen = $url_imagen;
        $this->municipio = $municipio;
        $this->estado = $estado;
        $this->calle = $calle;
        $this->colonia = $colonia;
        $this->cp = $cp;
        $this->telefono = $telefono;
        $this->sitio = $sitio;
        $this->descripcion = $descripcion;
        $this->entrada = $entrada;
        $this->cierre = $cierre;
        $this->idAnuncio = $idAnuncio;
        $this->idCategoria = $idCategoria;
        $this->idSolicitud = $idSolicitud;

    }
    
    public function getIdAnuncio() {
        return $this->idAnuncio;
    }

    public function getIdCategoria() {
        return $this->idCategoria;
    }

    

    public function getTitulo() {
        return $this->titulo;
    }

    public function getUrlImagen() {
        return $this->url_imagen;
    }

    public function getMunicipio() {
        return $this->municipio;
    }

    public function getEstado() {
        return $this->estado;
    }

    public function getCalle() {
        return $this->calle;
    }

    public function getColonia() {
        return $this->colonia;
    }

    public function getCp() {
        return $this->cp;
    }

    public function getTelefono() {
        return $this->telefono;
    }

    public function getSitio() {
        return $this->sitio;
    }

    public function getDescripcion() {
        return $this->descripcion;
    }

    public function getEntrada() {
        return $this->entrada;
    }

    public function getCierre() {
        return $this->cierre;
    }

    public function getIdSolicitud() {
        return $this->idSolicitud;
    }


    public function setIdAnuncio($idAnuncio) {
        $this->idAnuncio = $idAnuncio;
    }

    public function setIdCategoria($idCategoria) {
        $this->idCategoria = $idCategoria;
    }

  

    public function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    public function setUrlImagen($url_imagen) {
        $this->url_imagen = $url_imagen;
    }

    public function setMunicipio($municipio) {
        $this->municipio = $municipio;
    }

    public function setEstado($estado) {
        $this->estado = $estado;
    }

    public function setCalle($calle) {
        $this->calle = $calle;
    }

    public function setColonia($colonia) {
        $this->colonia = $colonia;
    }

    public function setCp($cp) {
        $this->cp = $cp;
    }

    public function setTelefono($telefono) {
        $this->telefono = $telefono;
    }

    public function setSitio($sitio) {
        $this->sitio = $sitio;
    }

    public function setDescripcion($descripcion) {
        $this->descripcion = $descripcion;
    }

    public function setEntrada($entrada) {
        $this->entrada = $entrada;
    }

    public function setCierre($cierre) {
        $this->cierre = $cierre;
    }
    public function setIdSolicitud($idSolicitud) {
        $this->idSolicitud = $idSolicitud;
    }

  
    

    public function guardar() {
        $conexion = new Conexion();
        if($this->idAnuncio)/*UPDATE*/{
            $consulta = $conexion->prepare('UPDATE ' . self::TABLA . ' SET idCategoria = :idCategoria, titulo = :titulo, url_imagen = :url_imagen, municipio=:municipio, estado = :estado, calle = :calle, colonia = :colonia, cp = :cp, telefono = :telefono, sitio = :sitio, descripcion = :descripcion, entrada = :entrada, cierre = :cierre WHERE idAnuncio = :idAnuncio');
            
            $consulta->bindParam(':idAnuncio', $this->idAnuncio);
            $consulta->bindParam(':idCategoria', $this->idCategoria);           
            $consulta->bindParam(':titulo', $this->titulo);
            $consulta->bindParam(':url_imagen', $this->url_imagen);
            $consulta->bindParam(':municipio', $this->municipio);        
            $consulta->bindParam(':estado', $this->estado);            
            $consulta->bindParam(':calle', $this->calle);        
            $consulta->bindParam(':colonia', $this->colonia);        
            $consulta->bindParam(':cp', $this->cp);      
            $consulta->bindParam(':telefono', $this->telefono);            
            $consulta->bindParam(':sitio', $this->sitio);          
            $consulta->bindParam(':descripcion', $this->descripcion);
            $consulta->bindParam(':entrada', $this->entrada);
            $consulta->bindParam(':cierre', $this->cierre);
            $consulta->execute();
        }else /*Insert*/{
            $consulta = $conexion->prepare('INSERT INTO ' . self::TABLA . ' (idCategoria, titulo, url_imagen, municipio, estado, calle, colonia, cp, telefono, sitio, descripcion, entrada, cierre, idSolicitud) VALUES (:idCategoria, :titulo, :url_imagen, :municipio, :estado, :calle, :colonia, :cp, :telefono, :sitio, :descripcion, :entrada, :cierre, :idSolicitud)');


            $consulta->bindParam(':idCategoria', $this->idCategoria);           
            $consulta->bindParam(':titulo', $this->titulo);
            $consulta->bindParam(':url_imagen', $this->url_imagen);            
            $consulta->bindParam(':municipio', $this->municipio);        
            $consulta->bindParam(':estado', $this->estado);            
            $consulta->bindParam(':calle', $this->calle);        
            $consulta->bindParam(':colonia', $this->colonia);        
            $consulta->bindParam(':cp', $this->cp);      
            $consulta->bindParam(':telefono', $this->telefono);            
            $consulta->bindParam(':sitio', $this->sitio);          
            $consulta->bindParam(':descripcion', $this->descripcion);
            $consulta->bindParam(':entrada', $this->entrada);
            $consulta->bindParam(':cierre', $this->cierre);
            $consulta->bindParam(':idSolicitud', $this->idSolicitud);
            if($consulta->execute()){
                $this->id = $conexion->lastInsertId();
                return true;
            }else{       
                return false;
            }
        }
           
            $conexion = null;
    }


    
    public function eliminar(){
        
        $conexion = new Conexion();
        $consulta = $conexion->prepare('DELETE FROM ' . self::TABLA . ' WHERE idAnuncio = :idAnuncio');
        $consulta->bindParam(':idAnuncio', $this->idAnuncio);
      
        
        $consulta->execute();
        $conexion = null;
    }

    public static function buscarPorId($idAnuncio) {

        
        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT * FROM ' . self::TABLA . ' WHERE idAnuncio = :idAnuncio');
        $consulta->bindParam(':idAnuncio', $idAnuncio);
        $consulta->execute();
        $registro = $consulta->fetch();
        //print_r($registro);
        $conexion = null;
        if ($registro) {
           
            return new self($registro['titulo'], $registro['url_imagen'], $registro['municipio'], $registro['estado'], $registro['calle'], $registro['colonia'], $registro['cp'], $registro['telefono'], $registro['sitio'], $registro['descripcion'], $registro['entrada'], $registro['cierre'], $idAnuncio, $registro['idCategoria'],$registro['idSolicitud']);
            
        } else {
            return false;
            
        }
    }

 

    public static function recuperarTodos() {
        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT * FROM anuncios INNER JOIN categorias ON categorias.idCategoria = anuncios.idCategoria');
        $consulta->execute();
        $registros = $consulta->fetchAll();
  
        $conexion = null;
        return $registros;
    }

    public static function busqueda($search) {
        $conexion = new Conexion();
        $consulta = $conexion->prepare("SELECT * FROM anuncios INNER JOIN categorias ON categorias.idCategoria = anuncios.idCategoria WHERE ( titulo LIKE '%$search%' OR municipio LIKE '%$search%' OR anuncios.descripcion LIKE '%$search%' OR categorias.nombre LIKE '%$search%' )");
        $consulta->execute();
        $registros = $consulta->fetchAll();
  
        $conexion = null;
        return $registros;
    }

    public static function getRandom(){
        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT * FROM anuncios INNER JOIN categorias ON categorias.idCategoria = anuncios.idCategoria ORDER BY RAND() LIMIT 3');
        $consulta->execute();
        $registros = $consulta->fetchAll();
  
        $conexion = null;
        return $registros;
       
    }

    
    public function recuperarPorCategoria() {
        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT * FROM ' . self::TABLA 
         . ' WHERE idCategoria = :idCategoria');
        $consulta->bindParam(':idCategoria', $this->idCategoria); 
        $consulta->execute();
        $registros = $consulta->fetchAll();
        $conexion = null;
        return $registros;
    }    


    public function eliminarPorIdSolicitud($idSolicitud){
        
        $conexion = new Conexion();
        $consulta = $conexion->prepare('DELETE FROM ' . self::TABLA . ' WHERE idSolicitud = :idSolicitud');
        $consulta->bindParam(':idSolicitud', $idSolicitud);
        $consulta->execute();
        $conexion = null;
        
    }

    public static function buscarPorIdSolictud($idSolicitud){
        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT * FROM anuncios INNER JOIN categorias ON categorias.idCategoria = anuncios.idCategoria WHERE idSolicitud = :idSolicitud');
        $consulta->bindParam(':idSolicitud', $idSolicitud);
        $consulta->execute();
        $registros = $consulta->fetchAll();
  
        $conexion = null;
        return $registros;
       
    }

    public static function buscarPorIdSolictud2($idSolicitud){
        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT * FROM anuncios INNER JOIN categorias ON categorias.idCategoria = anuncios.idCategoria WHERE idSolicitud = :idSolicitud');
        $consulta->bindParam(':idSolicitud', $idSolicitud);
        $consulta->execute();
        $registros = $consulta->fetch();
  
        $conexion = null;
        return $registros;
       
    }

  

}
