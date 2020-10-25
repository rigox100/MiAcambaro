<?php

require_once 'Conexion.php';

class Usuario {

    private $idUsuario;
    private $nombre;
    private $apellido;
    private $email;
    private $password;
    private $estatus;
    private $token;
    private $idRol;

    const TABLA = 'usuarios';

    public function __construct($nombre=null, $apellido=null, $email=null, $password=null, $estatus=null, $idRol=null, $idUsuario=null ) {

        $this->nombre = $nombre;
        $this->email = $email;
        $this->apellido = $apellido;
        $this->password = $password;
        $this->estatus = $estatus;
        $this->idRol = $idRol;
        $this->idUsuario = $idUsuario;

    }

    public function getIdUsuario() {
        return $this->idUsuario;
    }

    public function getNombre() {
        return $this->nombre;
    }

    public function getApellido() {
        return $this->apellido;
    }

    public function getEmail() {
        return $this->email;
    }

    public function getPassword() {
        return $this->password;
    }

     public function getEstatus() {
        return $this->estatus;
    }

    public function getIdRol() {
        return $this->idRol;
    }


    public function setIdUsuario($idUsuario) {
        $this->id = $idUsuario;
    }

    public function setNombre($nombre) {
        $this->nombre = $nombre;
    }

    public function setApellido($apellido) {
        $this->apellido = $apellido;
    }


    public function setEmail($email) {
        $this->email = $email;
    }

    public function setPassword($password) {
        $this->password = $password;
    }

    public function setEstatus($estatus) {
        $this->estatus = $estatus;
    }

    public function setIdRol($idRol) {
        $this->idRol = $idRol;
    }


    public function guardar() {
        $conexion = new Conexion();
        if ($this->idUsuario) /* Modifica */ {
            $consulta = $conexion->prepare('UPDATE ' . self::TABLA . ' SET nombre = :nombre, apellido = :apellido, email = :email, password=:password, estatus = :estatus, idRol = :idRol WHERE idUsuario = :idUsuario');
            $consulta->bindParam(':idUsuario', $this->idUsuario);
            $consulta->bindParam(':nombre', $this->nombre);
            $consulta->bindParam(':apellido', $this->apellido);
            $consulta->bindParam(':email', $this->email);
            $consulta->bindParam(':password', $this->password);
            $consulta->bindParam(':estatus', $this->estatus);
            $consulta->bindParam(':idRol', $this->idRol);
            $consulta->execute();
        } else /* Inserta */ {
            $consulta = $conexion->prepare('INSERT INTO ' . self::TABLA . ' (nombre, apellido, email, password, estatus, idRol) VALUES (:nombre, :apellido, :email, :password, :estatus, :idRol)');
            $consulta->bindParam(':nombre', $this->nombre);
            $consulta->bindParam(':apellido', $this->apellido);
            $consulta->bindParam(':email', $this->email);
            $consulta->bindParam(':password', $this->password);
            $consulta->bindParam(':estatus', $this->estatus);
            $consulta->bindParam(':idRol', $this->idRol);
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
        //echo $this->id;
        $conexion = new Conexion();
        $consulta = $conexion->prepare('DELETE FROM ' . self::TABLA . ' WHERE idUsuario = :idUsuario');
        $consulta->bindParam(':idUsuario', $this->idUsuario);
        $consulta->execute();
        $conexion = null;
    }

    public static function buscarPorId($idUsuario) {

        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT  nombre, apellido, email, password, estatus, idRol FROM ' . self::TABLA . ' WHERE idUsuario = :idUsuario');
        $consulta->bindParam(':idUsuario', $idUsuario);
        $consulta->execute();
        $registro = $consulta->fetch();
        //var_dump($registro);
        $conexion = null;
        if ($registro) {
            return new self($registro['nombre'], $registro['apellido'], $registro['email'], $registro['password'], $registro['estatus'], $registro['idRol'], $idUsuario);

        } else {
            return false;

        }
    }

    public static function recuperarTodos() {
        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT * FROM usuarios INNER JOIN roles ON roles.idRol = usuarios.idRol');
        $consulta->execute();
        $registros = $consulta->fetchAll();
        $conexion = null;
        return $registros;
    }


    public function logIn(){
        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT * FROM ' . self::TABLA . ' WHERE email = :email and password = :password');
        $consulta->bindParam(':email', $this->email);
        $consulta->bindParam(':password', $this->password);
        $consulta->execute();
        $registro = $consulta->fetch();
        $conexion = null;
        if ($registro) {

           $_SESSION['idUsuario'] = $registro[0];
           $_SESSION['nombre'] = $registro[1];
           $_SESSION['email'] = $registro[3];
           $_SESSION['idRol'] = $registro[6];
            return true;
        } else {
            return false;
        }
    }


    public function verificar_token(){
        $conexion = new Conexion();
        $consulta = $conexion->prepare('SELECT * FROM '.self::TABLA. ' WHERE token = :token AND estatus = Inactivo');
        $consulta->bindParam(':token', $this->email);
        if($consulta->execute()){
            return true;
        }else{
            return false;
        }
    }

}
